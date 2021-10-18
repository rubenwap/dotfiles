#!/bin/sh
# Install python packages
if  command -v pip3 >/dev/null 2>&1; then
    echo "Installing python packages"
    pip3 install -r $HOME/packages/requirements.txt
fi

