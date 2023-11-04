#!/bin/bash

export LC_ALL=C

#Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


# Ask for the problem set and number, using colors
echo -ne "Problem Set (A/B/C): "
read -r problemset

echo -ne "Problem Number: "
read -r problemnum

echo --------------------------------------
echo -e ${GREEN}Retrieving and generating problem... ${NC}

lowercase_pset=$(echo "$problemset" | tr '[:upper:]' '[:lower:]')

# Construct the problem identifier
problem_id="Problem ${problemnum}${problemset}"

# Define the CSV file
csv_file="codeforces_problems.csv"

# Initialize link variable
link=""

# Read the CSV file line by line
while IFS=',' read -r id url; do
  # Remove whitespace from the read in values
  trimmed_id=$(echo $id | xargs)
  trimmed_url=$(echo $url | xargs)

  # Check if the current line's problem matches the user's input
  if [[ "$trimmed_id" == "$problem_id" ]]; then
    link=$trimmed_url
    break # Break the loop if we found the link
  fi
done < <(tail -n +2 "$csv_file") # Skip the header of the CSV

# Check if we found a link
if [[ -n $link ]]; then
  open "$link" # Use 'open' instead of 'xdg-open' if on macOS

else

# Function to generate a random number within a given range.
random_number_within() {
  local min=$1
  local max=$2
  echo $((RANDOM % (max - min + 1) + min))
}

# Generate a random letter between A-C.
letter=$(tr -dc 'A-C' </dev/urandom | head -c 1)

# Based on the letter, generate a random number in the appropriate range.
if [[ $letter == "A" ]] || [[ $letter == "B" ]]; then
  number=$(random_number_within 1 100)
else
  number=$(random_number_within 1 50)
fi

  echo -e "Problem ${RED}$problemset$problemnum${NC} not found."
  echo -ne "Would you like to try ${GREEN}$letter$number${NC} instead? (${GREEN}Y${NC}/${RED}N${NC}): "
  read -r tryproblem

  if [[ $tryproblem == "Y" ]]; then
    echo "fix this"
  else
    exit
  fi

fi

#Selects the folder to create the problem in 
if [[ "$problemset" == "C" ]]; then
  cd  "50_problems_c"
else
  cd "100_problems_$lowercase_pset"
fi

mkdir -p "Problem $problemnum"
cd "Problem $problemnum"
touch solution.h
touch solution.cpp
touch CMakeLists.txt

cat << EOF > solution.h
#include <iostream>

class Solution {

    private:
    
    public:

        int main_solution();
};

EOF

cat << EOF > solution.cpp 
#include <solution.h>

int Solution::main_solution(){



    return 0;

}

EOF

cat << EOF > solution_test.cpp
#include <gtest/gtest.h>
#include "solution.h"

class SolutionTests : public ::testing::Test {

    protected:

        Solution* instance;

        void SetUp() override {
            instance = new Solution();
        }

        void TearDown() override {
            delete instance;
        }

};

TEST_F(SolutionTests, TestOne) {
    Solution* instance = new Solution();
    EXPECT_EQ(1, instance->main_solution());
}

TEST_F(SolutionTests, TestTwo) {
    Solution* instance = new Solution();
    EXPECT_EQ(1, instance->main_solution());
}

TEST_F(SolutionTests, TestThree) {
    Solution* instance = new Solution();
    EXPECT_EQ(0, instance->main_solution());
}


#ifdef RUN_TESTS
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif
EOF

cat << EOF > CMakeLists.txt
cmake_minimum_required(VERSION 3.14)  # Required CMake version
project(CodeForces)  # Project name

# Set C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add your main program
add_executable(solution_main solution.cpp)
target_include_directories(solution_main PUBLIC "\${CMAKE_CURRENT_SOURCE_DIR}")

# Include directories for Google Test
include_directories("/opt/homebrew/opt/googletest/include")  # Include path for GoogleTest headers

# Link directories for Google Test
link_directories("/opt/homebrew/opt/googletest/lib")  # Update this with the actual path to the gtest libraries

# Assuming you have already found or added GoogleTest in this file using find_package or FetchContent

# Add your test program
add_executable(solution_test solution_test.cpp solution.cpp)
target_include_directories(solution_test PUBLIC "\${CMAKE_CURRENT_SOURCE_DIR}")

# Link Google Test libraries
target_link_libraries(solution_test "/opt/homebrew/Cellar/googletest/1.14.0/lib/libgtest.a" "/opt/homebrew/Cellar/googletest/1.14.0/lib/libgtest_main.a")

# Define RUN_TESTS when compiling the test suite
target_compile_definitions(solution_test PRIVATE RUN_TESTS)

enable_testing()
add_test(NAME TestOne COMMAND solution_test --gtest_filter=SolutionTests.TestOne)
add_test(NAME TestTwo COMMAND solution_test --gtest_filter=SolutionTests.TestTwo)
add_test(NAME TestThree COMMAND solution_test --gtest_filter=SolutionTests.TestThree)
EOF

mkdir -p "build"
cd build
touch "build_tests.sh"

cat << EOF > build_tests.sh
#!/bin/bash

# This script is intended to build and run the tests

# Stop the script if any command fails
set -e

# Echo the commands being executed
set -x

# Define the build directory
BUILD_DIR="/Users/bhorowitz/Documents/codeforces/100_problems_$lowercase_pset/Problem $problemnum/build"

# Go to the build directory
cd ${BUILD_DIR}

# Clean the build directory to ensure a fresh start
echo "Cleaning build directory..."
make clean

# Run cmake to generate the build system
echo "Running cmake..."
cmake ..

# Build the test program
echo "Making..."
make

#Run ctest
echo "Running ctest..."
ctest --list-tests
EOF

chmod +x build_tests.sh
cmake ..