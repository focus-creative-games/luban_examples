#pragma once


namespace bright
{
    namespace math
    {

        struct Vector2
        {
            float x;
            float y;

            Vector2() : x(0), y(0) {}
            Vector2(float x, float y) : x(x), y(y) {}
        };

    }
}