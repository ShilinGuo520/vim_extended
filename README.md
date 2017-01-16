# vim_extended


sudo apt-get install vim vim-scripts vim-doc ctags cscope


# cscope used:

cscope -Rbq cscope.out
--------------------------------------------------------------------

find  .  -name "*.h" -o -name "*.cpp" -o -name "*.c" > cscope.file

cscope -bqk -i cscope.file

--------------------------------------------------------------------


Reference: 


http://www.cnblogs.com/joeyupdo/archive/2012/11/15/2771485.html

http://blog.csdn.net/x_r_su/article/details/52314883?locationNum=3



Add in 2017-01-16

