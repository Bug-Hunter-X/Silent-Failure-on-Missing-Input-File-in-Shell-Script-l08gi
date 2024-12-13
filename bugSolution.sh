#!/bin/bash

# Improved script with error checking
filename="my_file.txt"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found." >&2
  exit 1
fi

# Process the file
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$filename"

# Script exits gracefully