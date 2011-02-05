#!/bin/sh

export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus

# set chromium as the default browser
export BROWSER=chromium

# disable touchpad when typing
syndaemon -t -k -i 2 -d &

# start some nice programs
exec ck-launch-session startkde
