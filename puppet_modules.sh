#!/bin/sh

puppet module list | grep willdurand-nodejs || puppet module install willdurand-nodejs

puppet module list | grep tmalup-rbenv || puppet module install alup-rbenv

puppet module list | grep shift-tmux || puppet module install shift-tmux