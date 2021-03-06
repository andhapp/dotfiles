# This file is used for interactive shells except Mac Terminal.app

. ~/.bash/git.sh
. ~/.bash/shell_command.sh
. ~/.bash/util.sh

export PS1="\[\033[32m\]\w\[\033[33m\]\$(current_git_branch)\$ \[\033[0m\]"
export PATH=$PATH:/opt/local/bin:/usr/local/mysql/bin:/usr/local/pgsql/bin:/usr/local/Cellar/openssl/0.9.8r/lib:/usr/local/Cellar/openssl/0.9.8r/include:$HOME/.rvm/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info
export ARCHFLAGS="-arch i386 -arch x86_64"
export RUBY_GC_MALLOC_LIMIT=90000000
export RUBY_GC_HEAP_FREE_SLOTS=200000
export DOCKER_HOST=tcp://192.168.59.103:2375

alias shell=shell_command
alias tmux="TERM=screen-256color-bce tmux"

#. "`brew --prefix grc`/etc/grc.bashrc"
. ~/.bashrc.local

if [ -f $(brew --prefix)/etc/bash_completion ]; then
      . $(brew --prefix)/etc/bash_completion
fi

export NVM_DIR="/Users/andhapp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
