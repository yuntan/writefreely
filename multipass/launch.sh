#!/bin/bash
set -eu

name=build-writefreely
multipass launch --name $name --mem 4G 16.04
multipass copy-files $(dirname $0)/build.sh $name:
multipass exec $name -- bash build.sh
multipass copy-files $name:$(multipass exec $name -- find writefreely -maxdepth 1 | grep .tar.gz | tr -d '\r') .
multipass stop $name
multipass delete $name
