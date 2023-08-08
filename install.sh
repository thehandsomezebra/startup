sudo apt update
sudo apt install git vim zsh apt-transport-https curl software-properties-common -y -qq

## vs code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y -qq
code --version


## zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/master/tools/install.sh -o -)"
sudo chsh -s $(which zsh) $(whoami)

## brave browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt install brave-browser -y -qq


echo "You should restart the machine so that zsh works nice."


