#!/bin/bash

for file in $(find ~/.dotfiles/ -type f ! -name "README.md" ! -name "install.sh" | grep -vE "\.git/"); do
	ln -vs $file ~
done
