vim.g.mapleader=' '

vim.keymap.set({'n', 'v'}, '<F4>', '<cmd> bp | bd# <CR>', {desc = 'close buffer'})
vim.keymap.set({'n', 'v'}, '-', '<cmd> ex %:h <CR>', {desc = 'open containing folder'})
vim.keymap.set({'n', 'v'}, '<F17>', vim.cmd.Run, {desc = 'Debug Run'})
vim.keymap.set({'n', 'v'}, '<S-F5>', vim.cmd.Run, {desc = 'Debug Run'})
vim.keymap.set({'n', 'v'}, '<C-F5>', vim.cmd.Stop, {desc = 'Debug Stop'})
vim.keymap.set({'n', 'v'}, '<F5>', vim.cmd.Continue, {desc = 'Debug Continue'})
vim.keymap.set({'n', 'v'}, '<F6>', vim.cmd.Over, {desc = 'Debug Next'})
vim.keymap.set({'n', 'v'}, '<F7>', vim.cmd.Step, {desc = 'Debug Step Into'})
vim.keymap.set({'n', 'v'}, '<F8>', vim.cmd.Break, {desc = 'Debug Add break at cursor'})
vim.keymap.set({'n', 'v'}, '<F20>', vim.cmd.Until, {desc = 'Debug Until cursor'})
vim.keymap.set({'n', 'v'}, '<S-F8>', vim.cmd.Until, {desc = 'Debug Until cursor'})
vim.keymap.set({'n', 'v'}, '<F32>', vim.cmd.Clear, {desc = 'Debug Clear break at cursor'})
vim.keymap.set({'n', 'v'}, '<C-F8>', vim.cmd.Clear, {desc = 'Debug Clear break at cursor'})
vim.keymap.set({'n', 'v'}, '<F9>', vim.cmd.Finish, {desc = 'Debug Finish current function'})

vim.keymap.set('t', '<C-A>', '<C-\\><C-N>', {desc = 'get out of terminal'})

vim.keymap.set({'n', 'v'}, '<A-h>', '<C-w><C-h>', {desc = 'left window'})
vim.keymap.set({'n', 'v'}, '<A-j>', '<C-w><C-j>', {desc = 'bottom window'})
vim.keymap.set({'n', 'v'}, '<A-k>', '<C-w><C-k>', {desc = 'top window'})
vim.keymap.set({'n', 'v'}, '<A-l>', '<C-w><C-l>', {desc = 'right window'})
vim.keymap.set({'n', 'v'}, '<A-.>', '<C-w>10>', {desc = 'window width + 10'})
vim.keymap.set({'n', 'v'}, '<A-,>', '<C-w>10<', {desc = 'window width - 10'})

vim.keymap.set({ 'i', 's' }, '<Tab>', function()
   if vim.snippet.active({ direction = 1 }) then
     return '<cmd>lua vim.snippet.jump(1)<cr>'
   else
     return '<Tab>'
   end
 end, { expr = true })

local telescope_b = require'telescope.builtin'
vim.keymap.set('n', '<C-n>', telescope_b.git_files, {desc = 'Telescope Find file'})
vim.keymap.set('n', '<C-F>', telescope_b.live_grep, {desc = 'Telescope Live grep'})
vim.keymap.set('n', '<leader>n', telescope_b.git_files, {desc = 'Telescope Git files'})
vim.keymap.set('n', '<leader>b', telescope_b.buffers, {desc = 'Telescope show buffers'})
vim.keymap.set('n', '<leader>d', telescope_b.lsp_definitions, {desc = 'Telescope lsp definitions'})
vim.keymap.set('n', '<leader>i', telescope_b.lsp_implementations, {desc = 'Telescope lsp implementations'})
vim.keymap.set('n', '<leader>r', telescope_b.lsp_references, {desc = 'Telescope lsp references'})
vim.keymap.set('n', '<leader>fd', telescope_b.diagnostics, {desc = 'Telescope show diagnostics'})
vim.keymap.set('n', '<leader>fgb', telescope_b.git_branches, {desc = 'Telescope Git branches'})
vim.keymap.set('n', '<leader>fgc', telescope_b.git_commits, {desc = 'Telescope Git commits'})
vim.keymap.set('n', '<leader>fgf', telescope_b.git_files, {desc = 'Telescope Git files'})
vim.keymap.set('n', '<leader>fgh', telescope_b.git_bcommits, {desc = 'Telescope Git history of a buffer'})
vim.keymap.set('n', '<leader>fh', telescope_b.help_tags, {desc = 'Telescope search in help'})
vim.keymap.set('n', '<leader>fp', telescope_b.planets, {desc = 'Telescope demo planets'})

local actions_preview = require'actions-preview'
vim.keymap.set('n', '<leader>cd', actions_preview.code_actions, {desc = 'ActionsPreview'})
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, {desc = 'Diagnostic float'})

require'ppgertos.workspaceSpec'.set_binds()
