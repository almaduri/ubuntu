autoload -Uz promptinit
promptinit
prompt adam1

#setopt histignorealldups sharehistory
#setopt SHARE_HISTORY

setopt appendhistory
setopt INC_APPEND_HISTORY

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Oh My Posh
eval "$(oh-my-posh --init --shell zsh --config ~/maduri.omp.json)"

# Aliases
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../../"ls
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias c="clear"
alias co="code ."
alias cwd="pwd | clip"
alias ga="git add ."
alias gc="git commit -m"
alias gl="git log"
alias gp="git push"
alias gs="git status"

# Lds Aliases
alias ls="lsd --color=always"
alias l="ls -l"
alias la="ls -a"
alias ll="ls -la"
alias lt="ls --tree"

# Show only hidden files
lh() {
  ls -ld .?*
}

# Open directory using file explorer
function ex() {
  if [ $# -eq 0 ]
  then
    explorer.exe .
  else
    explorer.exe "$1"
  fi
}

# Keybindings
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^U' backward-kill-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh