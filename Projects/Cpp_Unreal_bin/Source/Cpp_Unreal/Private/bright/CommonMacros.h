#pragma once

#include <cstdint>
#include <vector>
#include <unordered_set>
#include <unordered_map>
#include <string>

#ifdef USE_UE_STRING
#include "CoreMinimal.h"
#endif

namespace bright
{

    typedef uint8_t byte;

    typedef std::vector<byte> Bytes;

    //#ifdef USE_UE_STRING 
    //    typedef FString String;
    //#else
    //    typedef std::string String;
    //#endif
//
//#define BYTEBUF_READ_STRING(buf, str) buf.readString(str)
//
//#define BYTEBUF_WRITE_STRING(buf, str) buf.writeString(str)


}