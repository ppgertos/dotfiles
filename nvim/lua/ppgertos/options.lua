vim.o.number = true
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.numberwidth = 1
-- vim.o.nofoldenable = true
vim.o.mouse = ''
vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 0
vim.o.smartindent = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.colorcolumn = '+1'

vim.o.foldlevel=20
vim.o.foldmethod='expr'
vim.o.foldexpr='nvim_treesitter#foldexpr()'

vim.o.scrollback=100000
vim.g.termdebug_config = {command = {'gdb'}, wide = 1}
