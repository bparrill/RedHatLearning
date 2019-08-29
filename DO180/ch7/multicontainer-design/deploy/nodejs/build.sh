#!/bin/bash
echo "Preparing build folder"
rm -fr build
mkdir -p build
cp -ap nodejs-source/* build
rm build/*.sh
#cp -p db.js build/models
chmod -R a+rwX build

# base image ONBUILD does npm install

# image build complains if he cannot read the database folder even if not needed for building the image
sudo rm -rf {linked,kubernetes}/work

sudo podman build --layers=false -t do180/todonodejs .
