#!/bin/sh
# Bertrand B.

FILE=.emacs
TARGET=/home/$USER;

usage () {
  echo "Usage: $(basename "$0") [OPTIONS]";
  echo "Options:";
  echo "  -s, --symlink: Install as symbolic link.";
  echo "  -c, --copy:    Install as copy.";
  echo "  -h, --help:    Display usage."
}

symlink_files () {
  echo "Create symbolic links of $FILE into $TARGET.";
  ln -s "FILE" "TARGET";
}

copy_files () {
    echo "Copying $FILE into $TARGET";
    cp -vu "$FILE" "$TARGET";
}

run () {
    case "$1" in
	-s | --symlink)
	    symlink_files;
	    ;;
	-c | --copy)
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
