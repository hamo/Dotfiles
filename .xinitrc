# Make sure this is before the 'exec' command or it won't be sourced.
[ -f ~/.xprofile ] && source ~/.xprofile

setxkbmap -option ctrl:nocaps

fcitx-autostart &

exec stumpwm
