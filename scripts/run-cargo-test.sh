#!/bin/bash

for path in "rust/"*
do
    cd "$path" || exit
    cargo test -- --ignored
    cd - || exit
done