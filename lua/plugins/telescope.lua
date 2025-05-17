return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers browse' })
  end
}
