# vim_extended

1.git clone https://github.com/ShilinGuo520/vim_extended.git

2.sudo apt-get install vim vim-scripts vim-doc ctags cscope

3.mkdir -p ~/.vim/{plugin,doc}

3.cp taglist_45/doc/taglist.txt ~/.vim/doc/

4.cp taglist_45/plugin/taglist.vim ~/.vim/plugin/

5.cp ./nerdtree/plugin/NERD_tree.vim ~/.vim/plugin/

6.cp ./nerdtree/doc/NERD_tree.txt ~/.vim/doc/

7.cat vimrc >> ~/.vimrc

8.cp mark.vim ~/.vim/plugin/mark.vim


# cscope used:

-------------------------------------------------------------------

cscope -Rbq cscope.out

--------------------------------------------------------------------

find  .  -name "*.h" -o -name "*.cpp" -o -name "*.c" > cscope.file

cscope -bqk -i cscope.file

--------------------------------------------------------------------

# NERDTree used:

-------------------------------------------------------------

:NERDTree

-------------------------------------------------------------

Reference: 


http://www.cnblogs.com/joeyupdo/archive/2012/11/15/2771485.html

http://blog.csdn.net/x_r_su/article/details/52314883?locationNum=3



Add in 2017-01-16

