#!/bin/sh
set -e

# Backup old
# Backup old .vimrc just in case.
if [ -f "~/.vim" ]; then
    mv ~/.vim ~/.vim_old
fi

cd ~/.vim_runtime

# Create new Vimrc
echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
    source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

# Create .vim directory if it doesn't exist. Copy configs such as colors.
mkdir -p ~/.vim
cp -r ~/.vim_runtime/my_plugins/* ~/.vim

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
