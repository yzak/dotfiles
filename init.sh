#!/bin/sh

files=`find ~/dotfiles -name ".*" | grep -v ".git$"`
for f in ${files[*]}; do
	ln -sf ${f} ~/
done

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
gitclone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
curr=`pwd`
cd ~/.vim/bundle/vimproc/
make
cd $curr


