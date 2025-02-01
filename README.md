## Introduction
This contains i3 config and some common packages.

## Installation

```shell
sudo pacman -Syu i3-wm i3blocks i3lock i3status dunst ranger rofi kitty vim nvim scrot nautilus cliphist
```

## Packages
- kitty is a lightweight terminal emulator, part of *i3-sensible-terminal*.
- conky: hardware monitor(Temperature, usage), and sysetem info
- dunst: notification
- scrot: taking screenshoot.
- ranger: file manager(vim like)
- nautilus: file manager(gnome file manager)
- cliphist: clip board manager

## Extra packages
- Xsel is a program to access X clipboard. We need it to make copy-paste in URxvt available. Hit Alt+C to copy, and Alt+V to paste. 
- LXAppearance is used for changing GTK theme icons, fonts, and some other preferences (Unnecessary if you already have Xfce Settings).
- Hsetroot is a wallpaper handler. i3 has no wallpaper handler by default.
- picom: shadown, transparent
- pinta: image editing