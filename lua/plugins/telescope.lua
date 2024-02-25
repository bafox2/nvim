local keymap = vim.keymap

local config = function()
    local telescope = require('telescope')
    telescope.setup({
        defaults = {
            mappings = {
                -- Your mappings here
            },
        },
        pickers = {
            find_files = {
                -- Configuration for find_files picker
            },
            live_grep = {
                -- Configuration for live_grep picker
            },
            find_buffers = {
                -- Configuration for find_buffers picker
            },
        },
    })
end

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = config,
    keys = {},
}

