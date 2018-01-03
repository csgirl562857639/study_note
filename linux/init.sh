#!/bin/bash

yum install -y zsh autoconf automake libtool zlib zlib-devel &&
  wget https://github.com/git/git/archive/v2.15.1.tar.gz &&
  tar zxvf v2.15.1.tar.gz &&
  cd git-2.15.1 &&
  make configure &&
  ./configure --prefix=/usr &&
  make &&
  make install &&
  sh -c "$(curl -fsSL  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  &&
  echo 'PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"' >> ~/.zshrc  &&
  source ~/.zshrc &&
  cd .. &&
  wget https://github.com/wting/autojump/releases/tag/release-v22.5.1 &&
  tar zxvf release-v22.5.1 &&
  cd autojump-release-v22.5.1 &&
  ./install.py &&
  echo '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' >> ~/.zshrc &&
  source ~/.zshrc
