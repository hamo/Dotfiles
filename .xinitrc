# Make sure this is before the 'exec' command or it won't be sourced.
[ -f ~/.xprofile ] && source ~/.xprofile

[ -f ~/.xmodmaprc ] && xmodmap ~/.xmodmaprc

fcitx &
sogou-qimpanel &

exec stumpwm
