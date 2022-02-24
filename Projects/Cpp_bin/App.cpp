

#include <iostream>

#include "bright/serialization/ByteBuf.h"

#include "gen_types.h"

int main()
{
    cfg::Tables tables;
    if (tables.load([](ByteBuf& buf, const std::string& s) { buf.clear(); return buf.loadFromFile("../GenerateDatas/bytes/" + s + ".bytes"); }))
    {
        std::cout << "== load succ == " << std::endl;
    }
    else
    {
        std::cout << "== load fail == " << std::endl;
    }
    return 0;
}


