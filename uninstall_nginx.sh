#!/bin/bash

# Stop the Nginx service
sudo systemctl stop nginx

# Remove the Nginx package and dependencies
sudo apt-get purge -y nginx nginx-common nginx-full

# Remove any additional Nginx-related packages
sudo apt-get autoremove -y

# Remove Nginx configuration files and directories
sudo rm -rf /etc/nginx
sudo rm -rf /var/www/html
sudo rm -rf /var/log/nginx
sudo rm -rf /var/cache/nginx

# Remove Nginx user and group if they exist
sudo deluser --remove-home nginx
sudo delgroup nginx

# Clean up remaining package data
sudo apt-get clean

echo "Nginx has been completely uninstalled from the server."
