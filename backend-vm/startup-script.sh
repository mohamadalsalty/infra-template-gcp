#!/bin/bash
apt-get update
apt-get install -y apache2
systemctl enable apache2
systemctl start apache2

echo 'Hello world' > /var/www/html/index.html