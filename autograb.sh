#!/bin/bash

curl -O -L https://data.phishtank.com/data/$APTKEY/online-valid.csv && awk -F',' '{print $2}' online-valid.csv | sed -e 1,1d > fullUri.txt && awk -F',' '{print $2}' online-valid.csv | sed -e 1,1d | cut -d"/" -f3 | sort | uniq > justDomain.txt
