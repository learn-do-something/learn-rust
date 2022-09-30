#! /bash/bin
pwd
echo $HOME

# Download powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Download zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Download zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Download zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# Download zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

sed  -i '1i exec zsh' $HOME/.bashrc
echo 'alias ll="ls -al"' >> $HOME/.bashrc
echo 'alias gs="git status"' >> $HOME/.bashrc
echo 'alias ga="git add"' >> $HOME/.bashrc
echo 'alias gm="git commit -m"' >> $HOME/.bashrc
echo 'alias gp="git push"' >> $HOME/.bashrc

# cp .bashrc $HOME/.bashrc
cp .devcontainer/.p10k.zsh $HOME/.p10k.zsh
cp .devcontainer/.zshrc $HOME/.zshrc

# source $HOME/.bashrc
