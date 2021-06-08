if has('win32') || has('win64')
  "---------------------Source--------------------
  source ~/AppData/Local/nvim/general/settings.vim
  "----------------Settings and Keys--------------
  source ~/AppData/Local/nvim/keys/mappings.vim
  "---------------------Plugins-------------------
  source ~/AppData/Local/nvim/plugins/plugins.vim
  "---------------------Themes--------------------
  source ~/AppData/Local/nvim/themes/onedark.vim
  "source ~/AppData/Local/nvim/themes/nordvim.vim
  source ~/AppData/Local/nvim/themes/airline.vim
  "------------------CoC config-------------------
  source ~/AppData/Local/nvim/modules/coc.vim
  "------------------FzF config-------------------
  source ~/AppData/Local/nvim/modules/fzf.vim
endif

if has("unix") || has('wsl')
  "---------------------Source--------------------
  source ~/.config/nvim/general/settings.vim
  "----------------Settings and Keys--------------
  source ~/.config/nvim/keys/mappings.vim
  "---------------------Plugins-------------------
  source ~/.config/nvim/plugins/plugins.vim
  "---------------------Themes--------------------
  source ~/.config/nvim/themes/onedark.vim
  "source ~/.config/nvim/themes/nordvim.vim
  source ~/.config/nvim/themes/airline.vim
  "------------------CoC config-------------------
  source ~/.config/nvim/modules/coc.vim
  "------------------FzF config-------------------
  source ~/.config/nvim/modules/fzf.vim
endif
