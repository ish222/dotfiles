!#/bin/bash

if [ "$EUID" -ne 0 ]
  then printf "${CYAN}Please run as root \n"
  exit
fi

echo "Installing simple-sddm theme"

sudo cp -r ./simple-sddm /usr/share/sddm/themes/
sudo sed '/\[Theme\]/{n;s/.*/Current=simple-sddm/}'
