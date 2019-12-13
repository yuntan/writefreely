#!/bin/bash
set -eu

name=build-writefreely
multipass launch --name $name --mem 4G 16.04
multipass mount . $name:writefreely
multipass exec $name -- bash writefreely/multipass/build.sh
multipass stop $name
multipass delete $name
