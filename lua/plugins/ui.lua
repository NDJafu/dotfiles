return {
	{
		-- lazy.nvim
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			indent = { enabled = true },
			input = { enabled = true },
			bufdelete = { enabled = true },
		},
	},
	{
		"nvzone/showkeys",
		cmd = "ShowkeysToggle",
		opts = {
			position = "bottom-center",
		},
	},
}
