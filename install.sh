#!/bin/bash

stow() {
	/usr/bin/stow -n -t /
}

find -maxdepth 1 -type d -printf '%f\n' | grep -v '^\.' | xargs /usr/bin/stow -t /
