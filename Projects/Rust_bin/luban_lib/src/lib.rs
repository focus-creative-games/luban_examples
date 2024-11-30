use std::cell::UnsafeCell;
use std::sync::Mutex;

pub struct ByteBuf {
    pub reader_index: usize,
    pub writer_index: usize,
    pub bytes: Vec<u8>,
}

impl ByteBuf {
    const MIN_CAPACITY: usize = 16;

    pub fn new(bytes: Vec<u8>) -> Self {
        ByteBuf {
            reader_index: 0,
            writer_index: bytes.len(),
            bytes,
        }
    }

    pub fn with_capacity(capacity: usize) -> Self {
        ByteBuf {
            reader_index: 0,
            writer_index: 0,
            bytes: Vec::with_capacity(capacity),
        }
    }

    pub fn replace(&mut self, bytes: Vec<u8>, begin_pos: usize, end_pos: usize) {
        self.bytes = bytes;
        self.reader_index = begin_pos;
        self.writer_index = end_pos;
    }

    pub fn capacity(&self) -> usize {
        self.bytes.capacity()
    }

    pub fn size(&self) -> usize {
        self.writer_index - self.reader_index
    }

    pub fn copy_data(&self) -> Vec<u8> {
        self.bytes[self.reader_index..self.writer_index].to_vec()
    }

    pub fn read_bool(&mut self) -> bool {
        self.ensure_read(1);
        let result = self.bytes[self.reader_index] != 0;
        self.reader_index += 1;
        result
    }

    pub fn read_byte(&mut self) -> u8 {
        self.ensure_read(1);
        let result = self.bytes[self.reader_index];
        self.reader_index += 1;
        result
    }

    pub fn read_short(&mut self) -> i16 {
        self.ensure_read(1);
        let h = self.bytes[self.reader_index];
        if h < 0x80 {
            self.reader_index += 1;
            return h as i16;
        }

        if h < 0xc0 {
            self.ensure_read(2);
            let x = (((h & 0x3f) as i16) << 8) | (self.bytes[self.reader_index + 1] as i16);
            self.reader_index += 2;
            return x;
        }

        if h < 0xff {
            self.ensure_read(3);
            let x = ((self.bytes[self.reader_index + 1] as i16) << 8) | (self.bytes[self.reader_index + 2] as i16);
            self.reader_index += 3;
            return x;
        }

        panic!("Invalid data")
    }

    pub fn read_uint(&mut self) -> u32 {
        self.ensure_read(1);
        let h = self.bytes[self.reader_index] as u32;
        if h < 0x80 {
            self.reader_index += 1;
            return h;
        }
        if h < 0xc0 {
            self.ensure_read(2);
            let x = ((h & 0x3f) << 8) | (self.bytes[self.reader_index + 1] as u32);
            self.reader_index += 2;
            return x;
        }
        if h < 0xe0 {
            self.ensure_read(3);
            let x = ((h & 0x1f) << 16) | ((self.bytes[self.reader_index + 1] as u32) << 8) | (self.bytes[self.reader_index + 2] as u32);
            self.reader_index += 3;
            return x;
        }
        if h < 0xf0 {
            self.ensure_read(4);
            let x = ((h & 0x0f) << 24) | ((self.bytes[self.reader_index + 1] as u32) << 16) | ((self.bytes[self.reader_index + 2] as u32) << 8) | (self.bytes[self.reader_index + 3] as u32);
            self.reader_index += 4;
            return x;
        } else {
            self.ensure_read(5);
            let x = ((self.bytes[self.reader_index + 1] as u32) << 24) | ((self.bytes[self.reader_index + 2] as u32) << 16) | ((self.bytes[self.reader_index + 3] as u32) << 8) | (self.bytes[self.reader_index + 4] as u32);
            self.reader_index += 5;
            return x;
        }
    }

    pub fn read_int(&mut self) -> i32 {
        self.read_uint() as i32
    }

    pub fn read_ulong(&mut self) -> u64 {
        self.ensure_read(1);
        let h = self.bytes[self.reader_index];
        if h < 0x80 {
            self.reader_index += 1;
            return h as u64;
        }
        if h < 0xc0 {
            self.ensure_read(2);
            let x = (((h & 0x3f) as u64) << 8) | (self.bytes[self.reader_index + 1] as u64);
            self.reader_index += 2;
            return x;
        }
        if h < 0xe0 {
            self.ensure_read(3);
            let x = (((h & 0x1f) as u64) << 16) | ((self.bytes[self.reader_index + 1] as u64) << 8) | (self.bytes[self.reader_index + 2] as u64);
            self.reader_index += 3;
            return x;
        }
        if h < 0xf0 {
            self.ensure_read(4);
            let x = (((h & 0x0f) as u64) << 24) | ((self.bytes[self.reader_index + 1] as u64) << 16) | ((self.bytes[self.reader_index + 2] as u64) << 8) | (self.bytes[self.reader_index + 3] as u64);
            self.reader_index += 4;
            return x;
        }
        if h < 0xf8 {
            self.ensure_read(5);
            let xl = ((self.bytes[self.reader_index + 1] as u64) << 24) | ((self.bytes[self.reader_index + 2] as u64) << 16) | ((self.bytes[self.reader_index + 3] as u64) << 8) | (self.bytes[self.reader_index + 4] as u64);
            let xh = (h & 0x07) as u64;
            self.reader_index += 5;
            return (xh << 32) | xl;
        }
        if h < 0xfc {
            self.ensure_read(6);
            let xl = ((self.bytes[self.reader_index + 2] as u64) << 24) | ((self.bytes[self.reader_index + 3] as u64) << 16) | ((self.bytes[self.reader_index + 4] as u64) << 8) | (self.bytes[self.reader_index + 5] as u64);
            let xh = (((h & 0x03) as u64) << 8) | (self.bytes[self.reader_index + 1] as u64);
            self.reader_index += 6;
            return (xh << 32) | xl;
        }
        if h < 0xfe {
            self.ensure_read(7);
            let xl = ((self.bytes[self.reader_index + 3] as u64) << 24) | ((self.bytes[self.reader_index + 4] as u64) << 16) | ((self.bytes[self.reader_index + 5] as u64) << 8) | (self.bytes[self.reader_index + 6] as u64);
            let xh = (((h & 0x01) as u64) << 16) | ((self.bytes[self.reader_index + 1] as u64) << 8) | (self.bytes[self.reader_index + 1] as u64);
            self.reader_index += 7;
            return (xh << 32) | xl;
        }
        if h < 0xff {
            self.ensure_read(8);
            let xl = ((self.bytes[self.reader_index + 4] as u64) << 24) | ((self.bytes[self.reader_index + 5] as u64) << 16) | ((self.bytes[self.reader_index + 6] as u64) << 8) | (self.bytes[self.reader_index + 7] as u64);
            let xh = ((self.bytes[self.reader_index + 1] as u64) << 16) | ((self.bytes[self.reader_index + 2] as u64) << 8) | (self.bytes[self.reader_index + 3] as u64);
            self.reader_index += 8;
            return (xh << 32) | xl;
        } else {
            self.ensure_read(9);
            let xl = ((self.bytes[self.reader_index + 5] as u64) << 24) | ((self.bytes[self.reader_index + 6] as u64) << 16) | ((self.bytes[self.reader_index + 7] as u64) << 8) | (self.bytes[self.reader_index + 8] as u64);
            let xh = ((self.bytes[self.reader_index + 1] as u64) << 24) | ((self.bytes[self.reader_index + 2] as u64) << 16) | ((self.bytes[self.reader_index + 3] as u64) << 8) | (self.bytes[self.reader_index + 4] as u64);
            self.reader_index += 9;
            return (xh << 32) | xl;
        }
    }

    pub fn read_long(&mut self) -> i64 {
        self.read_ulong() as i64
    }

    pub fn read_float(&mut self) -> f32 {
        self.ensure_read(4);
        let b = &self.bytes[self.reader_index] as *const u8;
        let mut x = UnsafeCell::new(0_f32);
        unsafe {
            if (b as u64) % 8 == 0 {
                *x.get() = *(b as *const f32)
            } else {
                let a1 = (*b.offset(0) as u32);
                let a2 = ((*b.offset(1) as u32) << 8);
                let a3 = ((*b.offset(2) as u32) << 16);
                let a4 = ((*b.offset(3) as u32) << 24);
                let a5 = (a1 | a2 | a3 | a4);
                *x.get() = *(Box::into_raw(Box::new(a5)) as *const f32);
            }
        }

        self.reader_index += 4;
        return x.into_inner();
    }

    pub fn read_double(&mut self) -> f64 {
        self.ensure_read(8);
        let b = &self.bytes[self.reader_index] as *const u8;
        let mut x = UnsafeCell::new(0_f64);
        unsafe {
            if (b as u64) % 8 == 0 {
                *x.get() = *(b as *const f64)
            } else {
                let low = (*b.offset(0) as u64) | ((*b.offset(1) as u64) << 8) | ((*b.offset(2) as u64) << 16) | ((*b.offset(3) as u64) << 24);
                let high = (*b.offset(4) as u64) | ((*b.offset(5) as u64) << 8) | ((*b.offset(6) as u64) << 16) | ((*b.offset(7) as u64) << 24);
                *x.get() = *(Box::into_raw(Box::new(((high) << 32) | (low))) as *const f64);
            }
        }

        self.reader_index += 8;
        return x.into_inner();
    }

    pub fn read_size(&mut self) -> usize {
        self.read_uint() as usize
    }

    pub fn read_string(&mut self) -> String {
        let n = self.read_size();
        if n > 0 {
            self.ensure_read(n);
            let s = String::from_utf8_lossy(&self.bytes[self.reader_index..self.reader_index + n]);
            self.reader_index += n;
            return s.to_string();
        }

        "".to_string()
    }
    //region internal

    fn prop_size(init_size: usize, need_size: usize) -> usize {
        let mut i = usize::max(init_size, Self::MIN_CAPACITY);
        loop {
            if i >= need_size {
                return i;
            }

            i <<= 1;
        }
    }

    #[inline]
    fn ensure_read(&self, size: usize) {
        if self.reader_index + size > self.writer_index {
            panic!("Not enough data")
        }
    }

    #[inline]
    fn can_read(&self, size: usize) -> bool {
        self.reader_index + size <= self.writer_index
    }

    //endregion
}

impl PartialEq<Self> for ByteBuf {
    fn eq(&self, other: &Self) -> bool {
        if self.size() != other.size() {
            return false;
        }

        for i in 0..self.size() {
            if self.bytes[self.reader_index + i] != other.bytes[other.reader_index + i] {
                return false;
            }
        }

        true
    }
}

impl Eq for ByteBuf {}