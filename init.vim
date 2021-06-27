if has('win32') || has('win64')
  "---------------------Source--------------------
  source ~/AppData/Local/nvim/general/settings.vim

  "----------------Settings and Keys--------------
  source ~/AppData/Local/nvim/keys/mappings.vim

  "---------------------Plugins-------------------
  source ~/AppData/Local/nvim/plugins/plugins.vim
    "CoC config
    source ~/AppData/Local/nvim/modules/coc.vim
    "FzF config
    " source ~/AppData/Local/nvim/modules/fzf.vim
    "Rainbow
    source ~/AppData/Local/nvim/modules/rainbow.vim
    "Git integration
    source ~/AppData/Local/nvim/modules/signify.vim
    " NERD commenter
    source ~/AppData/Local/nvim/modules/nerdcommenter.vim
    " avoid closing window when buffer is close
    " source ~/AppData/Local/nvim/modules/buffdelete.vim
    " multiple cursor selector
    source ~/AppData/Local/nvim/modules/multipleselector.vim
    " sneak conf
    source ~/AppData/Local/nvim/modules/sneak.vim
    " Indent lines
    source ~/AppData/Local/nvim/modules/indentlines.vim
    " Simple fold
    source ~/AppData/Local/nvim/modules/simplyfold.vim
    " Telescope
    source ~/AppData/Local/nvim/modules/telescope.vim
 
  "---------------------Themes--------------------
  source ~/AppData/Local/nvim/themes/onedark.vim
  "source ~/AppData/Local/nvim/themes/nordvim.vim
  source ~/AppData/Local/nvim/themes/airline.vim

  "------------------Lua Modules------------------
  "Colorizer
  luafile ~/AppData/Local/nvim/lua/plug-colorizer.lua
endif

if has("unix") || has('wsl')
  
  "---------------------Source--------------------
  source ~/.config/nvim/general/settings.vim

  "----------------Settings and Keys--------------
  source ~/.config/nvim/keys/mappings.vim

  "---------------------Plugins-------------------
  source ~/.config/nvim/plugins/plugins.vim
    "CoC config
    source ~/.config/nvim/modules/coc.vim
    "FzF config
    " source ~/.config/nvim/modules/fzf.vim
    "Rainbow
    source ~/.config/nvim/modules/rainbow.vim
    "Git integration
    source ~/.config/nvim/modules/signify.vim
    " NERD commenter
    source ~/.config/nvim/modules/nerdcommenter.vim
    " avoid closing window when buffer is close
    " source ~/.config/nvim/modules/buffdelete.vim
    " multiple cursor selector
    source ~/.config/nvim/modules/multipleselector.vim
    " sneak conf
    source ~/.config/nvim/modules/sneak.vim
    " Indent lines
    source ~/.config/nvim/modules/indentlines.vim
    " Simple fold
    source ~/.config/nvim/modules/simplyfold.vim
    " Telescope
    source ~/.config/nvim/modules/telescope.vim
 
  "---------------------Themes--------------------
  source ~/.config/nvim/themes/onedark.vim
  " source ~/.config/nvim/themes/nordvim.vim
  source ~/.config/nvim/themes/airline.vim

  "------------------Lua Modules------------------
  "Colorizer
  luafile ~/.config/nvim/lua/plug-colorizer.lua

endif
