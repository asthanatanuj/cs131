#!/bin/bash

INPUTFILE="2019-01-h1.csv"

TIME=$(date "+%F-%T") 


#the first line sets the seperating factor to ',' and then the NR>1 skips the first line which is the header

awk -F ',' ' 
NR > 1 {
    if ($1 == "1.0") print > "'"${TIME}-1.0.csv"'";
    else if ($1 == "2.0") print > "'"${TIME}-2.0.csv"'";
    else print > "'"${TIME}-4.0.csv"'";
}' "$INPUTFILE"
