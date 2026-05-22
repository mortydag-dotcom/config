return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require('nvim-treesitter')
        configs.setup({
            ensure_installed = {
                "lua",
                "python",
                "bash",
                "typescript",
                "json",
                "make",
                "xml",
                "toml",
                "vim",
                "vimdoc",
                "comment",
                "git_config",
                "git_rebase",
                "gitcommit",
                "gitignore",
                "html",
                "luadoc",
                "yaml",
                "go",
                "markdown",
                "dockerfile",
                "markdown_inline",
                "c",
                "cpp",
                "javascript",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
