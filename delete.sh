#!/bin/bash

DIRS=$(find backup -type d -name "*.*.*.*")
for DIR in $DIRS
do
	COUNT=$(ls $DIR | wc -l)
	if [ $COUNT -le 3 ]
	then
		exit 1
	fi
	REMAINS=$(ls $DIR | tail -n 3)
	mkdir $DIR/temp
	for REMAIN in $REMAINS
	do
		mv $DIR/$REMAIN $DIR/temp
	done
	find $DIR -maxdepth 1 -type f -delete
	mv $DIR/temp/* $DIR
	rmdir $DIR/temp
done
