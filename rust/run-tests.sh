#!/bin/bash

for path in rust/*/
do
    cd "$path" || exit
    cargo test -- --include-ignored
    cd - || exit
done
