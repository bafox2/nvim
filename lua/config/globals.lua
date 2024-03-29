vim.g.mapleader = " "
vim.g.maplocalleader = " "

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})
local lsp_group = augroup('LspAttach', {})
local trim_group = augroup('TrimWhitespace', {})

-- yank highlight
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- trim whitespace
autocmd({"BufWritePre"}, {
    group = trim_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


autocmd('LspAttach', {
    group = lsp_group,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

                -- Auto-format before saving
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = lsp_group,
            buffer = e.buf,
            callback = function()
                -- Check if LSP is attached and supports formatting
                local clients = vim.lsp.get_active_clients({bufnr = e.buf})
                for _, client in ipairs(clients) do
                    if client.supports_method("textDocument/formatting") then
                        vim.lsp.buf.format({ bufnr = e.buf })
                        break
                    end
                end
            end
        })
    end
})
