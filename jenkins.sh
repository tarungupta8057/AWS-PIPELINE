#!/bin/bash
# step1 --- To install git, java, and maven.
yum install git java* maven -y
yum install wget -y
# step2 --- To download jenkin repo from redhat and import it.
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# step3 --- To install more java version for jenkins
amazon-linux-extras install java-openjdk11 -y # this is for amazon linux
yum install jenkins -y
# step4 --- To select java version
update-alternatives --config java
#step5 Restarting jenkins services
yum install systemctl -y
systemctl start jenkins 
systemctl status jenkins
