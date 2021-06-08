Invoke-RestMethod -Uri 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip' -OutFile fonts.zip
Expand-Archive 'fonts.zip' fonts
Move-Item 'fonts\*' 'C:\Windows\Fonts'
del fonts
del fonts.zip
