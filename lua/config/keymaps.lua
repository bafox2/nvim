-- directory nav
vim.keymap.set("n", "<leader>vmc", "<cmd>e ~/.config/nvim/lua/plugins<CR>");

-- window nav
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- move lines

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")

-- format
vim.keymap.set("n", "<leader>=", "gg=G<C-o>zz") -- ggb

-- insert mode indent
vim.keymap.set("i", "<C-d>", "<C-o>>")

-- go
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- netrw nav
vim.keymap.set("n", "<leader>p", vim.cmd.Ex)

-- find center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- lame delete buffer
vim.keymap.set("n", "<leader>bd", ":bd<CR>")

-- run go tests for current dir
vim.keymap.set("n", "<leader>t", ":!go test ./...<CR>")
