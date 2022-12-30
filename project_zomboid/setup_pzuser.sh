useradd -m -s /bin/bash pzuser
echo pzuser:pzuser@7981 | chpasswd
usermod -aG sudo pzuser

mkdir /pzs/pzserver
chown pzuser:pzuser /pzs/pzserver
