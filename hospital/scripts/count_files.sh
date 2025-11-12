#!/bin/bash

file_count=$(find . -type f | wc -l)
dir_count=$(find . -type d | wc -l)

echo "Total number of files in the hospital directory: $file_count"
echo "Total number of directories in the hospital directory: $((dir_count - 1))" # Subtract 1 for the current directory '.'

echo "
Directories:"
find . -type d -print | sed '1d' # Exclude the current directory '.'