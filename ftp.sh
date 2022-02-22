#!/bin/bash

HOST='##HERE##'
USER='##HERE##'
PASS='##HERE##'
FILE=$1

ftp -n $HOST <<END
quote USER $USER
quote PASS $PASS
lcd ~/ansible-cisco
cd ##HERE## ##NAS DIRECTORY TO COPY
put $FILE
quit
END

rm ~/ansible-cisco/$FILE
