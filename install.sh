#!/bin/sh

version=v1.0

platform='unknown'

if [[ $(uname) == 'Linux' ]]; then
   platform='linux'
elif [[ $(uname) == 'Darwin' ]]; then
   platform='darwin'
fi

file=aiforge-${version}-${platform}-amd64.tgz
download_url=https://github.com/linkernetworks/aiforge-release/releases/download/${version}/${file}

echo $file $download_url

curl -o $file -sSL $download_url

tar -xzvf $file -C /usr/local/bin/

rm $file
