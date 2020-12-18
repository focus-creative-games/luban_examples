#pragma once

#include <cstdint>
#include <vector>
#include <unordered_set>
#include <unordered_map>
#include <string>

namespace bright
{

    typedef uint8_t byte;

    typedef std::vector<byte> Bytes;

    typedef std::string String;

#define BYTEBUF_READ_STRING(buf, str) buf.readString(str)

#define BYTEBUF_WRITE_STRING(buf, str) buf.writeString(str)

}