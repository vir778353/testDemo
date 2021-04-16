#!/bin/bash
NUM=$1
for (( i=1; i<=${NUM}; i++ ));
do
    touch "$i.js"
done