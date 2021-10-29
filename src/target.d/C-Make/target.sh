#!/bin/sh

# Target: C-Make
# Author: Victor Cebarros
# Version: v0.1.0
# License: MIT License
# Description: C-Make creates a simple C project using Make as the build system.

target_main () {
    res="$(target_get src)/res"
    dest="$(target_get dest)"
    name="$(target_get name)"

    target_echo "Creating Makefile"
    sed "s/TARGET_NAME/$name/g" "$res/Makefile" >> "$dest/Makefile"

    target_echo "Creating src directory"
    mkdir "$dest/src"

    target_echo "Creating main.c"
    cp "$res/main.c" "$dest/src/main.c"

    target_echo "Creating .gitignore"
    cp "$res/.gitignore" "$dest/.gitignore"

    target_echo "Creating README.md"
    echo "# $name" >> "$dest/README.md"

    target_echo "Initializing git repository"
    git init "$dest"
}
