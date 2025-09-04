-- Reload neovim config with <leader>rc
vim.keymap.set("n", "<leader>rc", ":luafile %<CR>", { desc = "Reload neovim config" })

vim.keymap.set("n", "<C-g>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Focus file explorer" })

--
-- Telescope keymaps
local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim config' })
