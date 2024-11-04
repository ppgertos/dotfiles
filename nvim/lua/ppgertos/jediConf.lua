local M = {}
function M.setup()
    require'lspconfig'.jedi_language_server.setup{}
end

return M

