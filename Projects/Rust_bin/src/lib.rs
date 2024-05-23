use std::path::PathBuf;
use lazy_static::lazy_static;
use cfg::prelude::*;
use luban_lib::ByteBuf;

lazy_static!(
        pub static ref TABLES: Tables = {
            let tables = Tables::new(|name| {
                let path = PathBuf::from(format!("../GenerateDatas/bytes/{}.bytes", name));
                Ok(ByteBuf::new(std::fs::read(path).unwrap()))
            });
            tables.expect("REASON")
        };
    );