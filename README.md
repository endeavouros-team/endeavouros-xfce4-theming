# endeavouros-xfce4-theming
EndeavourOS XFCE4 Theming

[![Maintenance](https://img.shields.io/maintenance/yes/2021.svg)]()

# manually installing the theme:

`git clone https://github.com/endeavouros-team/endeavouros-xfce4-theming`

`cd endeavouros-xfce4-theming`

`rm -rf ~/.config/Thunar ~/.config/qt5ct ~/.config/xfce4 ~/.cache`

`cp -R .config/ ~/`

`dbus-launch dconf load / < xed.dconf`

`sudo systemctl reboot`

![XFCE4 Screenshot](https://raw.githubusercontent.com/endeavouros-team/screenshots/master/eos-01-21-xfce4.png "XFCE4 Screenshot")
