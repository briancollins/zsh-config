[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7/bin/:$PATH
export CLASSPATH=/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

export EDITOR=vim
export VMAIL_VIM=mvim

alias love="/Applications/love.app/Contents/MacOS/love"

# misc
alias m.="mvim ."
alias gs="git status"
alias gc="git checkout"
alias gpom="git pull origin master"
alias gm="git merge"
alias apinfo='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias mate='mvim'

autoload -U colors
colors

# clean prompt
PS1='%c%% '

# pretty git log output 
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %f %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# autocomplete
autoload -Uz compinit
compinit

# vim key bindings
bindkey -e

setopt incappendhistory prompt_subst

# history saving
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt append_history
setopt inc_append_history
setopt extended_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt no_hist_beep
setopt hist_save_no_dups

function socks_on() {
  ssh -D 1080 -Nf -S ~/.ssh/proxy.ctl brisy.info proxy 
  sudo networksetup -setsocksfirewallproxy AirPort 127.0.0.1 1080 off
}

function socks_off() {
  ssh -S ~/.ssh/proxy.ctl -O exit proxy
  sudo networksetup -setsocksfirewallproxystate AirPort off
}

