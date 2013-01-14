#!/bin/sh

# disable touchpad when typing
syndaemon -t -k -i 2 -d &

xmodmap ~/.xmodmaprc
