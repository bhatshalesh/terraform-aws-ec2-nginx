#!/bin/bash
# Update the package list
apt update -y

# Install NGINX web server
apt install nginx -y

# Start the NGINX service
systemctl start nginx

# Make NGINX start on system boot
systemctl enable nginx
