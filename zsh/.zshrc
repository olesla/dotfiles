# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/.local/bin:$HOME/.local/share/umake/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export NODE_PATH="$HOME/.local/lib/node_modules"

ZSH_THEME="af-magic"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

source $ZSH/oh-my-zsh.sh

#------------
# General
#------------

# Keep 1000 lines of history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$HOME/.zsh_history"

#------------
# Keyboard
#------------

# map caps lock to escape
setxkbmap -option caps:escape

# key repeat rate
xset r rate 220 40

#------------
# Aliases
#------------
alias lh="ls -alh"
alias c="clear"
alias gs="git status"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
