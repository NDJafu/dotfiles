vim.keymap.set("n", "<leader>ft", function()
	if vim.g.term_win and vim.fn.win_gotoid(vim.g.term_win) == 1 then
		-- Hide the terminal window
		vim.cmd("hide")
	elseif vim.g.term_buf and vim.fn.bufexists(vim.g.term_buf) == 1 then
		-- Reopen the terminal buffer in a new bottom window if hidden
		vim.cmd("botright split")
		vim.cmd("buffer " .. vim.g.term_buf)
		-- Update window ID after reopening
		vim.g.term_win = vim.fn.win_getid()
	else
		-- Open a new terminal at the bottom if not already open
		vim.cmd("botright split term://pwsh")
		vim.g.term_buf = vim.fn.bufnr("%")
		vim.g.term_win = vim.fn.win_getid()
	end
end, { noremap = true, silent = true })
