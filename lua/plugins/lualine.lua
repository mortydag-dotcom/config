return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            optionons = {
                theme = "catppuccin",
                icons_enabled = true,
                component_separators = "|",
            },
        })
    end,
    dependencies = {"nvim-tree/nvim-web-devicons"},
}
