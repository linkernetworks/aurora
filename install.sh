#!/bin/bash

version=v1.0

platform=unknown

bindir=/usr/local/bin/

if [ "$(uname)" == "Linux" ]; then
   platform=linux
elif [ "$(uname)" == "Darwin" ]; then
   platform=darwin
fi

file=aiforge-${version}-${platform}-amd64.tgz
download_url=https://github.com/linkernetworks/aiforge/releases/download/${version}/${file}

echo "Downloading $download_url ..."

curl -sSL $download_url -o $file

tar -xzf $file -C $bindir

rm $file

echo "Installed to $bindir/aiforge, type 'aiforge --help' to start"
