return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = "VeryLazy",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim'
  },
  config = function()
    local harpoon = require('harpoon')
    harpoon.setup({
      save_on_toggle = true,
      sync_on_ui_close = true,
    })

    -- Keybindings
    vim.keymap.set('n', '<leader>ha', function() require('harpoon.mark').add_file() end)
    vim.keymap.set('n', '<leader>hh', function() require('harpoon.ui').toggle_quick_menu() end)
    vim.keymap.set('n', '<leader>hc', function() require('harpoon.mark').clear_all() end)
    vim.keymap.set('n', '<leader>1', function() require('harpoon.ui').nav_file(1) end)
    vim.keymap.set('n', '<leader>2', function() require('harpoon.ui').nav_file(2) end)
    vim.keymap.set('n', '<leader>3', function() require('harpoon.ui').nav_file(3) end)
    vim.keymap.set('n', '<leader>4', function() require('harpoon.ui').nav_file(4) end)
  end,
}

