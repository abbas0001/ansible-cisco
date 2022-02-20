#!/bin/bash

HOST='192.168.37.10'
USER='adeli'
PASS='adeli@1234'
FILE=$1

ftp -n $HOST <<END
quote USER $USER
quote PASS $PASS
lcd /home/headdns/ansible-cisco
cd Adeli
put $FILE
quit
END

rm /home/headdns/ansible-cisco/$FILE
