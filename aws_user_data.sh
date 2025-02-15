#!/bin/bash
yum update -y
yum install httpd -y
service httpd start 
chkconfig httpd on 
cd /var/www/html
echo hello i am from vm1 >> index.html
