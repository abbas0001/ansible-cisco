#!/bin/bash

FILENAME=$1
egrep -v "[[:space:]]{2}" $FILENAME > restore.conf
ansible-playbook cisco-restore.yml
rm restore.conf
