set fish_greeting ''
set -gx TERM xterm-256color

# nvm configs
set -gx NVM_DIR (brew --prefix nvm)

# aliases
alias ls 'ls -p -G'
alias la 'ls -A'
alias ll 'ls -l'
alias g git

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx NVM_DIR (brew --prefix nvm) # setup PATH for nvm 

# eza aliases
if type -q eza
    alias ll 'eza -l -g --icons'
    alias lla 'll -a'
end

# Amazon configs
if test -e ~/.config/fish/config-amazon.fish
    source ~/.config/fish/config-amazon.fish
end

# Added by `rbenv init` on Tue Aug 13 11:44:53 PDT 2024
status --is-interactive; and rbenv init - --no-rehash fish | source

# Starship prompt
starship init fish | source
