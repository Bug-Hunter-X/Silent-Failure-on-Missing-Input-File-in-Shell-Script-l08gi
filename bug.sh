#!/bin/bash

# This script attempts to process a file, but it has a subtle error.
# It doesn't check if the file exists before processing it.

filename="my_file.txt"

# Attempt to process the file (this will fail if the file doesn't exist)
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$filename"

# The script continues even if there was an error