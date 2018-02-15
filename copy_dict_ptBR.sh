#!/bin/sh
set -e

VIMRUNTIME=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `
sudo cp ~/.vim_runtime/pt.utf-8.spl $VIMRUNTIME/spell

