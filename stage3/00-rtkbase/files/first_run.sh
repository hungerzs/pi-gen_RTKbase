#!/bin/bash

_user="${PWD##*/}"
cd /home/$_user
#find ./ -type f -iname "install.sh*" -exec rm {} \;
##wget https://raw.githubusercontent.com/stefal/rtkbase/dev/tools/install.sh
#wget https://raw.githubusercontent.com/stefal/rtkbase/master/tools/install.sh
#find ./ -type f -iname "*.sh" -exec chmod +x {} \;
#echo '#####MODIFY $(logname) install.sh########'
#sed -i -e "s/\$(logname)/$_user/g" /home/$_user/install.sh
#echo '#####DONE !##############################'

#if rtkbase dev branch
#sed -i '/rtkbase.git/a cd rtkbase && git checkout dev && cd ..' ./install.sh

#cat install.sh
##./install.sh --dependencies --rtklib --rtkbase-repo --gpsd-chrony
#./install.sh --dependencies --rtklib --rtkbase-release --gpsd-chrony
#find ./ -type f -iname "*.sh" -exec chmod +x {} \;

#update rtkbase 2.4.1
wget https://raw.githubusercontent.com/stefal/rtkbase/master/tools/install.sh
chmod +x install.sh
# $HOME variable isn't available inside armbian-firstboot
sed -i 's/df \"$HOME\"/df \//g' /home/${_user}/install.sh
./install.sh --user ${_user} --dependencies --rtklib --rtkbase-release --gpsd-chrony
find ./ -type f -iname "*.sh" -exec chmod +x {} \;


