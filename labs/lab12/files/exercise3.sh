#!/bin/bash

DIR="${1:-.}"

for file in "$DIR"/*; do
    if [ -e "$file" ]; then
        access=$(stat -c "%A" "$file")
        name=$(basename "$file")
        echo "$access $name"
    fi
done
