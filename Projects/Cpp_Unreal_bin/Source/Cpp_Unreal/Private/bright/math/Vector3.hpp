#pragma once


namespace bright
{
    namespace math
    {

        struct Vector3
        {
            float x;
            float y;
            float z;

            Vector3() : x(0), y(0), z(0) {}
            Vector3(float x, float y, float z) : x(x), y(y), z(z) {}
        };

    }
}