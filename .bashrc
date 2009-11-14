
# Check for an interactive session
[ -z "$PS1" ] && return

if test $(pgrep -f emacs | wc -l ) -eq 0
then
    emacs --daemon >/dev/null 2>&1
fi
