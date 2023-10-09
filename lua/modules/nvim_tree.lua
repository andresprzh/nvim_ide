-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  -- on_attach = my_on_attach,
  on_attach = function(bufnr)
    -- help for api :help nvim-tree.api
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Default mappings are in :help nvim-tree-mappings-default
    -- custom mappings
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    -- Expand
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<S-l>', api.tree.expand_all, opts('Open'))
    -- Collapse
    vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
    vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
    vim.keymap.set('n', '<S-h>', api.tree.collapse_all, opts('Collapse'))
    -- Close explorer
    vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
    vim.keymap.set('n', '<space>e', api.tree.close, opts('Close'))
    -- Delete file
    vim.keymap.set('n', '<S-d>', api.fs.remove, opts('Trash'))
    -- Create to create folder end the name with '/'
    vim.keymap.set('n', 'f', api.fs.create, opts('Create'))
    -- Rename
    vim.keymap.set('n', 'r', api.fs.rename_basename, opts('Rename: Basename'))
    vim.keymap.set('n', '<C-r>', api.fs.rename, opts('Rename'))
    -- Bookmark
    vim.keymap.set('n', '<C-m>', api.marks.toggle, opts('Toggle Bookmark'))
    -- Previou
    vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Open Preview'))
    -- File info
    vim.keymap.set('n', '<C-k>', api.node.show_info_popup, opts('Info'))
    -- Copy filenames
    vim.keymap.set('n', 'yp', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
    vim.keymap.set('n', 'yn', api.fs.copy.filename, opts('Copy Name'))
    vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
    -- Copy file
    vim.keymap.set('n', 'yy', api.fs.copy.node, opts('Copy'))
    -- Cut File
    vim.keymap.set('n', 'dd', api.fs.cut, opts('Cut'))
    -- Paste file
    vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
    -- Show  only git modified files
    vim.keymap.set('n', '<C-g>', api.tree.toggle_git_clean_filter, opts('Toggle Filter: Git Clean'))
    -- Reload Tree
    vim.keymap.set('n', '<F5>', api.tree.reload, opts('Refresh'))
    -- Go parent directory
    vim.keymap.set('n', 'K', api.node.navigate.parent, opts('Parent Directory'))
    -- Go last sibling
    vim.keymap.set('n', 'J', api.node.navigate.sibling.last, opts('Last Sibling'))
    -- Show or hide gitignore files
    vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Filter: Git Ignore'))
    -- Open file in the last window
    vim.keymap.set('n', 'O', api.node.open.no_window_picker, opts('Open: No Window Picker'))
    -- Search file
    vim.keymap.set('n', 's', api.tree.search_node, opts('Search'))
    -- navigate sibbling files
    vim.keymap.set('n', '>', api.node.navigate.sibling.next, opts('Next Sibling'))
    vim.keymap.set('n', '<', api.node.navigate.sibling.prev, opts('Previous Sibling'))


    -- default mappings
    -- vim.keymap.set('n', 'bd', api.marks.bulk.delete, opts('Delete Bookmarked'))
    -- vim.keymap.set('n', 'bt', api.marks.bulk.trash, opts('Trash Bookmarked'))
    -- vim.keymap.set('n', 'bmv', api.marks.bulk.move, opts('Move Bookmarked'))
    -- vim.keymap.set('n', '[c', api.node.navigate.git.prev, opts('Prev Git'))
    -- vim.keymap.set('n', ']c', api.node.navigate.git.next, opts('Next Git'))
    -- vim.keymap.set('n', 'D', api.fs.trash, opts('Trash'))
    -- vim.keymap.set('n', ']e', api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
    -- vim.keymap.set('n', '[e', api.node.navigate.diagnostics.prev, opts('Prev Diagnostic'))
    -- vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
    -- vim.keymap.set('n', 'U', api.tree.toggle_custom_filter, opts('Toggle Filter: Hidden'))
    -- vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
  end,

})
