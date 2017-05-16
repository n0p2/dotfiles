#!/bin/bash

# NEVER EVER do SUDO. NEVER!!!

user=$(whoami)
export proj_root=/Users/$user/Documents

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export dot_root=$script_dir

/bin/bash 'install/brew_.sh'
/bin/bash 'install/bash_.sh'
/bin/bash 'install/terminal_.sh'
/bin/bash 'install/tmux_.sh'
/bin/bash 'install/vim_.sh'
/bin/bash 'install/python_.sh'
