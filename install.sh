#!/bin/bash

version=v1.0.4

platform=unknown

bindir=/usr/local/bin

if [ "$(uname)" == "Linux" ]; then
   platform=linux
elif [ "$(uname)" == "Darwin" ]; then
   platform=darwin
fi

file=aiforge-${version}-${platform}-amd64.tgz
download_url=https://github.com/linkernetworks/aurora/releases/download/${version}/${file}

echo "Downloading $download_url ..."

if [ -x "$(command -v curl)" ]; then
    curl -sSL $download_url -o $file
elif [ -x "$(command -v wget)" ]; then
    wget $download_url -O $file
fi

tar -xzf $file -C $bindir/

rm $file

echo "Installed to ${bindir}/aurora, type 'aurora --help' to start"
