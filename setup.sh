#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy all dotfiles into user's home dir
cp $DIR/.* $HOME/.

# Copy the .ssh directory into the user's home dir
cp -r $DIR/.ssh $HOME/.
