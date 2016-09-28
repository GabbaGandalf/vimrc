#!/bin/bash

color=0
force=0
while getopts mcf opt
do
	# echo "$opt"
	case $opt in
		c) 
			color=1
			echo "installing color scheme"
			;;
		f)	force=1
			echo "deleting old files"
			;;
		\?)
			echo >&2 \
				"usage: $0 [-c] [-f]"
			exit 1;;
	esac
done

#remove old files
if [ $force -eq 1 ]
then
	rm ~/.vimrc
	rm ~/.config/nvim/init.vim
	rm -r ~/.config/nvim/snippets
fi
#create symlinks
ln -s "$(pwd)/init.vim" ~/.vimrc
ln -s "$(pwd)/init.vim" ~/.config/nvim/init.vim
ln -s "$(pwd)/snippets" ~/.config/nvim/snippets

#Colorscheme
if [ $color -eq 1 ]
then
	if [ $force -eq 1 ]
	then
		rm -r ~/.vim/colors
		rm ~/.config/nvim/colors/noctu2.vim
	fi
	mkdir -p ~/.config/nvim/colors
	ln -s "$(pwd)/noctu2.vim" ~/.config/nvim/colors/noctu2.vim
	ln -s ~/.config/nvim/colors ~/.vim/colors
fi
