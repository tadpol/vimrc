My vimrc.

# Install

## Linux and MacOS

	git clone git://github.com/tadpol/vimrc.git ~/.vim
	cd ~/.vim
	git submodule init
	git submodule update
	cd ~
	ln -s ~/.vim/vimrc ~/.vimrc

## Windows

	cd $HOME
	git clone git://github.com/tadpol/vimrc.git vimfiles
	cd vimfiles
	git submodule init
	git submodule update
	cd $HOME
	mklink vimfiles/vimrc _vimrc

Probably will need to switch to a cmd shell to get `mklink`.

