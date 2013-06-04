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

# Install Homebrew on this system
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
# Install all the Homebrew kegs saved in $DIR/homewbrew/list.txt
cat $DIR/homebrew/list.txt | xargs brew install
