wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip
unzip 3270.zip
sudo mv 3270/*  ~/.fonts
sudo fc-cache -fv
sudo rm -r 3270
sudo rm 3270.zip
