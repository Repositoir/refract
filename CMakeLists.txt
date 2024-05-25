cmake_minimum_required(VERSION 3.22)
project(Refract)

set(CMAKE_CXX_STANDARD 14)

add_executable(Refract
        main.cpp
        parser.cpp
        parser.h
        defn.h)

configure_file(new.lang new.lang COPYONLY)
