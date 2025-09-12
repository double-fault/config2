-- Use <leader>sk followed by a search for "keymaps" to look at all the keymaps in here

-- Reload neovim config with <leader>rc
vim.keymap.set("n", "<C-g>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer (keymaps)" })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Focus file explorer (keymaps)" })

-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { desc = "[y]ank to system clipboard (keymaps)" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "[Y]ank current line to system clipboard (keymaps)" })

-- Paste from system clipboard
vim.keymap.set({"n", "v"}, "<leader>p", '"+p', { desc = "[P]aste from system clipboard (keymaps)" })

--
-- Telescope keymaps
local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "[S]earch [K]eymaps (keymaps)" })

vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "[F]ind [F]iles (keymaps)" })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = "[G]rep (keymaps)" })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = "[ ] Find existing buffers (keymaps)"})

vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim config (keymaps)' })

vim.keymap.set('n', '<leader>sa', function()
    builtin.find_files { cwd = vim.fn.stdpath('config') .. '/../alacritty' }
end, { desc = '[S]earch [A]lacritty config (keymaps)' })

vim.keymap.set('n', '<leader>st', function()
    builtin.find_files { cwd = vim.fn.stdpath('config') .. '/../tmux' }
end, { desc = '[S]earch [T]mux config (keymaps)' })
