#!/bin/bash
# author heihaier
# date 2018-01-03
# init aliyun ecs of centos enviroment

main() {
  yum install -y zsh git &&
    sh -c "$(curl -fsSL  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&
    echo 'PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"' >> ~/.zshrc &&
    source ~/.zshrc &&
    cd .. &&
    wget https://github.com/wting/autojump/archive/release-v22.5.1.tar.gz &&
    tar zxvf release-v22.5.1.tar.gz &&
    cd autojump-release-v22.5.1 &&
    ./install.py &&
    echo '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' >> ~/.zshrc &&
    source ~/.zshrc &&
    echo 'finish!!!'
}

main
