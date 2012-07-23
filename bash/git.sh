function git_parse_branch() {
  if [[ -d ".git" && ! -L ".git" ]] ; then
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  fi
}

function git_commit_and_push() {
  gadd
  g c -am "$1"
  g ph
}
