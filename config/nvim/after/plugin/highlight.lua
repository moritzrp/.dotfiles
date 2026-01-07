vim.o.termguicolors = true
-- namespaces -> imports
vim.api.nvim_set_hl(0, "@namespace", { fg = "#ffa657" })
-- builtin classes (e.g. Exceptions)
vim.api.nvim_set_hl(0, "@lsp.typemod.class.builtin.python", { link = "@type" })
-- classes
vim.api.nvim_set_hl(0, "@lsp.type.class.python", { link = "@type" })
-- parameter
vim.api.nvim_set_hl(0, "@lsp.typemod.parameter.parameter.python", { link = "@variable.parameter.python" })
vim.api.nvim_set_hl(0, "@variable.parameter.python", { fg = "#ffa657" })
-- operators
vim.api.nvim_set_hl(0, "Operator", { fg = "#ff7b71" })
