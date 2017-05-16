#!/bin/bash

#--------
# brew 
#--------
which -s brew
if [[ $? != 0 ]]; then
  echo "brew install..."
  #/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "brew update..."
  #brew update
  #brew update && brew upgrade
fi

# todo, or update
brew install git
brew install tmux


