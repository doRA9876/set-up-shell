#!/bin/bash

create_symlink () {
  if [ -e $1 ] || [ -d $1 ]; then
    ln -i -s $1
    echo "created a symbolic link to $1"
  fi
}

CONFIG_DIR=

BASHRC=${CONFIG_DIR}/bash/.bashrc
BASH_DIR=${CONFIG_DIR}/bash/.bash

# vimrcはvimディレクトリの中に格納
VIM_DIR=${CONFIG_DIR}/vim/.vim

TMUX_CONF=${CONFIG_DIR}/others/.tmux.conf
GITCONFIG=${CONFIG_DIR}/others/.gitconfig

cd ~/

if [ -d ${CONFIG_DIR} ]; then
  create_symlink ${BASHRC} 
  create_symlink ${BASH_DIR} 
  create_symlink ${VIM_DIR} 
  create_symlink ${TMUX_CONF}
  create_symlink ${GITCONFIG}
fi





