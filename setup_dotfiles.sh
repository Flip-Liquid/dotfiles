DOTFILES=(`ls -a | grep "^\.[[:alpha:]]" | grep -v ^\.git$`)
DOTDIR=`pwd`
for f in ${DOTFILES[@]}
do
	echo "removing $f from home and linking to dotfiles"
	rm ~/$f
	ln -s $DOTDIR/$f ~/$f
done
