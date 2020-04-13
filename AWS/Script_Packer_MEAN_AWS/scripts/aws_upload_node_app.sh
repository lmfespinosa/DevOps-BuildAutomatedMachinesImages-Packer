#!/usr/bin/env bash
sudo apt-get update -y


sudo cp -a /home/ubuntu/web/web.js /usr/share/nginx/html/web.js
#sudo node /usr/share/nginx/html/web.js

sudo cp -a /home/ubuntu/files/nginx.conf /etc/nginx/sites-available/default

nginx -s reload -t


sudo npm install pm2@latest -g -y
sudo pm2 start /usr/share/nginx/html/web.js
sudo pm2 startup systemd
#sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u vagrant
#sudo pm2 save
#sudo systemctl start pm2-vagrant