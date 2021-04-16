#!/bin/bash
#http://dannysun-unknown.blogspot.com/2016/11/shell-script-awk-sed.html
#https://www.opencli.com/linux/shell-script-split-string-array
#先用 grep 取得我們要的資料（列處理）
#再用 awk 處理 grep 處理過的資料（欄處理）

content="$(wget -q -O - https://api.github.com/users/aszx87410)"
IFS=","
#export IFS;
for word in $content; 
do
    echo "$word" | grep "logic" | awk -F':' '{print $2}'
done 
