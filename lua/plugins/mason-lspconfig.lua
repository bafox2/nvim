local opts = {
	ensure_installed = {
		"bashls",
		"tailwindcss",
		"lua_ls",
		"emmet_ls",
		"jsonls",
        "golangci_lint_ls",
        "gopls",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
