#!/bin/bash -x

git clone https://github.com/ChrisCindy/node-web-console.git
cd node-web-console

# instal dependencies 
npm install

## build and minify client side scripts and stylesheets
npm run client:build

# Browserslist: caniuse-lite is outdated. Please run next command `npm update caniuse-lite browserslist`
npm update caniuse-lite browserslist

## start the server with pm2 
npm run prod

ls /opt/render/.cache/_logs/*
cat /opt/render/.cache/_logs/*
