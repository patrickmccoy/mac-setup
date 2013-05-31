mac-setup
=========

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
