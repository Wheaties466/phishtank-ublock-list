#!/bin/bash

echo $APTKEY "This is the API KEY!" >> /var/log/messages

curl -O -L -o /root/phishtank-ublock-list/online-valid.csv https://data.phishtank.com/data/$APTKEY/online-valid.csv && awk -F',' '{print $2}' /root/phishtank-ublock-list/online-valid.csv | sed -e 1,1d >> /root/phishtank-ublock-list/fullUri.txt && awk -F',' '{print $2}' /root/phishtank-ublock-list/online-valid.csv | sed -e 1,1d | cut -d"/" -f3 | sort | uniq >> /root/phishtank-ublock-list/justDomain.txt

sort /root/phishtank-ublock-list/fullUri.txt | uniq > /root/phishtank-ublock-list/fullUri2.txt
sort /root/phishtank-ublock-list/justDomain.txt | uniq > /root/phishtank-ublock-list/justDomain2.txt
mv -f /root/phishtank-ublock-list/fullUri2.txt /root/phishtank-ublock-list/fullUri.txt
mv -f /root/phishtank-ublock-list/justDomain2.txt /root/phishtank-ublock-list/justDomain.txt
