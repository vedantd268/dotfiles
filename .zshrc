# HACK: Vim mode enable
bindkey -v

# HACK: Starship integration
# eval "$(starship init zsh)"

# HACK: Oh-my-posh integration
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

# HACK: Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# HACK: Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# HACK: Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# HACK: Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# HACK: Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux

# HACK: Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'
zstyle ':completion:*:messages' format '%F{blue}%d%f'
zstyle ':completion:*:warnings' format '%F{red}%d%f'
zstyle ':completion:*' group-name ''

# HACK: History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

# HACK: Common alias
alias ls="eza --git --icons=always --group-directories-last"
alias la='ls -A'
alias laf='la -f --show-symlinks'
alias ll='ls -l'
alias lla='ll -a'
alias lt='ls -T -L=1'
alias lt2='ls -T -L=2'
alias lt3='ls -T -L=3'
alias lt4='ls -T -L=4'

alias nv='nvim'
alias btop='bpytop'

# HACK: fzf default options
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git --exclude node_modules"
export FZF_TMUX_OPTS='-p 80%,60%'
export FZF_DEFAULT_OPTS='
  --height 50% --layout=reverse --border
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:-1,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
  --color=prompt:blue,spinner:#af5fff,pointer:#af5fff,header:#87afaf
  --color=border:gray,label:#aeaeae,query:#d9d9d9
  --border=rounded --prompt="  "
  --marker="->" --pointer="⮞" --separator="─" --scrollbar="│"
  --info=right
'

fzf_nvim_popup() {
  local files
  files=("${(@f)$(fzf-tmux ${FZF_TMUX_OPTS} --multi)}") || return
  [[ -n $files ]] && nvim "${files[@]}"
}
bindkey -s '^f' 'fzf_nvim_popup\n'

# HACK: Zsh aliases
zshrc="~/.dotfiles/.zshrc"
alias zshconf="nv $zshrc"
alias reloadzsh="source $zshrc"

# HACK: Shell integration
source <(fzf --zsh)
eval "$(zoxide init zsh)"

. "$HOME/.local/bin/env"
