#!/bin/bash

minimal=0
color=0
while getopts mc opt
do
	# echo "$opt"
	case $opt in
		m)
			minimal=1
			echo "installing minimal setup"
			;;
		c) 
			color=1;;

		\?)
			echo >&2 \
				"usage: $0 [-m] [-c]"
			exit 1;;
	esac
done


#vimrc
mkdir -p ~/.config/nvim
ln -s "$(pwd)/init.vim" ~/.vimrc
ln -s "$(pwd)/init.vim" ~/.config/nvim/init.vim


#Colorscheme
if [ $color -eq 1 ]
then
	echo "installing noctu2 colorscheme"
	mkdir -p ~/.vim/colors
	mkdir -p ~/.config/nvim/colors
	ln -s "$(pwd)/noctu2.vim" ~/.vim/colors/noctu2.vim
	ln -s "$(pwd)/noctu2.vim" ~/.config/nvim/colors/noctu2.vim
fi

#install plugin manager for nvim
if [ $minimal -eq 0 ] 
then
	echo "installing dein plugin manager"
	sh dein.sh ~/.config/nvim/dein
fi

