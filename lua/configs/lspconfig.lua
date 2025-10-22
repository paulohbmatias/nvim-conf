require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"
local on_attach = nvlsp.on_attach
local capabilities = nvlsp.capabilities

-- Add code action mapping to the existing on_attach function
local on_attach_with_code_action = function(client, bufnr)
  -- Call the original on_attach function
  on_attach(client, bufnr)

  -- Add the code action mapping
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { 
    buffer = bufnr, 
    desc = "LSP code action",
    noremap = true,
    silent = true 
  })
end

local servers = { "html", "cssls", "gopls", "ts_ls", "svelte" }

for _, lsp in ipairs(servers) do
  vim.lsp.config[lsp] = vim.lsp.config[lsp] or {}
  vim.lsp.config[lsp].on_attach = on_attach_with_code_action
  vim.lsp.config[lsp].capabilities = capabilities
  vim.lsp.start(lsp)
end

-- read :h vim.lsp.config for changing options of lsp servers 
