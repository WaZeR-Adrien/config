#!/usr/bin/env bash
sudo su -
cd Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get install fish
chsh -s `which fish`
sudo apt install apache2 php mysql-server libapache2-mod-php php-mysql
ln -s /var/www/html/ /home/user/
sudo chmod -R 777 /var/www/html/
mv /home/user/html /home/user/Projects
sudo sed -i -e "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf
sudo echo "<ifModule mod_rewrite.c>
RewriteEngine On
</ifModule>" >> /etc/apache2/apache2.conf
sudo apt-get install phpmyadmin
sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
wget https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux
tar -xzvf ideaIU*.tar.gz
cd idea-IU-*/bin/
./idea.sh
cd /home/user/Downloads
sudo apt-get install git
sudo apt-get install nano
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord*.deb