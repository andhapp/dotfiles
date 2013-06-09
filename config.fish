function fish_prompt
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color yellow
  echo (current_git_branch)
  set_color normal
  echo -n ' > '
end

function current_git_branch
  if test -d .git;
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  end
end

function fish_title;end
function fish_greeting;end

if status --is-interactive;
  . $HOME/.config/fish/config.fish.local
end
