#!/bin/sh


if command -v fish &> /dev/null
then
    echo "setting fish as default terminal"
    chsh -s `which fish`
    exit
fi

if uname -v | grep ARM64

then 
    echo "adding paths and config for M1 Macs"
    fish_add_path /opt/homebrew/bin    
    cd ~/.config/fish/functions/
    rm fzf_key_bindings.fish
    ln -s /opt/homebrew/opt/fzf/shell/key-bindings.fish fzf_key_bindings.fish

fi 
