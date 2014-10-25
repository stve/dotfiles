#!/bin/sh

loc="/usr/local/bin/zsh"

if test ! -e "$loc"
then
  echo "  Installing zsh for you."
  brew install zsh > /tmp/zsh-install.log
fi

if ! grep $loc "/etc/shells"; then
  sudo echo "$loc" > /etc/shells
fi

chsh -s "$loc"
