#!/bin/bash

# Set the project name
PROJECT_NAME="MyProject"

# Set the build directory name
BUILD_DIR="build"

# Check if the build directory exists
if [ -d "$BUILD_DIR" ]; then
  echo "Cleaning up existing build directory..."
  rm -rf "$BUILD_DIR"
fi

# Create the build directory
mkdir "$BUILD_DIR"
echo "Build directory created."

# Navigate to the build directory
cd "$BUILD_DIR"

# Run CMake to generate the makefiles
echo "Running CMake..."
cmake ..

# Check if CMake was successful
if [ $? -ne 0 ]; then
  echo "CMake failed. Exiting."
  exit 1
fi

# Build the project
echo "Building the project..."
cmake --build .

# Check if the build was successful
if [ $? -ne 0 ]; then
  echo "Build failed. Exiting."
  exit 1
fi

echo "Build completed successfully."
