#!/bin/bash

# copy .bashrc if it does not exists, nvm use it
if [ ! -f $HOME/.bashrc ]; then
    cp ./.bashrc $HOME/.bashrc
fi

# install nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
source $HOME/.nvm/nvm.sh

# install node
NODE_VER=v0.10.36

nvm install $NODE_VER
nvm use $NODE_VER
nvm alias default $NODE_VER