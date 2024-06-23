#
# ~/.bashrc
#

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=200

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# aliases.
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias gpt='tgpt --interactive'
alias build='python setup.py sdist bdist_wheel'
alias paclean='pacman -Qtdq | sudo pacman -Rns -'
alias update='git add . && git commit -m "update" && git push'

# enable programmable completion features.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=/home/g3nsy/.local/bin:$PATH
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'

eval "$(starship init bash)"
