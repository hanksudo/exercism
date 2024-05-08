#!/bin/bash

DIR=$(dirname "$0")

for path in "$DIR"/*;
do
    if [ -d "$path" ]; then
        cd "$path" || exit
        cargo test -- --include-ignored
    fi
done
