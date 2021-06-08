# Neo Vim IDE

## Install Neo vim

### Windows

Install the package manager [chocolatey](https://chocolatey.org/install)

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Install neovim using choco (install the last available version)

```
chocho install neovim --pre
```

### Ubuntu

Install neovim using apt
```
sudo apt install neovim
```
---
## Install repository

### Clone the repository:

```
git clone git@github.com:andresprzh/nvim_ide.git
```
Save the repository depending of the OS in:
* Windows -> User/\<username\>/AppData/Local
* Linux -> ~/.config/


### Install [vim-plug](https://github.com/junegunn/vim-plug)

Windows
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```
Unix
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Unix,Linux
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install plugins

Inside Neo vim paste the following command:
```
:PlugInstall
```
---
## Other options

### Install xsel on ubuntu to solve copy/paste problems in linux
```
sudo apt install xsel
```

### Install python support
```
pip install pynvim
```

---
## Console scripts
I add some console scripts to windows to install fonts and modify the shell
