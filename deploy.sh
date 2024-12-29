#!/bin/bash
read -p "Deploy i3 settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    echo "copy .config/i3/config $HOME/.config/i3/config"
    cp .config/i3status/config $HOME/.config/i3status/config
    echo "copy .config/i3status/config $HOME/.config/i3status/config"
    cp .config/i3/config $HOME/.config/i3/config
fi


read -p "Deploy gtk settings? (Y/N): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    cp .config/gtk-3.0/settings.ini $HOME/.config/gtk-3.0/settings.ini
    gsettings set org.gnome.desktop.interface color-scheme prefer-dark
fi

read -p "Deploy fonts? (Y/N): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    cp -r .local/share/fonts/* $HOME/.local/share/fonts/
fi

read -p "Deploy xrdb settings? (Y/n): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    cp -r .config/X11 $HOME/.config/
    xrdb $HOME/.Xresources
fi


read -p "Deploy hestroot settings? (Y/N): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    cp .lock.png $HOME/.lock.png
    cp .wallpaper.png $HOME/.wallpaper.png
    cp .lock.xcf $HOME/.lock.xcf
    cp .wallpaper.xcf $HOME/.wallpaper.xcf
    hsetroot -cover ~/.wallpaper.png
fi

read -p "Deploy vim settings? (Y/N): " confirm
if [[ -z $confirm || $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    cp .vimrc $HOME/.vimrc
fi