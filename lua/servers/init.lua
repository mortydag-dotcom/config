local on_attach = function(client, bufnr)
    local keymap = vim.keymap.set
    local opts = {
        noremap = true, 
        silent = true,
        buffer = bufnr,
    }

    -- native neovim keymaps
    keymap("n", "<leader>gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- goto definition
    keymap("n", "<leader>gS", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts) -- goto definition in vertical split
    keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) --  code actions
    keymap("n", "<leader>D", "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>", opts) --  code actions
    keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts) --  cursor diagnostics
    keymap("n", "<leader>pd", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts) --  previous diagnostics
    keymap("n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts) --  next diagnostics
    keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) --  hover documentation

    -- fzf-lua keymaps
    keymap("n", "<leader>gd", "<cmd>FzfLua lsp_finder<CR>", opts) --  LSP Finder (definitions + references)
    keymap("n", "<leader>gr", "<cmd>FzfLua lsp_references<CR>", opts) -- show all references
    keymap("n", "<leader>gt", "<cmd>FzfLua lsp_typedefs<CR>", opts) -- jump to the type definition
    keymap("n", "<leader>ds", "<cmd>FzfLua lsp_document_symbols<CR>", opts) -- list all symbols
    keymap("n", "<leader>ws", "<cmd>FzfLua lsp_workspace_symbols<CR>", opts) -- search for any symbol
    keymap("n", "<leader>gi", "<cmd>FzfLua lsp_implementations<CR>", opts) -- go to implementation
end

vim.lsp.config("lua_ls", {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua"
                }
            }
        }
    }
})

vim.lsp.enable("lua_ls")

