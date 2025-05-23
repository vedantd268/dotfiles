# NOTE: Starship integration
# eval "$(starship init zsh)"

# NOTE: Oh-my-posh integration
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

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

# NOTE: History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

# NOTE: Common alias
alias ls="eza --git --icons=always --group-directories-last"
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
alias btop='bpytop'

# NOTE: fzf
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git --exclude node_modules"
export FZF_TMUX_OPTS='-p 70%,60%'
export FZF_DEFAULT_OPTS='
  --height 50% --layout=reverse --border
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:-1,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
  --color=prompt:blue,spinner:#af5fff,pointer:#af5fff,header:#87afaf
  --color=border:gray,label:#aeaeae,query:#d9d9d9
  --border=rounded --preview-window=border-rounded --prompt="  "
  --marker="->" --pointer="⮞" --separator="─" --scrollbar="│"
  --layout=reverse --info=right
'

fzf_nvim_popup() {
  local file
  file=$(fzf-tmux ${FZF_TMUX_OPTS} --multi) || return
  [[ -n "$file" ]] && nvim $file
}

bindkey -s '^f' 'fzf_nvim_popup\n'

# NOTE: Zsh aliases
zshrc="~/.dotfiles/.zshrc"
alias zshconf="vi $zshrc"
alias reloadzsh="source $zshrc"

# NOTE: Shell integration
source <(fzf --zsh)
eval "$(zoxide init zsh)"

. "$HOME/.local/bin/env"

# Only start tmux if not already in it, and only for interactive shells
if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
     tmux new-session
fi
