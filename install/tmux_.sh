#!/bin/bash

#--------
# tmux conf link
#--------
dot_dir=$dot_root/tmux
ln -sv $dot_dir/_tmux.conf ~/.tmux.conf

#--------
# tmux plugin manager
#--------
plugin_dir=$proj_root/packages/tmux/plugins

[ -d $plugin_dir ] || mkdir -p $plugin_dir
git clone https://github.com/tmux-plugins/tpm $plugin_dir/tpm

#--------
# install with tpm other plugins as configured in .tmux.conf
#--------
$plugin_dir/tpm/bin/install_plugins

