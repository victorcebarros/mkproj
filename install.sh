#!/bin/sh

PREFIX=${PREFIX:-/usr/local}

script="$1"

install () {
    path="$1"
    mkdir -p "$path/man/man1"
    cp "doc/mkproj.1" "$path/man/man1/mkproj.1"
    gzip "$path/man/man1/mkproj.1"
    chmod 644 "$path/man/man1/mkproj.1.gz"

    mkdir -p "$path/bin"
    cp "src/mkproj" "$path/bin/mkproj"
    chmod 755 "$path/bin/mkproj"
}

remove () {
    path="$1"
    rm "$path/man/man1/mkproj.1.gz"
    rm "$path/bin/mkproj"
}

usage () {
    echo "usage: $script [ install | remove ]"
    exit 1
}

main () {
    case "$1" in
        install) install "$PREFIX" ;;
        remove) remove "$PREFIX" ;;
        *) usage
    esac
}

if [ "/usr/local" = "$PREFIX" ]; then
    if [ "$(id -u)" -ne "0" ]; then
        echo "You need to be root or change the PREFIX variable"
        exit 1
    fi
fi

main "$1"
