cmake_minimum_required(VERSION 2.8)
project(hw1anagram_embedded)
include_directories(include)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -flto -fno-omit-frame-pointer -march=native")
add_compile_options(-std=c++11) # CMake 2.8.12 or newer

add_executable(top5anagram main.cpp probabilities.h)

