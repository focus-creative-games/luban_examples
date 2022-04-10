#pragma once


namespace bright
{
    namespace math
    {

        struct Vector4
        {
            float x;
            float y;
            float z;
            float w;

            Vector4() : x(0), y(0), z(0), w(0) {}

            Vector4(float x, float y, float z, float w) : x(x), y(y), z(z), w(w) {}
        };

    }
}