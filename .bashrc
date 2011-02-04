# type newsmth to access ssh@newsmth.net
alias newsmth="luit -encoding gbk ssh hamobai@newsmth.net"

# my alias
alias u="cd .."

# Check for an interactive session
[ -z "$PS1" ] && return

# set chromium as the default browser
if [ -n "$DISPLAY" ]; then
	BROWSER=chromium
fi

