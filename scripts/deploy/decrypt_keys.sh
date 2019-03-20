#!/bin/bash

# The names of the variables below will change when you rekey
openssl aes-256-cbc\
    -K $encrypted_6a5f295aa62e_key \
    -iv $encrypted_6a5f295aa62e_iv \
    -in keys.tar.enc -out keys.tar -d

tar xvf keys.tar -C scripts/deploy/
chmod 600 ./scripts/deploy/deploy_key*

# Aggressively go after the keys wherever they may be
find . -name "keys.tar" -delete
find . -name "keys.tar.enc" -delete
