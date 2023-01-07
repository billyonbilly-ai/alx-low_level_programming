#!/bin/bash

# Create an empty list of object files
objects=""

# Iterate over all .c files in the current directory
for c_file in *.c; do
  # Compile the .c file into an object file
  gcc -c $c_file
  # Add the object file to the list
  objects="$objects $(basename $c_file .c).o"
done

# Create the static library from the object files
ar rcs liball.a $objects

