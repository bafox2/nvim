-- directory nav

-- pane nav

-- window nav

-- move lines

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")

-- format
vim.keymap.set("n", "<leader>=", "gg=G<C-o>zz") -- ggb

-- indent
-- insert mode indent
vim.keymap.set("i", "<C-d>", "<C-o>>")

-- go
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)


