Ichiro101's VIMRC File
----------------------

To use this, you will need to clone this to your .vim folder by

	git clone git://github.com/ichiro101/vimrc.git ~/.vim

You will then need to get all the submodules. In your .vim folder, do

	git submodule update --init

In your .vimrc file, simply add

	source ~/.vim/vimrc


On Windows Systems you may need to add
  set runtimepath+=C:\Users\Some User\.vim

  set iminsert=0
  set imsearch=0

as well your _vimrc file. This is needed to work with vimfiles folder that resides outside of the
default vim installation folder in Windows. As well we don't want to go into IME mode by default
whenever we go into insert mode.
