#!/bin/sh

files=`find ~/dotfiles -name ".*" | grep -v ".git$"`
for f in ${files[@]}; do
	ln -sf ${f} ~/
done

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
curr=`pwd`
cd ~/.vim/bundle/vimproc/
if type make >/dev/null 2>&1; then
	echo "use make";
else
	apt-cyg install make
	apt-cyg install gcc-core
fi
make
cd $curr


