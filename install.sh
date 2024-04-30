#!/bin/bash

ln -vs $(find . -type f ! -name "README.md" ! -name "install.sh" | grep -vE "\.git/") ~
