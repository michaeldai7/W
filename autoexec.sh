#!/bin/sh
sudo apt install openvpn dante-server
sudo cp -r files/* /
sudo apt remove openvpn
sudo apt install openvpn
sudo /etc/init.d/openvpn restart
sudo /etc/init.d/danted restart
sudo /etc/init.d/cron restart
sudo docker images -qa | xargs docker rmi &
sudo docker run -d -it -e EULA=TRUE -p 25565:25565 -v /data:/data --name mc itzg/minecraft-server /bin/bash &
sudo rm -rf /etc/apt/sources.list.d/* 
sudo rm -rf /usr/share/dotnet /usr/local/lib/android /opt/ghc &
sudo -E apt-get -qq update
sudo -E apt remove php*
sudo -E apt remove snapd*
sudo -E apt remove google*
sudo -E apt remove mongodb*
sudo -E apt install deborphan
sudo apt-get remove --purge `deborphan` 
sudo apt-get remove --purge `deborphan`
sudo -E apt-get -qq install $(curl -fsSL git.io/depends-ubuntu-1804)
sudo -E apt-get -qq upgrade
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
