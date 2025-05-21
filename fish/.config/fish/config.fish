# remove initial welcome message
set -g fish_greeting ""
set -g theme_display_date no

# keyboard
xset r rate 220 40
xset -dpms # disable power saving
xset s off # disable screensaver
setxkbmap -layout no -option nodeadkeys

set HISTSIZE 1000
set SAVEHIST

set PATH = "$HOME/.npm-global/bin" $PATH
set PATH = "$HOME/bin" $PATH
set PATH = "$HOME/sshtunnel" $PATH
set PATH = "$HOME/.local/share/JetBrains/Toolbox/scripts" $PATH
export PATH=":$PATH"

#set GOROOT = "/usr/local/go"
#set GOPATH = "$HOME/go"
set NPM_CONFIG_PREFIX "$HOME/.npm-global"

 # In order to make modules available to the Node.js REPL, it might be useful to
 # also add the /usr/lib/node_modules folder to the $NODE_PATH environment
 # variable. Since the module lookups using node_modules folders are all
 # relative, and based on the real path of the files making the calls to
 # require(), the packages themselves can be anywhere.
export NODE_PATH="$HOME/.npm-global/lib/node_modules"

# environment
set HISTFILE "$HOME/.history"
set CFG      "$HOME/.config"

# alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias l="eza --icons=always -la"
alias ls="eza --icons=always"
alias c="clear"
alias gd="git diff"
alias gs="git status"
alias gc="git commit"
alias sail="./vendor/bin/sail"
#alias k="kubectl"
#alias kctx="kubectl-ctx"
#alias kns="kubectl-ns"
alias kubectl="mk kubectl --"

# includes
for file in $HOME/.config/fish/includes/*.fish
  source $file
end

# Colors
set -g fish_color_autosuggestion 555 yellow
set -g fish_color_command 5f87d7
set -g fish_color_comment 808080
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_error 870000 --bold
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_host 5f87af
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_param 5f87af
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user 5f875f
set -g fish_color_valid_path --underline
set -g fish_color_cancel
set -g fish_color_end 009900
set -g fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack

# Pager
set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555 yellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan

# Less highlight
set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -gx LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -gx LESS_TERMCAP_me \e'[0m'           # end mode
set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -gx LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline
