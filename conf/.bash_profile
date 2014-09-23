# works ok to use bash_profile for os x and bash_profile for ubuntu
# set architecture flag
export ARCHFLAGS="-arch x86_64"
# ensure user-installed binaries take precedence
# dupe
# export PATH=/usr/local/bin:$PATH
# loads .bashrc & .bash_alias if we got em
test -f ~/.bashrc && source ~/.bashrc
test -f ~/.bash_aliases && source ~/.bash_aliases
# for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
# getting virtualenvwrapper to work with Python 2.7 in mac os x
# setting /user/bin/python to my homebrew version
# or not. setting up colors in terminal:
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
