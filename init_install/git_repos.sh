CONTAINER_FOLER=$HOME/Downloads/git_repositories
VUNDLE_CONTAINER=$HOME/.vim/bundle/Vundle.vim
if [ -d $CONTAINER_FOLER ]; then
	mkdir -p $CONTAINER_FOLER
fi
if [ -d $VUNDLE_CONTAINER ]; then
	mkdir -p $VUNDLE_CONTAINER
fi
cd $CONTAINER_FOLER
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/farbfeld
git clone https://git.suckless.org/sent
git clone https://git.suckless.org/slock
git clone https://git.suckless.org/slstatus
git clone https://git.suckless.org/st
git clone https://github.com/vim/vim.git
git clone https://github.com/junegunn/fzf.git
git clone https://github.com/ranger/ranger.git

git clone https://github.com/betovidal/rcfiles.git
git clone https://github.com/betovidal/scripts.git

