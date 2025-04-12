# NOTE: starship integration
eval "$(starship init zsh)"

# NOTE: Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# NOTE: Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# NOTE: Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# NOTE: Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# NOTE: Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux

# NOTE: Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'
zstyle ':completion:*:messages' format '%F{blue}%d%f'
zstyle ':completion:*:warnings' format '%F{red}%d%f'
zstyle ':completion:*' group-name ''

# NOTE: history
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

# NOTE: common alias
alias ls="eza --git --icons=always --group-directories-last "
alias la='ls -A'
alias laf='la -f --show-symlinks'
alias ll='ls -l'
alias lla='ll -a'
alias lt='ls -T -L=1'
alias lt2='ls -T -L=2'
alias lt3='ls -T -L=3'
alias lt4='ls -T -L=4'

alias vim='nvim'
alias vi='nvim'
alias inv='vim $(fzf -m --preview="bat --color=always {}")'

alias btop='bpytop'

# NOTE: zsh aliases
alias zshconf='vim ~/.zshrc'
alias reloadzsh='source ~/.zshrc'

# NOTE: shell integration
source <(fzf --zsh)
eval "$(zoxide init zsh)"
