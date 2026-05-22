return {
	"neovim/nvim-lspconfig",
    lazy = false,
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} }
	},
	config = function()
		require('servers')
	end
}
