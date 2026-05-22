return {
    "nvim-tree/nvim-tree.lua",
    lazy = false, 
    config = function()
        vim.cmd([[hi NvimTreeNor guibg=NONE ctermbg=NONE]])

        require("nvim-tree").setup({
            filters = {
                dotfiles = false,
            },
            view = {
                adaptive_size = false,
            },
        })
    end,
}
