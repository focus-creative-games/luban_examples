

#include <iostream>

#include "bright/serialization/ByteBuf.h"

#include "gen_types.h"

struct XXX
{
    static constexpr int X = 1;
    static constexpr long Y = 2;
};

int main()
{
    cfg::Tables tables;
    if (tables.load([](ByteBuf& buf, const std::string& s) { buf.clear(); return buf.loadFromFile("config_data/" + s); }))
    {
        std::cout << "== load succ == " << std::endl;
    }
    else
    {
        std::cout << "== load fail == " << std::endl;
    }
    return 0;
}


