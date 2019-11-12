#!/bin/bash
set -eu

echo "==> install deps"
sudo snap install go --channel=1.12/stable --classic
sudo snap install node --channel=12/stable --classic
sudo apt install -y build-essential sqlite3

echo "==> clone"
git clone --branch yuntan --depth 1 https://github.com/yuntan/writefreely.git
cd writefreely

echo "==> build"
export PATH=$PATH:/snap/bin:~/go/bin
go get github.com/jteeuwen/go-bindata/go-bindata
GO111MODULE=on make ui build
mv cmd/writefreely/writefreely .

echo "==> compress"
fname=writefreely-$(git describe --tags)-linux-x86_64.tar.gz
tar -cf $fname writefreely pages static templates

echo "==> generated $fname"
