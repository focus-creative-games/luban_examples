#pragma once

#include <cstdint>
#include <vector>
#include <unordered_set>
#include <unordered_map>
#include <string>
#include <functional>

#include "math/Vector2.hpp"
#include "math/Vector3.hpp"
#include "math/Vector4.hpp"

namespace bright
{
    typedef std::uint8_t byte;
    typedef std::int16_t int16;
    typedef std::int32_t int32;
    typedef std::int64_t int64;
    typedef float float32;
    typedef double float64;

    typedef std::string String;
    typedef std::vector<byte> Bytes;

    typedef ::bright::math::Vector2 Vector2;
    typedef ::bright::math::Vector3 Vector3;
    typedef ::bright::math::Vector4 Vector4;

    typedef std::int32_t datetime;

    template<typename T>
    using Vector = std::vector<T>;

    template<typename T>
    using HashSet = std::unordered_set<T>;

    template<typename K, typename V>
    using HashMap = std::unordered_map<K, V>;

    template <typename T>
    using SharedPtr = std::shared_ptr<T>;

    template <typename T>
    using Function = std::function<T>;
	
	template <typename T>
	using Loader=::bright::Function<bool(T&, const ::bright::String&)>;
	
	using TextTranslator = ::bright::Function<bool(const ::bright::String&, ::bright::String&)>;
}