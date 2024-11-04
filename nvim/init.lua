require"ppgertos.options"

vim.api.nvim_command "packadd termdebug"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
--    "--depth=1",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require'lazy'.setup({
{'folke/lazy.nvim', tag = 'stable'},
{'folke/which-key.nvim', tag = 'stable'},
{'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' }},
{'stevearc/oil.nvim', tag = 'v2.9.0'},
{'aznhe21/actions-preview.nvim'},
{'tpope/vim-fugitive', tag = 'v3.7'},
{'bluz71/vim-moonfly-colors'},
{'hrsh7th/cmp-nvim-lsp'},
{'neovim/nvim-lspconfig', tag = 'v0.1.8'},
{'hrsh7th/nvim-cmp'},
{'nvim-treesitter/nvim-treesitter', tag = 'v0.9.2'},
{'airblade/vim-gitgutter'},
{'mfussenegger/nvim-jdtls', tag = '0.2.0', dependencies = {'mfussenegger/nvim-dap'}}
})

require'ppgertos.colors'

local workspaceSpec = require'ppgertos.ownProjectSpec'

require'which-key'.setup{}
require'oil'.setup{}

require'telescope'.setup(workspaceSpec.telescope_setup_opts())
workspaceSpec.append_clangd_to_path()

require'nvim-treesitter.configs'.setup{
    ensure_installed={'cpp', 'lua', 'python'},
    highlight={enable=true, additional_vim_regex_highlighting=false}
}

require'ppgertos.clangdConf'.setup{query_parser=workspaceSpec.clangd_query_parser()}
require'ppgertos.jediConf'.setup{}
require'ppgertos.cmpConf'
require'ppgertos.binds'
