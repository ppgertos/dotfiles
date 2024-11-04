local M = {}
function M.setup(opts)
    local query_driver = (opts and opts.query_driver) or "/usr/bin/clang"

    local cmp_capabilities = require'cmp_nvim_lsp'.default_capabilities()
    local lspconfig = require'lspconfig'
    lspconfig.clangd.setup{
        cmd = { 'clangd',
          "-j=8",
--        "--enable-config",
	      "--log=error",
          "--background-index",
--        "--background-index-priority=background",
--        "--all-scopes-completion",
          "--completion-parse=auto",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--pretty",
          "--malloc-trim",
          "--pch-storage=memory",
          "--clang-tidy",
          "--limit-references=1000",  -- (default=1000)
          "--limit-results=100",      -- (default=100)
          "--compile-commands-dir=" .. vim.env.PWD,
          "--query-driver=" .. query_driver
        },
        capabilities = cmp_capabilities,
    }
end

return M
