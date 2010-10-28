export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7/bin/:$PATH

export EDITOR=vim

# misc
alias m.="mvim ."
alias gs="git status"
alias gc="git checkout"
alias gpom="git pull origin master"
alias gm="git merge"
alias apinfo='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

autoload -U colors
colors

# clean prompt
PS1='%c%% '

# pretty git log output 
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %f %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# autocomplete
autoload -Uz compinit
compinit

# emacs key bindings
bindkey -e

setopt incappendhistory prompt_subst

# rvm
if [[ -s /Users/brian/.rvm/scripts/rvm ]] ; then source /Users/brian/.rvm/scripts/rvm ; fi

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

