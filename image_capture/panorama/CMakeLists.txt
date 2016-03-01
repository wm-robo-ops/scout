cmake_minimum_required(VERSION 2.8.12)

project(demo)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(pano opencv_pano.cpp)
target_link_libraries(pano ${OpenCV_LIBS})
