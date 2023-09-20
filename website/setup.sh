#!/bin/bash
apt-get install -y  wget tar runit nginx python3-certbot-nginx  
if [[ -n $PASS_SSH ]]
then
apt-get install -y ssh
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && (echo $PASS_SSH; echo $PASS_SSH) | passwd root
service ssh start
fi
mkdir /root/website
sleep infinity
