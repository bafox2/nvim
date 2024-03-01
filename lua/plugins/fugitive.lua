return {
    "tpope/vim-fugitive",
    cmd = "G",
    vim.api.nvim_set_keymap("n", "<leader>gs", ":G<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>gc", ":G commit<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>gp", ":G push<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>gl", ":G pull<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>gA", ":G add .<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>ga", ":G add %<CR>", { noremap = true, silent = true }),
}
