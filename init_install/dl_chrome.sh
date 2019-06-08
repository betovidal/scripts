$DL_FOLDER=$HOME/Downloads
if [ ! -d $DL_FOLDER ]; then
	mkdir -p $DL_FOLDER
fi
cd $DL_FOLDER
curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
