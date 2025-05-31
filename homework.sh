#!/bin/bash

function k-pop() {
  echo "blackpink..."

  sudo groupadd blackpink

  for user in jenny rose lisa jisoo; do
    sudo useradd -m -G blackpink $user
  done

  echo "blackpink is created."
}

function wordpress() {
  echo "wordpress..."

  sudo yum install -y httpd php php-mysqlnd php-fpm wget tar
  sudo systemctl start httpd
  sudo systemctl enable httpd

  cd /tmp
  wget https://wordpress.org/latest.tar.gz
  tar -xzf latest.tar.gz

  sudo mv wordpress /var/www/html/
  sudo chown -R apache:apache /var/www/html/wordpress
  sudo chmod -R 755 /var/www/html/wordpress

  echo "WordPress is installed"
}

function binary() {
  echo "tree & terraform..."

  sudo yum install -y tree
  sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
  sudo yum install -y terraform

  echo "tree & terraform finished"
}

# Автоматический запуск всех функций
k-pop
wordpress
binary
