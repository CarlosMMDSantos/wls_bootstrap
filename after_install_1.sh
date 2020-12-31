sudo apt update && 
# Update the distro
sudo apt upgrade -y &&
sudo apt dist-upgrade -y &&

# Install dev goodies
sudo apt remove --purge openssh-server -y && 
sudo apt install -y openssh-server git zsh &&

curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&
sudo apt-get install -y nodejs && 

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"