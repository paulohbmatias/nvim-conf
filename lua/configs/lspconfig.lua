require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "ts_ls", "svelte" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  vim.lsp.enable(lsp)
end

-- read :h vim.lsp.config for changing options of lsp servers 
