#!/bin/bash

# just for debug
#proj_root=~/Documents

#--------
# must read
#--------

# NEVER EVER DO sudo. NEVER!!!

# Dot not check for the existence of python packages. 
# Especially note that even though python 
# is pre-installed, we brew install it to the local!
# 
# Not only it comes with pip, this also allows additional 
# packages, such as virtualenv/ipython, installed in the 
# proper location. 

#--------
# brew install python
# this will also include pip
#--------
brew install python || { echo "ERROR. Failed installing python. Script Aborted."; exit 1; }

echo "Make sure that PATH is configured properly. For help, type brew doctor"

#--------
# basic
#--------
pip install virtualenv  

virtual_dir=$proj_root/py_virtualenv
[[ -d $virtual_dir ]] || mkdir $virtual_dir


#--------
# ipython
#--------
pip install ipython

#--------
# essential data modules inside virtualenv
#--------

cwd=$(pwd)
cd $virtual_dir || { echo "ERROR. cd failed. Script aborted"; exit 1; }
venv_d_e=venv_data_essential
virtualenv $venv_d_e
source $venv_d_e/bin/activate

is_venv=$(python -c "import sys; print(hasattr(sys, 'real_prefix'))")
[[ $is_venv = True ]] || { echo "ERROR. Not in venv. Script aborted"; exit 1; }

pip install numpy scipy matplotlib pandas pandasql
pip install requests

#pip freeze > requirements.txt
#pip install -r requirements.txt

deactivate
cd $cwd

