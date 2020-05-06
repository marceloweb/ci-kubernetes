#!/bin/sh

export GOOGLE_APPLICATION_CREDENTIALS=$1

./terraform destroy -auto-approve
