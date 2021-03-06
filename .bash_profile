# ALASES

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

alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias mtr='sudo /usr/local/sbin/mtr'

#git aliases
alias gits='git status'
alias gib='git branch'
alias work='git workname && git workemail'
alias github='git hubname && git hubemail'

#test alias
alias rb_test='bundle exec ruby -I lib:test'

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
alias ack='ack --color-filename="red bold" --color-match="yellow bold" --color-lineno=white'
eval "$(rbenv init -)"
export PATH="/usr/local/sbin:$PATH"
export DISABLE_SPRING=1

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

export GPG_TTY=$(tty)
