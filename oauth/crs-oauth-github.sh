#!/bin/bash

# Setup the Environment variables for the REST Server

#Set up the REST server to multi user mode    true | false
#export COMPOSER_MULTIUSER=true

#1. Set up the card to be used
export COMPOSER_CARD=admin@pupshipping

#2. Set up the REST server Authhentcation    true | false
export COMPOSER_AUTHENTICATION=true

#4. Set up the Passport strategy provider
export COMPOSER_PROVIDERS='{
  "github": {
    "provider": "github",
    "module": "passport-github2",
    "clientID": "328d2c23139a9a28982e",
    "clientSecret": "d7e1e9c2fb06675315454b129da15161b4c17e97",
    "authPath": "/auth/github",
    "callbackURL": "/auth/github/callback",
    "successRedirect": "/",
    "failureRedirect": "/"
  }
}'

#5. Execute the REST server
composer-rest-server
