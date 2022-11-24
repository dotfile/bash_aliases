#!/bin/bash

set -euxo pipefail

init_script=~/.config/bash_aliases/bash_aliases.sh
symlink_file=~/.bash_aliases
timestamp=$(date +%s)

if [[ -e $symlink_file ]]; then 
  echo "Copying existing bash aliases symlink..."
  cp $symlink_file "${symlink_file}.${timestamp}.backup"
fi

echo "Installing bash aliases via symlink..."
ln -sf $init_script $symlink_file

echo "Bash aliases installed."

