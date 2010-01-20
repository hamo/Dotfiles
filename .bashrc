
# Check for an interactive session
[ -z "$PS1" ] && return

# start emacs daemon when log in
if test $( pgrep -f emacs | wc -l ) == 0
then
    emacs --daemon >/dev/null 2>&1
fi

# if log in at tty6, start X automatically
if [ $(/usr/bin/tty) == '/dev/tty6' ] && [ $( pgrep -f X | wc -l ) == 0 ]
then
    exec startx
fi

# start keychain
eval 'keychain --eval id_rsa 7CA25BED'
