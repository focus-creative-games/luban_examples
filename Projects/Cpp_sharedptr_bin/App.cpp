

#include <iostream>

#include "schema.h"

int main()
{
    cfg::Tables tables;
    if (tables.load([](::luban::ByteBuf& buf, const std::string& s) { return buf.loadFromFile("../GenerateDatas/bytes/" + s + ".bytes"); }))
    {
        std::cout << "== load succ == " << std::endl;
    }
    else
    {
        std::cout << "== load fail == " << std::endl;
    }
    return 0;
}


