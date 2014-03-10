cd $HOME
sudo apt-get install -y git
sudo apt-get install -y curl
mkdir ~/bin
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod 755 ~/bin/lein
export PATH=$PATH:~/bin
git clone https://github.com/LightTable/LightTable.git
cd LightTable
bash linux_deps.sh
