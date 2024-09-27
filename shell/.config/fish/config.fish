set -x GOPATH $HOME/.go
set -x PATH $HOME/.local/bin $GOPATH/bin $HOME/.cargo/bin $PATH

fish_vi_key_bindings
fish_config theme choose "rosepine"

bind -M insert \cn nextd-or-forward-word
bind -M insert \cN nextd-or-forward-word
bind -M insert \cy accept-autosuggestion

function v
    nvim $argv
end

function nf
    neofetch
end

function l
    eza -alBg $argv
end
