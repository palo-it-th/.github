#!/bin/bash
doc_paths=($(find . -type d -name "node_modules" -prune -o -type f -name "*.md" -print))
echo "Found ${#doc_paths[@]} markdown files"

mkdir -p docs

for path in "${doc_paths[@]}"; do
    dir=$(dirname "$path")
    mkdir -p "docs/$dir"
    cp "$path" "docs/$path"
done