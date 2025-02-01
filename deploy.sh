#!/bin/bash

read -p "Install necessary packages? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  sudo pacman -Syu i3-wm i3blocks i3lock i3status dunst ranger rofi kitty vim nvim scrot nautilus cliphist
fi

read -p "Deploy i3 settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp .config/i3status/config $HOME/.config/i3status/config
  cp .config/i3/config $HOME/.config/i3/config
fi

read -p "Deploy gtk dark theme settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp .config/gtk-3.0/settings.ini $HOME/.config/gtk-3.0/settings.ini
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
fi

read -p "Deploy fonts? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp -r .local/share/fonts/* $HOME/.local/share/fonts/
fi

read -p "Download and Install cursor theme? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  pwdir=$(pwd)
  cd $HOME/Downloads/
  curl https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Ice.tar.xz
  tar -xf Bibata-Modern-Ice.tar.xz
  sudo mv Bibata-Modern-Ice /usr/share/icons/
  cd $pwdir
fi

read -p "Deploy xorg settings(cursor theme, urxvt)? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp -r .config/X11 $HOME/.config/
  xrdb $HOME/.Xresources
fi

read -p "Deploy hestroot settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp .lock.png $HOME/.lock.png
  cp .wallpaper.png $HOME/.wallpaper.png
  cp .lock.xcf $HOME/.lock.xcf
  cp .wallpaper.xcf $HOME/.wallpaper.xcf
  hsetroot -cover ~/.wallpaper.png
fi

read -p "Deploy mouse accelecration settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  sudo cp 40-libinput.conf /etc/X11/xorg.conf.d/
fi

read -p "Deploy conky settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp -r ./config/conky $HOME/.config/
fi

read -p "Deploy dunst(notification) settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp -r ./config/dunst $HOME/.config/
fi

read -p "Deploy picom settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp -r ./config/picom $HOME/.config/
fi

read -p "Deploy ranger settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  cp -r ./config/ranger $HOME/.config/
fi

