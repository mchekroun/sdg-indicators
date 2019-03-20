#!/bin/bash

# The names of the variables below will change when you rekey
openssl aes-256-cbc\
    -K $encrypted_6a5f295aa62e_key \
    -iv $encrypted_6a5f295aa62e_iv \
    -in keys.tar.enc -out keys.tar -d

tar xvf keys.tar -C scripts/deploy/
rm keys.tar keys.tar.enc
chmod 600 ./scripts/deploy/deploy_key*
