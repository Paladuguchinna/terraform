#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

#!/bin/bash
sudo yum install wget unzip vim -y
sudo yum install httpd* -y
cd /tmp/
wget https://github.com/BlackrockDigital/startbootstrap-grayscale/archive/gh-pages.zip
unzip gh-pages.zip
cp -r startbootstrap-grayscale-gh-pages/* /var/www/html/
systemctl start httpd



