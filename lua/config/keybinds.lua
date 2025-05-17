vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>qq", vim.cmd.qa)

-- Buffers
vim.keymap.set("n", "<leader>bd", vim.cmd.bd)

-- Windows
vim.keymap.set("n", "<leader>ws", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>wc", vim.cmd.close)
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- LSP binds
-- vim.keymap.set("i", "<C-Space>", vim.lsp.omnifunc)
-- vim.keymap.set("n", "gd", vim.lsp.tagfunc)
-- vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename)
-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
-- vim.keymap.set("n", "gI", vim.lsp.buf.implementation)
