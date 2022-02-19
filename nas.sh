#!/bin/bash

TIME=$(date +%Y-%m-%d-%H:%M:%S)
HOST='192.168.37.10'
USER='adeli'
PASS='adeli@1234'
FILENAME=$TIME.tar
BASEDIR=/home/headdns
tar cf $BASEDIR/ansible-cisco/$FILENAME $BASEDIR/backup

ftp -n $HOST <<END
quote USER $USER
quote PASS $PASS
cd Adeli
put $FILENAME
quit
END

rm $FILENAME
