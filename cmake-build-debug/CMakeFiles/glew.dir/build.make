# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Software\Code\CLion\CLion 2019.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Software\Code\CLion\CLion 2019.3.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Code\C++\OpenGL\Wavepool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Code\C++\OpenGL\Wavepool\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\glew.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\glew.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\glew.dir\flags.make

CMakeFiles\glew.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\glew.dir\cmake_clean.cmake
.PHONY : CMakeFiles\glew.dir\clean

CMakeFiles\glew.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Code\C++\OpenGL\Wavepool D:\Code\C++\OpenGL\Wavepool D:\Code\C++\OpenGL\Wavepool\cmake-build-debug D:\Code\C++\OpenGL\Wavepool\cmake-build-debug D:\Code\C++\OpenGL\Wavepool\cmake-build-debug\CMakeFiles\glew.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\glew.dir\depend

