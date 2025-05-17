return {
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("mason").setup()
			local mason_lspconfig = require("mason-lspconfig")
			local lspconfig = require("lspconfig")

			mason_lspconfig.setup()

			local installed_servers = mason_lspconfig.get_installed_servers()

			for _, server in ipairs(installed_servers) do
				lspconfig[server].setup({
					on_attach = function(client, bufnr)
						local buf_set_keymap = function(mode, lhs, rhs, desc)
							vim.keymap.set(
								mode,
								lhs,
								rhs,
								{ noremap = true, silent = true, buffer = bufnr, desc = desc }
							)
						end

						-- LSP feature keymaps
						buf_set_keymap("n", "gd", "<C-]>", "Go to Declaration")
						buf_set_keymap("n", "gr", vim.lsp.buf.references, "List References")
						buf_set_keymap("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
						buf_set_keymap("n", "<leader>cr", vim.lsp.buf.rename, "Rename Symbol")
						buf_set_keymap("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
						buf_set_keymap("n", "<C-Space>", "<C-x><C-o>", "Show completion")
					end,
				})
			end
		end,
	},
}
