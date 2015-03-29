#!/bin/sh

files=`find ~/dotfiles -name ".*"`
for f in ${files[*]}; do
	ln -sf ${f} ~/
done
