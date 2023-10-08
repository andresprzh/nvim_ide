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
## Plugin Manager
For the plugin manager I used [lazy.nvim](https://github.com/folke/lazy.nvim).

The plugins dependencies are in the file [lua/plugins/plugin.lua](lua/plugins/plugins.lua)

## Autocomplete 
For the automple I used LSP With Mason to handle the language servers


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

###  Extensions that I use for Coc

```Bash
:CocInstall coc-clangd  coc-cmake  coc-css  coc-docker  coc-explorer  coc-html  coc-json  coc-lua  coc-markdownlint  coc-marketplace  coc-phpls  coc-pyright  coc-snippets  coc-sql  coc-sqlfluff  coc-tsserver  coc-vetur  coc-vimlsp  coc-vimtex  coc-yaml  
```

---

## Console scripts

I add some console scripts in [**console-scripts**](console-scripts) to install
fonts and modify the shell using Oh My Posh 
