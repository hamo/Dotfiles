
# Check for an interactive session
[ -z "$PS1" ] && return

emacs --daemon >/dev/null 2>&1
