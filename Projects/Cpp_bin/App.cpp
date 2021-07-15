

#include <iostream>

#include "bright/serialization/ByteBuf.h"

#include "gen_types.h"

int main()
{
    cfg::Tables tables;
    if (tables.load([](ByteBuf& buf, const std::string& s) { buf.clear(); return buf.loadFromFile("config_data/" + s + ".bin"); }))
    {
        std::cout << "== load succ == " << std::endl;
    }
    else
    {
        std::cout << "== load fail == " << std::endl;
    }
    return 0;
}


