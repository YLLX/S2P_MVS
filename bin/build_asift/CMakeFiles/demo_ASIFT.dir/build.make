# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/yx/miniconda3/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/yx/miniconda3/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift

# Include any dependencies generated for this target.
include CMakeFiles/demo_ASIFT.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/demo_ASIFT.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/demo_ASIFT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo_ASIFT.dir/flags.make

CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/numerics1.cpp
CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o -MF CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/numerics1.cpp

CMakeFiles/demo_ASIFT.dir/numerics1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/numerics1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/numerics1.cpp > CMakeFiles/demo_ASIFT.dir/numerics1.cpp.i

CMakeFiles/demo_ASIFT.dir/numerics1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/numerics1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/numerics1.cpp -o CMakeFiles/demo_ASIFT.dir/numerics1.cpp.s

CMakeFiles/demo_ASIFT.dir/frot.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/frot.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/frot.cpp
CMakeFiles/demo_ASIFT.dir/frot.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/demo_ASIFT.dir/frot.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/frot.cpp.o -MF CMakeFiles/demo_ASIFT.dir/frot.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/frot.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/frot.cpp

CMakeFiles/demo_ASIFT.dir/frot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/frot.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/frot.cpp > CMakeFiles/demo_ASIFT.dir/frot.cpp.i

CMakeFiles/demo_ASIFT.dir/frot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/frot.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/frot.cpp -o CMakeFiles/demo_ASIFT.dir/frot.cpp.s

CMakeFiles/demo_ASIFT.dir/splines.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/splines.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/splines.cpp
CMakeFiles/demo_ASIFT.dir/splines.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/demo_ASIFT.dir/splines.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/splines.cpp.o -MF CMakeFiles/demo_ASIFT.dir/splines.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/splines.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/splines.cpp

CMakeFiles/demo_ASIFT.dir/splines.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/splines.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/splines.cpp > CMakeFiles/demo_ASIFT.dir/splines.cpp.i

CMakeFiles/demo_ASIFT.dir/splines.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/splines.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/splines.cpp -o CMakeFiles/demo_ASIFT.dir/splines.cpp.s

CMakeFiles/demo_ASIFT.dir/fproj.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/fproj.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/fproj.cpp
CMakeFiles/demo_ASIFT.dir/fproj.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/demo_ASIFT.dir/fproj.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/fproj.cpp.o -MF CMakeFiles/demo_ASIFT.dir/fproj.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/fproj.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/fproj.cpp

CMakeFiles/demo_ASIFT.dir/fproj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/fproj.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/fproj.cpp > CMakeFiles/demo_ASIFT.dir/fproj.cpp.i

CMakeFiles/demo_ASIFT.dir/fproj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/fproj.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/fproj.cpp -o CMakeFiles/demo_ASIFT.dir/fproj.cpp.s

CMakeFiles/demo_ASIFT.dir/library.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/library.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/library.cpp
CMakeFiles/demo_ASIFT.dir/library.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/demo_ASIFT.dir/library.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/library.cpp.o -MF CMakeFiles/demo_ASIFT.dir/library.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/library.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/library.cpp

CMakeFiles/demo_ASIFT.dir/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/library.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/library.cpp > CMakeFiles/demo_ASIFT.dir/library.cpp.i

CMakeFiles/demo_ASIFT.dir/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/library.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/library.cpp -o CMakeFiles/demo_ASIFT.dir/library.cpp.s

CMakeFiles/demo_ASIFT.dir/flimage.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/flimage.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/flimage.cpp
CMakeFiles/demo_ASIFT.dir/flimage.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/demo_ASIFT.dir/flimage.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/flimage.cpp.o -MF CMakeFiles/demo_ASIFT.dir/flimage.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/flimage.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/flimage.cpp

CMakeFiles/demo_ASIFT.dir/flimage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/flimage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/flimage.cpp > CMakeFiles/demo_ASIFT.dir/flimage.cpp.i

CMakeFiles/demo_ASIFT.dir/flimage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/flimage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/flimage.cpp -o CMakeFiles/demo_ASIFT.dir/flimage.cpp.s

CMakeFiles/demo_ASIFT.dir/filter.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/filter.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/filter.cpp
CMakeFiles/demo_ASIFT.dir/filter.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/demo_ASIFT.dir/filter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/filter.cpp.o -MF CMakeFiles/demo_ASIFT.dir/filter.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/filter.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/filter.cpp

CMakeFiles/demo_ASIFT.dir/filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/filter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/filter.cpp > CMakeFiles/demo_ASIFT.dir/filter.cpp.i

CMakeFiles/demo_ASIFT.dir/filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/filter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/filter.cpp -o CMakeFiles/demo_ASIFT.dir/filter.cpp.s

CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_lib_sift.cpp
CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o -MF CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_lib_sift.cpp

CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_lib_sift.cpp > CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.i

CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_lib_sift.cpp -o CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.s

CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_keypoints.cpp
CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o -MF CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_keypoints.cpp

CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_keypoints.cpp > CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.i

CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_keypoints.cpp -o CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.s

CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_matches.cpp
CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o -MF CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_matches.cpp

CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_matches.cpp > CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.i

CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/compute_asift_matches.cpp -o CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.s

CMakeFiles/demo_ASIFT.dir/orsa.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/orsa.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/orsa.cpp
CMakeFiles/demo_ASIFT.dir/orsa.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/demo_ASIFT.dir/orsa.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/orsa.cpp.o -MF CMakeFiles/demo_ASIFT.dir/orsa.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/orsa.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/orsa.cpp

CMakeFiles/demo_ASIFT.dir/orsa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/orsa.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/orsa.cpp > CMakeFiles/demo_ASIFT.dir/orsa.cpp.i

CMakeFiles/demo_ASIFT.dir/orsa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/orsa.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/orsa.cpp -o CMakeFiles/demo_ASIFT.dir/orsa.cpp.s

CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_ASIFT.cpp
CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o -MF CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o.d -o CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_ASIFT.cpp

CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_ASIFT.cpp > CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.i

CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/demo_ASIFT.cpp -o CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.s

CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o: CMakeFiles/demo_ASIFT.dir/flags.make
CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o: /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/io_png/io_png.c
CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o: CMakeFiles/demo_ASIFT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o -MF CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o.d -o CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o -c /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/io_png/io_png.c

CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/io_png/io_png.c > CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.i

CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src/io_png/io_png.c -o CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.s

# Object files for target demo_ASIFT
demo_ASIFT_OBJECTS = \
"CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/frot.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/splines.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/fproj.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/library.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/flimage.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/filter.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/orsa.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o" \
"CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o"

# External object files for target demo_ASIFT
demo_ASIFT_EXTERNAL_OBJECTS =

demo_ASIFT: CMakeFiles/demo_ASIFT.dir/numerics1.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/frot.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/splines.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/fproj.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/library.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/flimage.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/filter.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/demo_lib_sift.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/compute_asift_keypoints.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/compute_asift_matches.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/orsa.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/demo_ASIFT.cpp.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/io_png/io_png.c.o
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/build.make
demo_ASIFT: io_png/libs/png/libpng.a
demo_ASIFT: io_png/libs/zlib/libzlib.a
demo_ASIFT: libMatch/libMatch.a
demo_ASIFT: libNumerics/libNumerics.a
demo_ASIFT: CMakeFiles/demo_ASIFT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable demo_ASIFT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_ASIFT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo_ASIFT.dir/build: demo_ASIFT
.PHONY : CMakeFiles/demo_ASIFT.dir/build

CMakeFiles/demo_ASIFT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo_ASIFT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo_ASIFT.dir/clean

CMakeFiles/demo_ASIFT.dir/depend:
	cd /home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src /home/yx/MyCode/DL-3DConstruction/S2P_DL/3rdparty/demo_ASIFT_src /home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift /home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift /home/yx/MyCode/DL-3DConstruction/S2P_DL/bin/build_asift/CMakeFiles/demo_ASIFT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo_ASIFT.dir/depend

