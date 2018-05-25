#!/bin/bash

branch=develop

platform=unknown

installdir=/usr/local/bin

if [ "$(uname)" == "Linux" ]; then
   platform=linux
elif [ "$(uname)" == "Darwin" ]; then
   platform=darwin
fi

file=aurora-${platform}-amd64.tgz
download_url=https://storage.googleapis.com/aurora-releases/branch/$branch/$file

echo "Downloading $download_url ..."

if [ -x "$(command -v curl)" ]; then
    curl -sSL $download_url -o $file
elif [ -x "$(command -v wget)" ]; then
    wget $download_url -O $file
fi

tar -xzf $file -C $installdir/

rm $file

echo "Installed to ${installdir}/aurora, type 'aurora --help' to start"
