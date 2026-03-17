# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$HOME/go/bin:/usr/local/go/bin:/opt/nvim/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

source /usr/share/git-core/contrib/completion/git-prompt.sh

# Color definitions
COLOR_RESET='\[\033[00m\]'
# 00 for normal; 01 for bold
COLOR_USER='\[\033[00;32m\]' # Green
COLOR_PATH='\[\033[00;34m\]' # Blue
COLOR_GIT='\[\033[00;33m\]'  # Yellow

# Set the prompt
PS1="${COLOR_USER}\u@\H${COLOR_RESET} ${COLOR_PATH}\w ${COLOR_GIT}"'$(__git_ps1 " <%s>")'"${COLOR_RESET}\n\$ "

# aliases
alias vim="nvim"
alias lg="lazygit"

# helpers
venv() {
  venv_dirs=(".venv" "venv")
  if [ -v VIRTUAL_ENV ]; then
    deactivate
  else
    for venv_dir in $venv_dirs; do
      if test -f "$venv_dir/bin/activate"; then
        source "$venv_dir/bin/activate"
      fi
    done
  fi
}

wrk() {
  SESSION="work"

  tmux has-session -t "$SESSION" 2>/dev/null && {
    tmux attach -t "$SESSION"
  }

  tmux new-session -d -s "$SESSION" -n code
  tmux new-window -t "$SESSION:2" -n random
  tmux new-window -t "$SESSION:3" -n cli

  tmux select-window -t "$SESSION:1"
  tmux attach -t "$SESSION"
}

ewrk() {
  SESSION="work"

  tmux has-session -t "$SESSION" 2>/dev/null && {
    tmux kill-session -t "$SESSION"
  }
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
. "$HOME/.cargo/env"
