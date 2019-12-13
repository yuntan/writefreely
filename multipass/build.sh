#!/bin/bash
set -eu

export PATH=$PATH:/snap/bin:~/.local/bin:~/go/bin

echo "==> install deps"
sudo snap install go --channel=1.12/stable --classic
sudo snap install node --channel=12/stable --classic

node.yarn config set prefix ~/.local
node.yarn global add less less-plugin-clean-css # install lessc

sudo apt update
sudo apt install -y build-essential sqlite3

cd writefreely

echo "==> build"
go get github.com/jteeuwen/go-bindata/go-bindata
GO111MODULE=on make ui build
mv cmd/writefreely/writefreely .

echo "==> compress"
fname=writefreely-$(git describe --tags)-linux-x86_64.tar.gz
tar -cf $fname writefreely pages static templates

echo "==> generated $fname"
