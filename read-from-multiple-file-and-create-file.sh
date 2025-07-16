#!/bin/bash

# Output file
output_file="all-verbs.txt"
> "$output_file"  # Empty or create the file

# Loop through chapter-13 to chapter-24
for i in {13..24}; do
    chapter_dir="chapter-$i"
    verb_file="$chapter_dir/chapter-$i-verb.txt"

    if [[ -f "$verb_file" ]]; then
        # Filter out empty lines and append to output file
        grep -v '^[[:space:]]*$' "$verb_file" >> "$output_file"
    else
        echo "Missing: $verb_file"
    fi
done

echo "All verbs collected in $output_file (empty lines removed)"
