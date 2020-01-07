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
export GPG_TTY=$(tty)

# In order for gpg to find gpg-agent, gpg-agent must be running,
# and there must be an env variable pointing GPG to the gpg-agent socket.
# This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever),
# will either start gpg-agent or set up the
# GPG_AGENT_INFO variable if it's already running.

# Add the following
if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
