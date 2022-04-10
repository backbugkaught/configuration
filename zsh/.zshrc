fpath=(~/.config/zsh/zsh "${fpath[@]}")
autoload -U compinit
autoload -Uk zsh_initialize_history
autoload -Uk zsh_initialize_bindkey
autoload -Uk zsh_initialize_menuselect
autoload -Uk zsh_initialize_ls_colors
autoload -Uk zsh_initialize_rust
autoload -Uk zsh_initialize_go
autoload -Uk zsh_initialize_odin
autoload -Uk zsh_initialize_nim
autoload -Uk zsh_initialize_fzf
autoload -Uk zsh_initialize_git
autoload -Uk zsh_initialize_autojump
autoload -Uk prompt_set_prefix
autoload -Uk prompt_set_cwd
autoload -Uk prompt_set_suffix
autoload -Uk zsh_define_alias

setopt autocd
setopt chase_dots
setopt prompt_subst
setopt interactive_comments

set -o emacs
compinit -d "$ZSH_CACHE/zcompdump"

zsh_initialize_history
zsh_initialize_bindkey
zsh_initialize_menuselect
zsh_initialize_ls_colors
zsh_initialize_rust
zsh_initialize_go
zsh_initialize_odin
zsh_initialize_nim
zsh_initialize_fzf
zsh_initialize_git
zsh_initialize_autojump
zsh_define_alias

PROMPT="%F{green}$(prompt_set_cwd)"
PROMPT="${PROMPT}%B%F{grey}>%b %F{grey}"
