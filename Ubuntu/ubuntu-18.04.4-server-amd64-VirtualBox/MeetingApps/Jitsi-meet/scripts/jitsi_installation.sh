#!/bin/bash -eux
sudo apt-get install debconf-utils

#get configuration sudo debconf-get-selections | grep jitsi-meet > file.txt
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
sudo sh -c "echo 'deb https://download.jitsi.org stable/' > /etc/apt/sources.list.d/jitsi-stable.list"
sudo apt-get -y update
debconf-set-selections <<< "jitsi-meet-prosody	jitsi-meet-prosody/jvb-hostname	string	ejemplo.es"
debconf-set-selections <<< "jitsi-meet-prosody	jicofo/jicofo-authuser	string	focus"
debconf-set-selections <<< "jitsi-meet-web-config	jitsi-meet/cert-choice	select	Generate a new self-signed certificate (You will later get a chance to obtain a Let's encrypt certificate)"
debconf-set-selections <<< "jitsi-meet-web-config	jitsi-meet/jvb-hostname	string	ejemplo.es"
debconf-set-selections <<< "jitsi-meet-prosody	jitsi-videobridge/jvb-hostname	string	ejemplo.es"
debconf-set-selections <<< "jitsi-meet-web-config	jitsi-videobridge/jvb-hostname	string	ejemplo.es"
debconf-set-selections <<< "jitsi-meet-web-config	jitsi-meet/cert-path-key	string"

sudo apt-get -y install jitsi-meet 

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic
