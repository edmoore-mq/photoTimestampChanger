#!/bin/bash

#for f in photos/*
#do
	# Get current date of file
	#CUR_DATE= date -r $f
	#CUR_DATE= find $f -maxdepth 0 -printf "%TY-%Tm-%Td %TH:%TM\n"
	#NEW_DATE= date -d "$CUR_DATE +2668 days 15 hours 41 minutes 0 seconds"
	#echo $NEW_DATE
#done

find photos/ -print | while read filename; do
	touch -d "$(date -R -r "$filename") +217893600 seconds" "$filename"
done
