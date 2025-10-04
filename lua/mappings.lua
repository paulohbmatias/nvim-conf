require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit Neovim" })
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
