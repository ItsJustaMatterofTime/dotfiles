[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap       # change key mapping
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources    # source urxvt config file

xset s off         # don't activate screensaver
xset -dpms         # disable DPMS (Energy Star) features.
xset s noblank     # don't blank the video device

feh --bg-center /home/sparklinggt/Pictures/background.jpg
exec i3            # start i3 windows manager
