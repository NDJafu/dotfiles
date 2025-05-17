return {
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
	},
}
