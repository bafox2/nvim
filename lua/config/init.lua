local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('config.globals')
require('config.options')

local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = {"tokyonight"}
	},
	rtp = {
      reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
      ---@type string[]
      ---@type string[] list any plugins you want to disable here
      disabled_plugins = {
         "gzip",
         "matchit",
         "matchparen",
         "netrwPlugin",
         "tarPlugin",
         "tohtml",
         "tutor",
         "zipPlugin",
      },
    },
    }

-- Example using a list of specs with the default options

require("lazy").setup('plugins', opts)
