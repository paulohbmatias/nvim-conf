require "nvchad.autocmds"

-- Set cwd to directory argument if provided
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local first_arg = vim.fn.argv(0)
    if first_arg ~= "" and vim.fn.isdirectory(first_arg) == 1 then
      vim.cmd("cd " .. vim.fn.fnameescape(first_arg))
    end
  end,
})
