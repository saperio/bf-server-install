#!/bin/bash

# add user
adduser --disabled-password --gecos '' $1
adduser $1 sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers