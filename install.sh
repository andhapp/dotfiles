#!/bin/bash

source $PWD/bash/util.sh

if [ "$1" == "test" ]; then
  destination="$PWD/test"
  mkdir_if_unexist $destination
else
  destination="$HOME"
fi

backup=$PWD/backup
mkdir_if_unexist $backup

# list of files not to be symlinked
excluded_files=("README.md" "bashrc.local.example" "install.sh" "test" "backup")

# Copy bashrc.local.example to bashrc.local if none exists
if [ ! -e $PWD/bashrc.local ]; then `cp bashrc.local.example bashrc.local`; fi

for file in $PWD/*
do
  basename=`basename "$file"`

  if ! in_array $basename "${excluded_files[@]}"; then

    new_file=$destination/.$basename

    if [ -L $new_file ]; then
      `rm $new_file`
    else
      if [ -e $new_file ]; then `mv $new_file $PWD/backup/`; fi
    fi
    create_symlink $file $new_file
  fi
done

update_symlink $destination/.vim/janus/vim/gvimrc $destination/.gvimrc
update_symlink $destination/.vim/janus/vim/vimrc $destination/.vimrc
update_symlink $destination/.vim-plugins $destination/.janus
