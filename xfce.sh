#bin/bash

echo "******* Installing EndeavourOS Theming for XFCE4*******"

echo "******* cloning dotfiles for EndeavourOS - XFCE4 Theming *******" && sleep 1
    git clone https://github.com/endeavouros-team/endeavouros-xfce4-theming.git
    cd endeavouros-xfce4-theming
echo "******* Getting theme packages installed now: *******" && sleep 1
    sudo pacman -S --noconfirm --needed - < xfce4-packages-list

echo "******* setting up theme for Light-DM: *******" && sleep 1
    wget -q --timeout=10 https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-iso-next/main/airootfs/etc/lightdm/lightdm-gtk-greeter.conf
    sudo cp  lightdm-gtk-greeter.conf /etc/lightdm/
    sudo systemctl -f enable lightdm
      
echo "******* setting up xfce4 theme and settings: *******" && sleep 1
    rm -rf ~/.config/Thunar ~/.config/qt5ct ~/.config/xfce4 ~/.cache
    cp -R .config/ ~/
    dbus-launch dconf load / < xed.dconf
    cd ..
    rm -rf endeavouros-xfce4-theming 

echo "******* All Done --- restarting System NOW! *******"
echo "******* Please login again and enjoy EndeavourOS Theming! *******"

    yad --title="Restarting System" \
        --text="All done --- please login again and enjoy XFCE4 with EndeavourOS Theming!" \
        --width=400 --height=100 \
        --button="Restart System":0

    sudo systemctl reboot

}

Main "$@"
