#!/bin/bash

ln -vs ~/.dotfiles/$(find . -type f ! -name "README.md" ! -name "install.sh" | grep -vE "\.git/") ~
