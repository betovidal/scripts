CONTAINER_FOLER=$HOME/Downloads/git_repositories
VUNDLE_CONTAINER=$HOME/.vim/bundle/Vundle.vim
if [ ! -d $CONTAINER_FOLER ]; then
	mkdir -p $CONTAINER_FOLER
fi
if [ ! -d $VUNDLE_CONTAINER ]; then
	mkdir -p $VUNDLE_CONTAINER
fi
cd $CONTAINER_FOLER
git clone https://git.suckless.org/dmenu $CONTAINER_FOLER/dmenu
git clone https://git.suckless.org/dwm $CONTAINER_FOLER/dwm
git clone https://git.suckless.org/farbfeld $CONTAINER_FOLER/farbfeld
git clone https://git.suckless.org/sent $CONTAINER_FOLER/sent
git clone https://git.suckless.org/slock $CONTAINER_FOLER/slock
git clone https://git.suckless.org/slstatus $CONTAINER_FOLER/slstatus
git clone https://git.suckless.org/st $CONTAINER_FOLER/st
git clone https://github.com/vim/vim.git $CONTAINER_FOLER/vim
git clone https://github.com/junegunn/fzf.git $CONTAINER_FOLER/fzf
git clone https://github.com/ranger/ranger.git $CONTAINER_FOLER/ranger

git clone https://github.com/betovidal/rcfiles.git $CONTAINER_FOLER/rcfiles
git clone https://github.com/betovidal/scripts.git $CONTAINER_FOLER/scripts

git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_CONTAINER
