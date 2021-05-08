sudo apt-get update
sudo apt-get updrade

echo 'installing curl' 
sudo apt install curl -y

echo 'installing git' 
sudo apt install git -y

echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"Murilo Victor\""
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear 

echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"murilovictor63@gmail.com\""
read git_config_user_email
git config --global user.email $git_config_user_email
clear

echo "Can I set VIM as your default GIT editor for you? (y/n)"
read git_core_editor_to_vim
if echo "$git_core_editor_to_vim" | grep -iq "^y" ;then
	git config --global core.editor vim
else
	echo "Okay, no problem. :) Let's move on!"
fi

echo 'installing vim'
sudo apt install vim -y

echo 'installing code'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y # or code-insiders

echo 'installing extensions'
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula

echo 'installing spotify' 
snap install spotify

echo 'installing chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo 'Installing nodejs'
sudo apt install nodejs -y
node --version

echo 'Installing npm'
sudo apt install npm -y
npm --version

echo 'Installing Angular CLI'
sudo npm install -g @angular/cli -y
ng --version

echo 'Installing Maven'
udo apt install maven -y
mvn --version

echo 'installing slack' 
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
sudo apt install ./slack-desktop-*.deb -y

echo 'installing terminator'
sudo apt-get update
sudo apt-get install terminator -y

echo 'installing docker' 
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

chmod 777 /var/run/docker.sock

echo 'installing docker-compose' 
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo 'installing dbeaver'
wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb
sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
sudo apt-get install -f
