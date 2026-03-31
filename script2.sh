#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system for tracking code changes" ;;
    apache2) echo "Apache: open-source web server" ;;
    mysql-server) echo "MySQL: open-source relational database" ;;
    vlc) echo "VLC: multimedia player supporting all formats" ;;
    *) echo "Unknown package" ;;
esac
