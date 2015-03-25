#!/usr/bin/env bash
#
#
# pulls useful repos

cd $HOME
git clone git@github.com:tjbearse/bin.git
cd 'bin'
git submodule init
git submodule update
