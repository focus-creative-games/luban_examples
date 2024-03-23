#pragma once

#include <cstdint>
#include <vector>
#include <unordered_set>
#include <unordered_map>
#include <string>
#include <functional>

namespace luban
{
    typedef std::uint8_t byte;
    typedef std::int16_t int16;
    typedef std::int32_t int32;
    typedef std::int64_t int64;
    typedef float float32;
    typedef double float64;

    typedef std::string String;

    typedef std::int64_t datetime;

    template<typename T>
    using Vector = std::vector<T>;

    template<typename T>
    using Array = std::vector<T>;

    template<typename T>
    using HashSet = std::unordered_set<T>;

    template<typename K, typename V>
    using HashMap = std::unordered_map<K, V>;

    template <typename T>
    using SharedPtr = std::shared_ptr<T>;

    template <typename T>
    using Function = std::function<T>;
	
	template <typename T>
	using Loader=std::function<bool(T&, const String&)>;
    
    #define LUBAN_NEW(T) new T
    #define LUBAN_FREE(ptr) delete ptr
}