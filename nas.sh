#!/bin/bash

TIME=$(date +%Y-%m-%d-%H:%M:%S)
FILENAME=$TIME.tar
BASEDIR=~
tar cf $BASEDIR/ansible-cisco/$FILENAME $BASEDIR/backup
$BASEDIR/ansible-cisco/ftp.sh $FILENAME
