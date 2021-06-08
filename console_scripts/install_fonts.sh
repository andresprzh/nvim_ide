mkdir fonts
wget -cO - https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip > fonts.zip
unzip -d fonts fonts.zip
mkdir ~/.fonts
mv fonts/*  ~/.fonts
rm -r fonts
rm fonts.zip
fc-cache -fv
