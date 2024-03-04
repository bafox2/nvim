return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files()
        end)
        vim.keymap.set('n', '<leader>fg', function()
            builtin.live_grep()
        end)
        vim.keymap.set('n', '<leader>fcw', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>fh', function()
            builtin.help_tags()
        end)
        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics)
    end
}
