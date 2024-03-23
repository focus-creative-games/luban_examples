#pragma once

#include "ByteBuf.h"

namespace luban
{

    class CfgBean
    {
    public:
        virtual int getTypeId() const = 0;

        virtual bool deserialize(ByteBuf& buf) = 0;
    };
}