function git_parse_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function git_commit_and_push() {
  gadd
  g c -am "$1"
  g ph
}
