vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local bufmap = function(mode, lhs, rhs)
			local opts = { buffer = event.buf }
			vim.keymap.set(mode, lhs, rhs, opts)
		end

		-- Trigger code completion
		bufmap("i", "<C-Space>", "<cmd>lua vim.lsp.omnifunc()<cr>")
		-- Jump to definition
		bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
		-- Jump to declaration
		bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
		-- List all implementation
		bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
		-- Jump to type definition
		bufmap("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
		-- List all references
		bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
		-- Rename symbol
		bufmap("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>")
	end,
})
