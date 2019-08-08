#!/bin/sh

# Install Less via npm
if [ ! -e "$(which lessc)" ]; then
	# sudo npm install -g less
	# sudo npm install -g less-plugin-clean-css
	npm install -g less
	npm install -g less-plugin-clean-css
else
    echo LESS $(npm view less version 2>&1 | grep -v WARN) is installed
fi
