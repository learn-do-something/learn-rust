#! /bash/bin

curl -sS https://starship.rs/install.sh | sh

echo 'eval "$(starship init zsh)"' >> $HOME/.zshrc
source $HOME/.zshrc