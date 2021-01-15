cmake_minimum_required(VERSION 3.15)
project(Wavepool
		VERSION 0.0.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_EXE_LINKER_FLAGS "-static")

message("Source directory: " "${CMAKE_SOURCE_DIR}")
message("Compiler: " ${CMAKE_CXX_COMPILER_ID})

set (project_source
		src/main.cpp)

#[[set (project_headers
		)]]

#[[         Adding additional non-compiled, non-library dependencies       ]]
set (additional_dependencies
#		Graphics libraries
		${CMAKE_SOURCE_DIR}/lib/GLAD/src/glad.c)
message("Extra dependencies " "${additional_dependencies}")

add_executable(Wavepool
		${project_source}
		"${additional_dependencies}")



#[[         Include directories          ]]
include_directories(include)
#Graphics libraries
include_directories(lib/GLFW/include)
include_directories(lib/GLAD/include)

#Networking libraries
include_directories(lib/asio/include)


#[[         Linking Libraries           ]]
#Graphics libraries
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(lib/GLFW)
target_link_libraries(Wavepool glfw)
