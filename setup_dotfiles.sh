#!/bin/bash
DOTFILES=(`ls -a | grep "^\.[[:alpha:]]" | grep -v ^\.git$`)
DOTDIR=`pwd`
VUNDLEREPO="https://github.com/VundleVim/Vundle.vim.git"
VUNDLELOCATION="~/.vim/bundle/Vundle.vim"
eval VUNDLELOCATION="$VUNDLELOCATION"

for f in ${DOTFILES[@]}
do
	echo "removing $f from home and linking to dotfiles"
	rm -f ~/$f
	ln -s $DOTDIR/$f ~/$f
done

if [ ! -d $VUNDLELOCATION ]; then
	mkdir -p $VUNDLELOCATION
	git clone $VUNDLEREPO $VUNDLELOCATION
fi
