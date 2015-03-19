# Bash Completion
for f in /usr/local/etc/bash_completion.d/*; do source $f; done
for f in ~/.bash_profile_*; do source $f; done

## Change the prompt

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"
DayTime="\D{%a} \t"

#export PS1="[\D{%a} \t \w] -> "
export PS1="["$IWhite$DayTime$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$Red'"$(__git_ps1 " {%s}"); \
  fi) '$Yellow$PathShort$Color_Off'] -> "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off'] -> "; \
fi)'

export PATH=~/bin:$PATH

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
export AWS_ACCESS_KEY="AKIAJGJ5NBCE357TYEIQ"
export AWS_SECRET_KEY=""
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.1.0/libexec"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

# Python Path
export PYTHONPATH=$PYTHONPATH:/Users/pmccoy/code/solidfire/aiq-python-sdk/:/Users/pmccoy/code/solidfire/sf-python-sdk/

# Homebrew
source `brew --repository`/Library/Contributions/brew_bash_completion.sh

# PHP 5.5 from Homebrew
export PATH="$(brew --prefix php55)/bin:$PATH"

# SSH Bash Completion
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

#virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=/Users/pmccoy/.virtualenvs
export PROJECT_HOME=/Users/pmccoy/code

# docker
export DOCKER_HOST=tcp://127.0.0.1:4243

# SBT
export SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled"

# LaTeX
export PATH="$PATH:/usr/texbin"

# Archey
archey -c

