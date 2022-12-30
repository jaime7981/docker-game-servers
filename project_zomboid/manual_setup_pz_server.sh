dpkg --add-architecture i386

apt-get update

sudo apt-get install lib32gcc1 -y
mkdir ~/Steam && cd ~/Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz

// if so error
// mkdir -p ~/.steam/sdk32/
// ln -s ~/Steam/linux32/steamclient.so ~/.steam/sdk32/steamclient.so



useradd -m "pzuser"
usermod -aG sudo "pzuser"

mkdir /pzs/pzserver
chown pzuser:pzuser /pzs/pzserver

su - pzuser
