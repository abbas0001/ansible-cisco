#!/bin/bash

FILES=$(find backup -type f -name "*.*.*.*")
TIME=$(date +%Y-%m-%d-%H:%M:%S)
for FILE in $FILES
do
	DIRNAME=$(dirname $FILE)
	mv $FILE $DIRNAME/$TIME.conf
done
