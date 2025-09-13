local v = vim.version()
if v.major <= 0 and v.minor < 12 then
	vim.api.nvim_err_writeln("Neovim >= 0.12.0 is required for this config.")
	return
end

-- persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("config") .. "/undo"

-- nvimtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- vim tmux navigator
vim.g.tmux_navigator_no_mappings = 1

-- block cursor for all modes
vim.opt.guicursor = "n-v-i-c:block"

-- general stuff
vim.loader.enable()

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = "a"

vim.g.mapleader = " "
