# Make sure this is before the 'exec' command or it won't be sourced.
[ -f ~/.xprofile ] && source ~/.xprofile

# Apply Xresources settings
[ -f ~/.Xdefaults ] && xrdb -merge ~/.Xdefaults

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap -option ctrl:nocaps

# Notify
dunst &

# sogoupinyin
xcompmgr &
fcitx-autostart
sogou-qimpanel &

exec stumpwm
