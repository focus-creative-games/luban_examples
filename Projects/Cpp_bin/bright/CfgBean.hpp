#pragma once

#include "serialization/ByteBuf.h"

namespace bright
{

    class CfgBean
    {
    public:
        virtual int getTypeId() const = 0;

        virtual bool deserialize(serialization::ByteBuf& buf) = 0;
    };
}