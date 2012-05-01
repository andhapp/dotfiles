# Function that determines if to run rails or racksh or none
function shell_command() {
  if [ -e 'Gemfile' ]; then
    RAILS=`grep -r "'rails'" Gemfile`
    RACK=`grep -r "'racksh'" Gemfile`

    if [[ $RAILS != "" ]]; then
      echo "Loading rails..."
      `bundle exec rails c`
    elif [[ $RACK != "" ]]; then
      echo "Loading racksh..."
      `bundle exec racksh`
    else
      echo "Neither rails nor racksh found!"
    fi
  else
    echo "No Gemfile found!"
  fi
}
