# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/qt-rss-reader-frontend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/qt-rss-reader-frontend.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/qt-rss-reader-frontend.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/qt-rss-reader-frontend.dir/flags.make

CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o: CMakeFiles/qt-rss-reader-frontend.dir/flags.make
CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o: qt-rss-reader-frontend_autogen/mocs_compilation.cpp
CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o: CMakeFiles/qt-rss-reader-frontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o -MF CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o -c /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/qt-rss-reader-frontend_autogen/mocs_compilation.cpp

CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/qt-rss-reader-frontend_autogen/mocs_compilation.cpp > CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.i

CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/qt-rss-reader-frontend_autogen/mocs_compilation.cpp -o CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.s

CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o: CMakeFiles/qt-rss-reader-frontend.dir/flags.make
CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o: /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/main.cpp
CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o: CMakeFiles/qt-rss-reader-frontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o -MF CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o.d -o CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o -c /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/main.cpp

CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/main.cpp > CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.i

CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/main.cpp -o CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.s

CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o: CMakeFiles/qt-rss-reader-frontend.dir/flags.make
CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o: /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/mainwindow.cpp
CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o: CMakeFiles/qt-rss-reader-frontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o -MF CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o.d -o CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o -c /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/mainwindow.cpp

CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/mainwindow.cpp > CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.i

CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend/mainwindow.cpp -o CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.s

# Object files for target qt-rss-reader-frontend
qt__rss__reader__frontend_OBJECTS = \
"CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o" \
"CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o"

# External object files for target qt-rss-reader-frontend
qt__rss__reader__frontend_EXTERNAL_OBJECTS =

qt-rss-reader-frontend: CMakeFiles/qt-rss-reader-frontend.dir/qt-rss-reader-frontend_autogen/mocs_compilation.cpp.o
qt-rss-reader-frontend: CMakeFiles/qt-rss-reader-frontend.dir/main.cpp.o
qt-rss-reader-frontend: CMakeFiles/qt-rss-reader-frontend.dir/mainwindow.cpp.o
qt-rss-reader-frontend: CMakeFiles/qt-rss-reader-frontend.dir/build.make
qt-rss-reader-frontend: /usr/lib/libQt5Widgets.so.5.15.5
qt-rss-reader-frontend: /usr/lib/libQt5Gui.so.5.15.5
qt-rss-reader-frontend: /usr/lib/libQt5Core.so.5.15.5
qt-rss-reader-frontend: CMakeFiles/qt-rss-reader-frontend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable qt-rss-reader-frontend"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qt-rss-reader-frontend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/qt-rss-reader-frontend.dir/build: qt-rss-reader-frontend
.PHONY : CMakeFiles/qt-rss-reader-frontend.dir/build

CMakeFiles/qt-rss-reader-frontend.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/qt-rss-reader-frontend.dir/cmake_clean.cmake
.PHONY : CMakeFiles/qt-rss-reader-frontend.dir/clean

CMakeFiles/qt-rss-reader-frontend.dir/depend:
	cd /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles/qt-rss-reader-frontend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/qt-rss-reader-frontend.dir/depend
