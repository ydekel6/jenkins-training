#!/bin/bash

DATE=$(date +%d.%m.%Y-%H:%M:%S)
NAME=db-$DATE

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldump -u root -h $DB_HOST --column-statistics=0 -p$DB_PASSWORD $DB_NAME > /tmp/$NAME.sql && \
export AWS_ACCESS_KEY_ID=AKIAISGHIG54PYZJHGXA && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \

echo "Uploading db backup to s3"
aws s3 cp /tmp/$NAME.sql s3://$BUCKET_NAME/$NAME.sql

