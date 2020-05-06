#!/bin/sh

export GOOGLE_APPLICATION_CREDENTIALS=$1

./terraform init
./terraform plan
./terraform destroy -auto-approve
