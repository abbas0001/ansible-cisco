#!/bin/bash

ansible-playbook cisco-backup.yml
DATE=$(date +'%Y-%m-%d-%H-%M-%s')
mv switch.conf "running-config-${DATE}.conf"
