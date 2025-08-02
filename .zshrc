# zshrc config

# enable colors, git support, and change prompt
setopt prompt_subst

autoload -Uz vcs_info
autoload -U colors && colors

zstyle ':vcs_info:git*' formats " %F{blue}%b%f %m%u%c %a "
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr ' %F{green}✚%f'
zstyle ':vcs_info:*' unstagedstr ' %F{red}●%f'

precmd() {
    vcs_info
    print -P '%B%{$fg[cyan]%}%~%b%{$reset_color%} ${vcs_info_msg_0_}'
}
PROMPT='❯ '

# history in cache dir
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)         # include hidden files

# vi mode
bindkey -v
export KEYTIMEOUT=1

# edit line with vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey "^e" edit-command-line

# load zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

