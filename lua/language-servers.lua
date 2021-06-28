-- local function setup_servers()
--   require'lspinstall'.setup()
--   local servers = require'lspinstall'.installed_servers()
--   for _, server in pairs(servers) do
--     require'lspconfig'[server].setup{}
--   end
-- end
--
-- setup_servers()
--
-- -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require'lspinstall'.post_install_hook = function ()
--   setup_servers() -- reload installed servers
--   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
-- end
--
require'lspconfig'.jedi_language_server.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.cmake.setup{}
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.dockerls.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.vuels.setup{}
-- require'lspconfig'.jsonls.setup {
--     commands = {
--       Format = {
--         function()
--           vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
--         end
--       }
--     }
-- }



