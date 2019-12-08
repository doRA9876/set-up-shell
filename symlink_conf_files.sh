#!/bin/bash

create_symlink () {
  if [ -e $1 ] || [ -d $1 ]; then
    ln -s $1
    echo "created a symbolic link to $1"
  fi
}

CONFIG_DIR=

BASHRC=${CONFIG_DIR}/bash/.bashrc
BASH_PROFILE=${CONFIG_DIR}/bash/.bash_profile

VIMRC=${CONFIG_DIR}/vim/.vimrc
VIM_DIR=${CONFIG_DIR}/vim/.vim

TMUX_CONF=${CONFIG_DIR}/others/.tmux.conf
GITCONFIG=${CONFIG_DIR}/others/.gitconfig

cd ~/

if [ -d ${CONFIG_DIR} ]; then
  create_symlink ${BASHRC} 
  create_symlink ${BASH_PROFILE} 
  create_symlink ${VIMRC} 
  create_symlink ${VIM_DIR} 
  create_symlink ${TMUX_CONF}
  create_symlink ${GITCONFIG}
fi





