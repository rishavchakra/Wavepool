cmake_minimum_required(VERSION 3.15)
project(Wavepool)

set(CMAKE_CXX_STANDARD 11)
#message("Source directory: " "${CMAKE_SOURCE_DIR}")

add_executable(Wavepool src/main.cpp)


#[[         Include directories          ]]
include_directories(headers)
#Graphics libraries
include_directories(lib/GLFW/include)
include_directories(lib/glew/include)


#[[         Linking Libraries           ]]
#Graphics libraries
target_link_libraries(Wavepool ${CMAKE_SOURCE_DIR}/lib/GLFW/lib-vc2019/glfw3.lib)
target_link_libraries(Wavepool ${CMAKE_SOURCE_DIR}/lib/glew/lib/Release/Win32/glew32.lib)
