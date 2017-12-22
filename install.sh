#!/bin/bash

DEST=/home/$USER;

echo "Copying files into $DEST";
cp -vu .emacs $DEST;
