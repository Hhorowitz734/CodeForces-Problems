cmake_minimum_required(VERSION 3.14)  # Required CMake version
project(CodeForces)  # Project name

# Set C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add your main program
add_executable(solution_main solution.cpp)
target_include_directories(solution_main PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

# Include directories for Google Test
include_directories("/opt/homebrew/opt/googletest/include")  # Include path for GoogleTest headers

# Link directories for Google Test
link_directories("/opt/homebrew/opt/googletest/lib")  # Update this with the actual path to the gtest libraries

# Assuming you have already found or added GoogleTest in this file using find_package or FetchContent

# Add your test program
add_executable(solution_test solution_test.cpp solution.cpp)
target_include_directories(solution_test PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

# Link Google Test libraries
target_link_libraries(solution_test "/opt/homebrew/Cellar/googletest/1.14.0/lib/libgtest.a" "/opt/homebrew/Cellar/googletest/1.14.0/lib/libgtest_main.a")

# Define RUN_TESTS when compiling the test suite
target_compile_definitions(solution_test PRIVATE RUN_TESTS)

enable_testing()
add_test(NAME TestOne COMMAND solution_test --gtest_filter=SolutionTests.TestOne)