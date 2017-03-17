cmake_minimum_required(VERSION 3.6)
project(lab_14)

set(CMAKE_CXX_STANDARD 11)
include_directories(include)
set(SOURCE_FILES
        include/matrix.h
        src/main.cpp
        src/matrix.cpp
        Makefile
        README.md)

add_executable(lab_14 ${SOURCE_FILES})