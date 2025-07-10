vim.g.mapleader = " "
local map = vim.keymap.set

-- vanilla nvim changes
map({'n', 't'}, '<leader>h', '<C-w>h')
map({'n', 't'}, '<leader>j', '<C-w>j')
map({'n', 't'}, '<leader>k', '<C-w>k')
map({'n', 't'}, '<leader>l', '<C-w>l')

map({'n','t'}, '<leader>dw', '<cmd>lua vim.diagnostic.open_float()<cr>')

-- telescope
local builtin = require('telescope.builtin')
map('n', '<leader>.', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- nvim tree
map("n", "<leader>nt", "<cmd>e.<cr>")

-- harpoon
local harpoon = require("harpoon")

harpoon:setup()

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<leader>z", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

map("n", "<leader>1", function() harpoon:list():select(1) end)
map("n", "<leader>2", function() harpoon:list():select(2) end)
map("n", "<leader>3", function() harpoon:list():select(3) end)
map("n", "<leader>4", function() harpoon:list():select(4) end)
