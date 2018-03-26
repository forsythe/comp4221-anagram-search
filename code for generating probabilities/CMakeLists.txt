cmake_minimum_required(VERSION 2.8)
project(probability_generator)
include_directories(include)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS_DEBUG)
add_compile_options(-std=c++11) # CMake 2.8.12 or newer

add_executable(probability_generator main.cpp Serializer.cpp Serializer.h)
