#!/bin/sh

files=`find ~/dotfiles -name ".*" | grep -v ".git$"`
for f in ${files[*]}; do
	ln -sf ${f} ~/
done
