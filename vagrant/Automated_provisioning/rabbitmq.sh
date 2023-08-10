#!/bin/bash
sudo yum install epel-release -y
sudo yum update -y
sudo yum install wget -y

#Installing RMQ
cd /tmp/
dnf -y install centos-release-rabbitmq-38
dnf --enablerepo=centos-rabbitmq-38 -y install rabbitmq-server
systemctl enable --now rabbitmq-server
firewall-cmd --add-port=5672/tcp
firewall-cmd --runtime-to-permanent

# starting & enabling RMQ
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server

#Creation of user
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo systemctl restart rabbitmq-server