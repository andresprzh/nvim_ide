curl -s https://ohmyposh.dev/install.sh | sudo bash -s
# Download themes
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip
echo 'eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/negligible.omp.json)"' >> ~/.bashrc
source ~/.bashrc
