-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*/playbooks/*.yml",
    "*/playbooks/roles/*/*/*.yml",
    "*/roles/*/*/*.yml",
    "*/tasks/*.yml",
    "*/defaults/*.yml",
    "*/host_vars/*.yml",
  },
  callback = function()
    vim.bo.filetype = "yaml.ansible"
  end,
})
