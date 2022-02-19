#!/bin/bash

ansible-playbook ~/ansible-cisco/cisco-backup.yml
~/ansible-cisco/time.sh
~/ansible-cisco/delete.sh
~/ansible-cisco/nas.sh
