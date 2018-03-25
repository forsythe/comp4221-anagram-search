cmake_minimum_required(VERSION 2.8)
project(hw1anagram_embedded)
include_directories(include)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS_DEBUG "-O3")
add_compile_options(-std=c++11) # CMake 2.8.12 or newer

add_executable(hw1anagram_embedded main.cpp probabilities.h)
