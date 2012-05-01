# docfiles

A collection of my docfiles. Not a lot at the moment, but a start to
keep them in git. Below is a list and a small description of each:

* bash_profile - Sourced from bashrc
* bashrc - The main bash config that gets read on bashnisation (a.k.a bash
  initialisation)
* bashrc.local.example - This is a file to keep your local aliases. It's
  not shared.
* gemrc - For rubygems metadata
* gitconfig - git's config
* gitignore_global - global ignore
* gitk - Settings for gitk
* gvimrc.after - For config after Janus has been initialised.
* gvimrc.before - For config that Janus can use i.e. before it's
  initialised.
* hushlogin - Escapes running login on firing Terminal, and is faster.
* tmux.conf - Humble tmux config
* vimrc.after - For config after Janus has been initialised.
* vimrc.before - For config that Janus can use i.e. before it's
  initialised.
* zshrc - Humble zsh config
* bash/ - Collection of useful bash scripts



# Installation

## Dependencies

The installation depends upon the following things:

* HOME env variable
* [Janus Vim dustribution](https://github.com/carlhuda/janus)


## Install script

Just run the install script like:

  install.sh

This will create the symlinks for all the files in your $HOME
directory and copy the file bashrc.local.example to bashrc.local and
symlink that as well. bashrc.local is not checked-in and is for aliases
and other customisations. It's sourced in bashrc so anything that you
add in here will be available at bash prompt.


## Test Drive

If you want to test run, just do:

  install.sh test

This will create a test directory in your local checked out respository
and run through the process of symlinking scripts with the one in the
respository.

## Backup

If you're running it for the first time, then you will have the actual
dot files in your $HOME directory. The script will create a folder called 
backup in the cloned repository location and copy those files there 
before deleting and creating new symlinks in your HOME directory.

However, if all you have is symlinks then they will be updated with the
new ones.
