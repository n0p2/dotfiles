#!/bin/bash


#--------
# conf link
#--------
proj_dir=$dot_root/vim

#ln -sv $proj_dir/_vimrc ~
ln -sv $proj_dir/_vimrc ~/.vimrc


#--------
# vim plugin manager, bundle
#--------
plugin_dir=$proj_root/packages/vim/bundle

[ -d $plugin_dir ] || mkdir -p $plugin_dir
git clone https://github.com/VundleVim/Vundle.vim.git $plugin_dir/Vundle.vim


#--------
# install with vundle other plugins
# must be configured in .vimrc
#--------

vim +PluginInstall +qall
