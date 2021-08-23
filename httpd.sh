#!/bin/bash -xe
cd /tmp
yum update -y
yum install -y httpd
echo "Hello from Shashi this is EC2 instance and my name is $(hostname -f)." > /var/www/html/index.html
systemctl start httpd