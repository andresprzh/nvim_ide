# Neo Vim IDE

## Install Neo vim

### Windows

Install the package manager [chocolatey](https://chocolatey.org/install)

```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Install neovim using choco (install the last available version)

```PowerShell
choco install neovim --pre
```

### Ubuntu

Install neovim using apt

```Bash
sudo apt install neovim
```

---

## Install repository

Clone the repository:

```Bash
git clone git@github.com:andresprzh/nvim_ide.git
```

Save the repository depending of the OS in:

* Windows -> User/\<username\>/AppData/Local/
* Linux -> ~/.config/

Change the name of the forlder from nvim_ide to nvim

## PlugIns

### Install [vim-plug](https://github.com/junegunn/vim-plug)

Windows

```PowerShell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

Unix

```Bash 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Unix,Linux

```Bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install plugins

Inside Neo vim paste the following command:

```Vim
:PlugInstall
```

## Install Coc
For Coc in python we require 2 packages 

```Bash
pip install pynvim
pip install jedi
pip install jedi-language-server
```

## install fzf

### fzf for Windows

```PowerShell
choco install fzf
choco install ripgrep
choco install universal-ctags
choco install ag
choco install fd
```

Afeter install fzf.vim the preview could not work in windows, to solve this
problem use `dos2unox` to convert the sh file inside fzf.vim

```PowerShell
dos2unix $HOME/.vim/plugged/fzf.vim/bin/preview.sh
dos2unix $HOME/.vim/plugged/fzf.vim/bin/tagpreview.sh
```

### fzf for Ubuntu

```Bash
sudo apt install fzf
sudo apt install ripgrep
sudo apt install universal-ctags
sudo apt install silversearcher-ag
sudo apt install fd-find
```

---

## Other options

### Install xsel on ubuntu to solve copy/paste problems in linux

```Bash
sudo apt install xsel
```

### Install python support

```Bash
pip install pynvim
```
To use syntax checher in python install jed

```Bash
pip install jedi
```

Extensions that I use for Coc

```Bash
:CocInstall coc-clangd  coc-cmake  coc-css  coc-docker  coc-explorer  coc-html  coc-json  coc-lua  coc-markdownlint  coc-marketplace  coc-phpls  coc-pyright  coc-snippets  coc-sql  coc-sqlfluff  coc-tsserver  coc-vetur  coc-vimlsp  coc-vimtex  coc-yaml  
```

---

## Console scripts

I add some console scripts in [**console-scripts**](console-scripts) to install
fonts and modify the shell
