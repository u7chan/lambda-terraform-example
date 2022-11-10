#!/bin/bash

set -ex

terraform init

cd example-project
yarn install
./build.sh
cd ../

terraform apply -auto-approve
