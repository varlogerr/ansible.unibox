#/bin/sh

sudo apt install --reinstall -y gnupg2 dirmngr

echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' \
   | tee /etc/apt/sources.list.d/ansible.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update
apt install -y --allow-unauthenticated ansible

rm -f /etc/apt/sources.list.d/ansible.list
apt autoremove -y
