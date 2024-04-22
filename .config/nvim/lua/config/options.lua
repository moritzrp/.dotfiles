vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set signcolumn=no")
vim.g.mapleader = " "
vim.opt.showmode = false
vim.cmd('autocmd BufNewFile,BufRead ~/.ssh/conf.d/* setfiletype sshconfig')
