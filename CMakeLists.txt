cmake_minimum_required(VERSION 2.8)

project(merry-fxmas-cpp CXX)

enable_testing()

if(UNIX)
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++11 -stdlib=libc++")
endif()

set(GTEST_HOME gtest)

add_subdirectory(${GTEST_HOME})
include_directories(${GTEST_HOME}/include)

add_executable(merry_test merry_test.cpp merry.h)
target_link_libraries(merry_test gtest)

add_test(test1 TestRefactoringPuzzle)

add_executable(main main.cpp merry.h)
