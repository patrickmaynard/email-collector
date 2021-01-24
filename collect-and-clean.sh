#!/usr/bin/env bash

#One of the most common reporting tasks I have is to scour a website for emails.
#A lot of times, these emails are buried. That can make reporting a story very slow.
#That's not a good thing if I'm on deadline. So this script speeds things up a bit.

#Which page should we start at?
URL=$1

#How much recursion do we want? (wget defaults to 5. A lower value may be used for testing or speed.)
LEVEL=3

wget --recursive --reject jpg,png,pdf,gif,JPG,PNG,PDF,GIF --level=$LEVEL $URL

#Important! If we re-run our script, we want to make sure we're not infinitely finding addresses that have already been collected.
rm *.txt

#Note that this assumes you're downloading from a site that starts with www.
#Adjust as needed.
grep -riIoh "[a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]*\.[A-Z]*" www.* > addresses.txt

php dedupe-and-collapse.php

rm addresses.txt

cat output.txt
