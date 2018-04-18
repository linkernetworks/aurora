#!/bin/sh

version=v1.0

platform=unknown

if [ "$(uname)" == "Linux" ]; then
   platform=linux
elif [ "$(uname)" == "Darwin" ]; then
   platform=darwin
fi

file=aiforge-${version}-${platform}-amd64.tgz
download_url=https://github.com/linkernetworks/aiforge-release/releases/download/${version}/${file}

echo "Downloading $download_url ..."

curl -sSL $download_url -o $file

tar -xzf $file -C /usr/local/bin/

rm $file
