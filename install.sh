#!/bin/sh
# Bertrand B.

FILE=.emacs
TARGET=/home/$USER;

usage () {
    echo "Usage:";
    echo "-n, --new:  New install."
    echo "-h, --help: Display usage."
}

copy_files () {
    echo "Copying $FILE into $TARGET";
    cp -vu $FILE $TARGET;
}

run () {
    case "$1" in
	-n | --new)
	    copy_files;
	    ;;
	-h | --help)
	    usage;
	    ;;
	*)
	    usage;
	    ;;
    esac
}

run $*;
