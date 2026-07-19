

#include <iostream>

#include "schema.h"

int main()
{
    cfg::Tables tables;
    if (tables.load([](::luban::ByteBuf& buf, const std::string& s) { return buf.loadFromFile("../GeneratedData/bytes/" + s + ".bytes"); }))
    {
        std::cout << "== load succ == " << std::endl;
    }
    else
    {
        std::cout << "== load fail == " << std::endl;
    }
    return 0;
}


