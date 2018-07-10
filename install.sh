#!/bin/bash
# Bertrand B.

FILE=.emacs
TARGET=/home/$USER;

echo "Copying $FILE into $TARGET";
cp -vu $FILE $TARGET;
