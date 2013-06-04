#!/bin/bash

# check the os type to make sure it is a mac, and exit if it isn't
if [[ $OSTYPE -ne "darwin11" ]]; then
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy all dotfiles into user's home dir
cp $DIR/.* $HOME/.

# Copy the .ssh directory into the user's home dir
cp -r $DIR/.ssh $HOME/.
