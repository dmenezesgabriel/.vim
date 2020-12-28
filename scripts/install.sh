# Install vim
sudo apt install vim
# CLone configs
git clone git@github.com:dmenezesgabriel/.vim.git ~/.vim
# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins
vim +'PluginInstall' +qa
touch ~/.vimrc && \
# Set symlink
ln -s ~/.vim/vimrc ~/.vimrc