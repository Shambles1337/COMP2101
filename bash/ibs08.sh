#!/bin/bash

#################
# Description

#updatescript
#This is a script used to test what kind of linux you're using and update it automatically.

###############

cd /etc #change directory to ensure we're working in the right place.

## Test if the local host is Arch-based
if [ -d /etc/pacman.d ] #/etc/pacman is a directory that only Arch-based systems have.
then
  ##run the arch version of the update command
  sudo pacman -Syu
fi

## Test if the local host is Debian-based
if [ -d /etc/apt ] #/etc/apt is a directory that only debian based systems like ubuntu have.
then
  ##Run the Debian version of the update command.
  sudo apt-get update && sudo apt-get dist-upgrade
fi
