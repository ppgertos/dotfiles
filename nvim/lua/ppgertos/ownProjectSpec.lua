local M = {}

function M.telescope_setup_opts()
  return {}
end

function M.set_binds()
    vim.keymap.set({'n', 'v'}, '<leader>t', vim.lsp.buf.format, {desc = 'Lsp format buffer'})
end

function M.append_clangd_to_path()
end

function M.clangd_query_parser()
    return "/usr/bin/clang++"
end

return M
