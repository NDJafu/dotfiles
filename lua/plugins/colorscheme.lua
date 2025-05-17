return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		vim.cmd.colorscheme("catppuccin-frappe")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end,
}
