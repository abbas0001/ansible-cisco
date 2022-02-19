#!/bin/bash

DIRS=$(find ~/backup -type d -name "*.*.*.*")
for DIR in $DIRS
do
	COUNT=$(ls $DIR | wc -l)
	if [ $COUNT -le 6 ]
	then
		continue
	fi
	REMAINS=$(ls -tr $DIR | tail -n 6)
	mkdir $DIR/temp
	for REMAIN in $REMAINS
	do
		mv $DIR/$REMAIN $DIR/temp
	done
	find $DIR -maxdepth 1 -type f -delete
	mv $DIR/temp/* $DIR
	rmdir $DIR/temp
done
