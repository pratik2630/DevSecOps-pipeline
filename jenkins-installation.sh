#!/bin/bash

#Jenkins installation script for aws linux

sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo dnf install java-17-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
echo "===================================="

sudo systemctl status jenkins

echo "===================================="

echo "JENKINS PASSWORD"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
