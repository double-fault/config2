-- Reload neovim config with <leader>rc
vim.keymap.set("n", "<leader>rc", ":luafile %<CR>", { desc = "Reload neovim config" })

vim.keymap.set("n", "<C-g>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Focus file explorer" })

-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { desc = "[y]ank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "[Y]ank current line to system clipboard" })

-- Paste from system clipboard
vim.keymap.set({"n", "v"}, "<leader>p", '"+p', { desc = "[P]aste from system clipboard" })

--
-- Telescope keymaps
local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim config' })

vim.keymap.set('n', '<leader>sa', function()
    builtin.find_files { cwd = vim.fn.stdpath('config') .. '/../alacritty' }
end, { desc = '[S]earch [A]lacritty config' })
