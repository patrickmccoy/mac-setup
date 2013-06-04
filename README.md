mac-setup
=========

# Automated Install
Just run the following command to copy all the dotfiles, install the ssh config,
and install Homebrew

    ./setup.sh

# Manual Install
Follow these steps to install stuff manually

## Homebrew
Install using the following command

    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

Install the saved kegs in the homebrew/list.txt file using this command

    cat homebrew/list.txt | xargs brew install

Save the list of installed kegs to this repository

    brew list > homebrew/list.txt

## Python
 - Install Python 2.7 using homebrew
 - Install pip packages in the pip.txt file using the following command

    pip install -r pip.txt

### Virtualenv
Should be installed with the `pip` command above.  Configuration for
virtualenvwrapper is set in the .profile
