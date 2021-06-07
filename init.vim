let NVIM_PATH =  expand('%:p:h')

if has('win32')
  "---------------------Source--------------------
  source ~/AppData/Local/nvim/general/settings.vim
  "----------------Settings and Keys--------------
  source ~/AppData/Local/nvim/keys/mappings.vim
  "---------------------Plugins-------------------
  source ~/AppData/Local/nvim/plugins/plugins.vim
endif

if has("Linux")
  "---------------------Source--------------------
  source ~/.config/nvim/general/settings.vim
  "----------------Settings and Keys--------------
  source ~/.config/nvim/keys/mappings.vim
  "---------------------Plugins-------------------
  source ~/.config/nvim/plugins/plugins.vim
endif
