
sudo pacman -S npm imagemagick
sudo npm install nativefier -g
mkdir '~/.local/share/cstimer'
if [$(uname -m) = x86_64]
then
	nativefier 'https://cstimer.net' "${HOME}/.local/share/cstimer" --name 'csTimer'
	echo exec ${HOME}/.local/share/cstimer/csTimer-linux-x64/csTimer > /usr/bin/cstimer
	chmod +x /usr/bin/cstimer
	printf "[Desktop Entry]\nType=Application\nVersion=1.0\nName=csTimer\nComment=csTimer for Linux x86_64\nPath=${HOME}/.local/share/cstimer/csTimer-linux-x64\nExec=electron .\nCategories=Games;" > ${HOME}/.local/share/applications/csTimer.desktop
else
	printf "check back on script soon! im sorry i didnt had time to do other architectures than x86_64\n"
fi
