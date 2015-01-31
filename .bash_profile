# ALASES

# path aliases
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

. ~/.git_aliases

export EDITOR=vim

export PATH=$HOME/local/bin:$PATH

source ~/.basecamp_aliases

alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias mtr='sudo /usr/local/sbin/mtr'

function mycd () {
  cd "$@"
  git config --get user.name && git config --get user.email
}
alias cd='mycd'

#git aliases
alias gits='git status'
alias gib='git branch'
alias work='git workname && git workemail'
alias github='git hubname && git hubemail'

#test alias
alias rb_test='ruby -I lib:test'

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
alias ack='ack --color-filename="red bold" --color-match="yellow bold" --color-lineno=white'
eval "$(rbenv init -)"
eval "$($HOME/.37/bin/37 init -)"
