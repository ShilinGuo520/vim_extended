#!/bin/bash


sudo apt-get install vim vim-scripts vim-doc ctags cscope
mkdir -p ~/.vim/{plugin,doc}
cp taglist_45/doc/taglist.txt ~/.vim/doc/
cp taglist_45/plugin/taglist.vim ~/.vim/plugin/
cp ./nerdtree/plugin/NERD_tree.vim ~/.vim/plugin/
cp ./nerdtree/doc/NERD_tree.txt ~/.vim/doc/
cat vimrc >> ~/.vimrc
cp mark.vim ~/.vim/plugin/mark.vim

echo "Done......."
