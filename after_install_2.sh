sudo apt update && 

# Remove existing xrdp
sudo apt purge xrdp &&

# install xfce 
sudo apt install -y xfce4 xfce4-goodies &&

# install xrdp
sudo apt install -y xrdp &&
sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak &&
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini &&
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini &&
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini &&
echo xfce4-session > ~/.xsession &&

#enable dbus
sudo systemctl enable dbus &&
sudo /etc/init.d/dbus start &&
sudo /etc/init.d/xrdp start &&

# check xrdp status
sudo /etc/init.d/xrdp status && 

# Set DISPLAY env var for XLauncher
sudo echo >> ~/.zshrc &&
sudo echo "export DISPLAY=\"\`grep nameserver /etc/resolv.conf | sed 's/nameserver //'\`:0\"" >> ~/.zshrc &&
source ~/.zshrc