sudo apt update
sudo apt install git vim zsh install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
code --version


sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/master/tools/install.sh -o -)"
sudo chsh -s $(which zsh) $(whoami)

echo "You should restart the machine so that zsh works nice."

