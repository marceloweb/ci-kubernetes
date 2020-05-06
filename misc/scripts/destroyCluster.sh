#!/bin/sh

export GOOGLE_APPLICATION_CREDENTIALS=$1

./terraform init
./terraform destroy -var 'cluster_name=my-gke-cluster' -auto-approve
