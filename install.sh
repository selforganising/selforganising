echo
echo 'Change to home directory: cd $HOME'
cd $HOME
echo 'Install git: sudo apt-get install -y git' 
sudo apt-get install -y git
echo 'Install curl: sudo apt-get install -y curl'
sudo apt-get install -y curl
echo 'Install chromium: sudo apt-get install -y chromium-browser'
sudo apt-get install -y chromium-browser
echo 'Install java: sudo apt-get install -y openjdk-7-jdk'
sudo apt-get install -y openjdk-7-jdk
echo 'Add a bin directory: mkdir ~/bin'
mkdir ~/bin
echo 'Re-run .profile to add new bin directory to path: . ~/.profile'
. ~/.profile
echo 'Download leiningen: wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein'
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
echo 'Make ~/bin/lein executable: chmod 755 ~/bin/lein'
chmod 755 ~/bin/lein
echo 'Clone LightTable: git clone https://github.com/LightTable/LightTable.git'
git clone https://github.com/LightTable/LightTable.git
echo 'cd LightTable'
cd LightTable
echo 'Run the LightTable setup script: bash linux_deps.sh'
bash linux_deps.sh
echo 'Install myunity: sudo apt-get install -y myunity' 
sudo apt-get install -y myunity
echo 'myunity installed, just so we can easily change themes and other stuff.




