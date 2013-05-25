function current_git_branch {
  if [[ -d ".git" && ! -L ".git" ]]; then
    branch=`git rev-parse --abbrev-ref HEAD`
    if [[ $branch != "" ]]; then
      echo "($branch)"
    fi
  fi
}

function git_commit_and_push {
  gadd
  g c -am "$1"
  g ph
}

function git_history {
  git log $filename | grep "Date: "
}

function number_of_commits {
  git_history | wc -l
}

function git_repository_usage {
  for filename in $(find app test lib -iname "*.rb"); do
    echo "$filename `number_of_commits`" | xargs echo
  done
}

function first_commit {
  git_history | tail -1
}

function last_commit {
  git_history | head -1
}
