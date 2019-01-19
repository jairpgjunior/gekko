#!/bin/bash
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo apt-get install git
git clone https://github.com/jairpgjunior/gekko.git -b stable
cd gekko
npm install --only=production
npm install talib
npm install tulind
cd util/genMarketFiles
node update-binance.js
cd ~
cd gekko
cd exchange
npm install --only=production
cd ~
sudo apt-get install nginx
cd gekko
node gekko --ui