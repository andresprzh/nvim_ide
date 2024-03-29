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

---
## Plugin Manager
For the plugin manager I used [lazy.nvim](https://github.com/folke/lazy.nvim).

The plugins dependencies are in the file [lua/plugins/plugin.lua](lua/plugins/plugins.lua)

---

## Autocomplete 
For the automple I used LSP with [Mason](https://github.com/williamboman/mason.nvim) to handle the language servers

---

## install Ripgrep

To use the grep fuzzy finder in telescope it require the instalatin of ripgrep

### Windows

```PowerShell
choco install ripgrep
```

### Ubuntu

```Bash
sudo apt install ripgrep
```

---

## Final configurations

### Install xsel on ubuntu to solve copy/paste problems in linux

```Bash
sudo apt install xsel
```

---
## Console scripts

I add some console scripts in [**console-scripts**](console-scripts) to install
fonts and modify the shell using Oh My Posh 
