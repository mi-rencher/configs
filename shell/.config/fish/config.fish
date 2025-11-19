# Allow configuration that's specific to a machine to be put in ~/.local.fish
[ -f ~/.local.fish ] && source ~/.local.fish

set fish_greeting ""

set -x FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border'

set -x VISUAL nvim
set -x EDITOR nvim

fish_vi_key_bindings

if command -q -v eza
    abbr -a ls eza
    abbr -a ll 'eza -l'
    abbr -a la 'eza -a'
    abbr -a lla 'eza -la'
    abbr -a lst 'eza --tree'
else
    abbr -a ls ls
    abbr -a ll 'ls -l'
    abbr -a la 'ls -a'
    abbr -a lla 'ls -la'
end

abbr -a tmls 'tmux list-sessions'
abbr -a tmks 'tmux kill-session -t'
abbr -a tmksv 'tmux kill-server'
abbr -a tmn 'tmux new -s'
