echo
echo 'cd $HOME'
cd $HOME
echo sudo apt-get install -y git
sudo apt-get install -y git
echo sudo apt-get install -y curl
sudo apt-get install -y curl
echo sudo apt-get install -y openjdk-7-jdk
sudo apt-get install -y openjdk-7-jdk
echo mkdir "~/bin"
mkdir ~/bin
echo . .profile (run .profile to add new bin directory to path)
. .profile
echo wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
echo "chmod 755 ~/bin/lein"
chmod 755 ~/bin/lein
echo git clone https://github.com/LightTable/LightTable.git
git clone https://github.com/LightTable/LightTable.git
echo cd LightTable
cd LightTable
echo bash linux_deps.sh
bash linux_deps.sh
