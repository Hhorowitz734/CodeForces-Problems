#!/bin/bash

# This script is intended to build and run the tests

# Stop the script if any command fails
set -e

# Echo the commands being executed
set -x

# Define the build directory
BUILD_DIR="/Users/bhorowitz/Documents/codeforces/100_problems_a/tram/build"

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