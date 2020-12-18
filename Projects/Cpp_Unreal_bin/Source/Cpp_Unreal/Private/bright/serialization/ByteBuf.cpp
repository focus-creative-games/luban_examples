#include "bright/serialization/ByteBuf.h"

namespace bright
{
    namespace serialization
    {
        const int ByteBuf::INIT_CAPACITY = 16;
        const byte ByteBuf::EMPTY_BYTES[1] = { '\0' };
    }
}