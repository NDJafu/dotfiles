vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.diagnostic.enable = true
vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
		},
		linehl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
		},
		numhl = {
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 1
