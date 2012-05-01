# Function to test if a value is in array or not
in_array() {
  for elem in "${@:2}"; do
    if [[ $elem == $1 ]]; then
      return 0
    fi
  done
  return 1
}

create_symlink() {
  `ln -s $1 $2`
}

mkdir_if_unexist() {
  if [ ! -e $1 ]; then `mkdir $1`; fi
}

update_symlink() {
  if [ -L $2 ]; then
    `rm $2`
  fi
  create_symlink $1 $2
}
