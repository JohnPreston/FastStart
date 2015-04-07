#!/usr/bin/env bash

mkdir -p /var/log/eucalyptus/
yum install ansible git -y | tee /var/log/eucalyptus/install.log
git clone https://github.com/JohnPreston/FastStart /tmp/FastStart | tee -a /var/log/eucalyptus/install.log

ansible-playbook /tmp/FastStart/faststart.yml 2>&1 | tee -a /var/log/eucalyptus/install.log

