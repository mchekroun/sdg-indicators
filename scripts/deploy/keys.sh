#!/bin/bash

# Keys
tar xvf scripts/deploy/keys.tar -C scripts/deploy/
rm scripts/deploy/keys.tar

chmod 600 ./scripts/deploy/deploy_key
chmod 600 ./scripts/deploy/deploy_key_ds

eval `ssh-agent -s`
ssh-add scripts/deploy/deploy_key
ssh-add scripts/deploy/deploy_key_ds

if [ -a scripts/deploy/deploy_key_test ]
then
  chmod 600 ./scripts/deploy/deploy_key_test
  ssh-add scripts/deploy/deploy_key_test
fi
