#!/bin/bash
DOWNLOAD_DIR=

read -sp "Password: " password

echo "${password}" | sudo -S apt remove --purge vim vim-runtime vim-common

echo "${password}" | sudo -S rm -rf /usr/local/share/vim
echo "${password}" | sudo -S rm -f /usr/local/bin/vim

echo "${password}" | sudo -S apt -y update
echo "${password}" | sudo -S apt -y upgrade

echo "${password}" | sudo -S apt install -y build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev

cd ${DOWNLOAD_DIR}
echo "${password}" | sudo -S git clone https://github.com/vim/vim
cd vim

echo "${password}" | sudo -S ./configure --with-features=huge --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic

echo "${password}" | sudo -S make
echo "${password}" | sudo -S make install
