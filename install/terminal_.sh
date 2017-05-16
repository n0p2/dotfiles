#!/bin/bash

cwd=$(pwd)
proj_dir=$proj_root/packages/terminal/

#--------
# color scheme
#--------
color_dir=$proj_dir/gits/color
[ -d $color_dir ] || mkdir -p $color_dir
cd $color_dir

git clone https://github.com/lysyi3m/osx-terminal-themes.git
open ./osx-terminal-themes/schemes/Dracula.terminal

cd $cwd
