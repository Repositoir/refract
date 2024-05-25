#!/bin/bash

source_files=$(find . -maxdepth 1 -name "*.cpp")

if clang++ $source_files -std=c++20 -o output; then
  ./output "$1"
else
  echo "__________ERROR COMPILING___________"
  echo "View clang++ error message above"
  echo "Usage is ---- ./interpreter.sh file.lang"
fi
