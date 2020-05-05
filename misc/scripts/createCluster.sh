#!/bin/sh

GOOGLE_APPLICATION_CREDENTIALS=$1

./terraform init
./terraform plan
./terraform apply -auto-approve
