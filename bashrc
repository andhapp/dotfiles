# This file is used for interactive shells except Mac Terminal.app

. ~/.bash/git.sh
. ~/.bash/shell_command.sh

export PS1="\[\033[32m\]\w\[\033[33m\]\$(git_parse_branch)\$ \[\033[0m\]"
export PATH=$PATH:/opt/local/bin:/usr/local/mysql/bin:/usr/local/pgsql/bin:/usr/local/Cellar/openssl/0.9.8r/lib:/usr/local/Cellar/openssl/0.9.8r/include:$HOME/.rvm/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info
export ARCHFLAGS="-arch i386 -arch x86_64"

alias shell=shell_command
alias tmux="TERM=screen-256color-bce tmux"

. "`brew --prefix grc`/etc/grc.bashrc"
. ~/.bashrc.local
