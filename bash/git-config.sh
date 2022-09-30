# git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

echo "A better git log :"
echo "git lg"
echo "=================================================="
echo "if you want to see the lines that changed :"
echo "git lg -p"

git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"