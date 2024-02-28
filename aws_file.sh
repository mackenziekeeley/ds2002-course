#!/bin/bash

clear 

read -p "What is the file URL? " URL
read -p "What is the bucket? " BUCKET
read -p "What is the file name? " FILE

curl $URL > $FILE
aws s3 cp $FILE s3://$BUCKET/
aws s3 presign --expires-in 604800 s3://$BUCKET/$FILE

