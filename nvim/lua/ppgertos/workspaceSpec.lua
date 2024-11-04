local M = {}

function M.telescope_setup_opts()
return {
  defaults = {
    vimgrep_arguments = { "ag", "--nocolor", "--silent", "--vimgrep","--smart-case" },
  },
  -- pickers = {
  --   find_files = {
  --     find_command = {"ag", "--silent", "--nocolor", "--follow", "-g", "", "--smart-case", "--hidden", "--ignore", ".git*", "--ignore", "*.log", "--ignore", "*.ims2 "},
  --   },
  -- },
}
end

function M.set_binds()
    vim.keymap.set({'n', 'v'}, '<leader>t', vim.lsp.buf.format, {desc = 'Lsp format buffer'})
end

return M
