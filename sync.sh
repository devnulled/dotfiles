cd ~/dotfiles
git pull
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" -ev . ~
#source ~/.zshrc

