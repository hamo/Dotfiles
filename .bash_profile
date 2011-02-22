# set default editor
export EDITOR="vim"

# start emacs daemon when log in
# if test $( pgrep -f emacs | wc -l ) == 0
# then
#     emacs --daemon >/dev/null 2>&1
# fi

# if log in at tty6, start X automatically
#if [ $(/usr/bin/tty) == '/dev/tty6' ] && [ $( pgrep ^X$ | wc -l ) == 0 ]
#then
#    exec startx > /dev/null 2>&1
#fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
