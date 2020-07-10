#!/bin/bash

wget -O code.tar.gz https://update.code.visualstudio.com/latest/linux-x64/stable
tar -xvzf code.tar.gz
sudo rm -Rf /opt/code /bin/code
sudo mkdir /opt/code
sudo mv VSCode-linux-x64/* /opt/code/
rm -Rf code.tar.gz VSCode-linux-x64/
sudo ln -s /opt/code/bin/code /bin/code
echo 'Visual Studio Code has been updated!'
echo 'Type in "code" to open it up'
