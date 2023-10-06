-- Auto-install lazy.nvim if not exists
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable eelease
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-----------------------Source--------------------
require("general.settings")

------------------Settings and Keys--------------
require("keys.mappings")

---------------------Plugins-------------------
require("lazy").setup("plugins") -- See plugins from any lua file that is in the folder lua/plugins/*.lua

--CoC config
require("modules.coc")
--Rainbow
require("modules.rainbow")
--Git integration
require("modules.signify")
-- NERD commenter
require("modules.nerdcommenter")
-- multiple cursor selector
require("modules.multipleselector")
-- sneak conf
require("modules.sneak")
-- Indent lines
require("modules.indentlines")
-- Simple fold
require("modules.simplyfold")
-- Telescope
require("modules.telescope")
-- Startify
require("modules.startscreen")

-----------------------Themes--------------------
require('themes.onedark')
require('themes.airline')

--------------------Lua Modules------------------
--Colorizer
require("modules.plug-colorizer")

