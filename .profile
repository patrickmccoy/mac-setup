# Change the prompt
export PS1="[\t \w] -> "


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# NODE_PATH environmental variable
NODE_PATH=/usr/local/lib/node_modules


# EC2 API Tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/homebrew/Library/LinkedKegs/ec2-api-tools/jars"

export PATH="/usr/local/share/python:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

#virtualenvwrapper
source /usr/local/share/python/virtualenvwrapper.sh
export WORKON_HOME=/Users/pmccoy/.virtualenvs
export PROJECT_HOME=/Users/pmccoy/code

# Homebrew
source `brew --repository`/Library/Contributions/brew_bash_completion.sh
