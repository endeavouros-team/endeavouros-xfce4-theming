# endeavouros-xfce4-theming
[![Maintenance](https://img.shields.io/maintenance/yes/2022.svg)]()

![XFCE4 Screenshot](https://raw.githubusercontent.com/endeavouros-team/screenshots/master/endeavouros-xfce4-apollo.png "XFCE4 Screenshot")
The EndeavourOS XFCE4 Theming.


## Installing the theme:

### Manually
`git clone https://github.com/endeavouros-team/endeavouros-xfce4-theming`

`cd endeavouros-xfce4-theming`

`rm -rf ~/.config/Thunar ~/.config/qt5ct ~/.config/xfce4 ~/.cache`

`cp .Xresources ~/.Xresources`

`cp -R .config/ ~/`

`dbus-launch dconf load / < xed.dconf`

`sudo systemctl reboot`
### Via the Script
or if you are really lazy use the script:

`wget https://raw.githubusercontent.com/endeavouros-team/endeavouros-xfce4-theming/master/xfce.sh`

`sh ./xfce.sh`

