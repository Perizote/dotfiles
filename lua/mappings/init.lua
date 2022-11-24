local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

--> general purpose mappings
map('i', 'jj', '<esc>', opts)
map('n', 'qq', '<esc>:q<cr>', opts)
map('n', '<Leader>ss', ':w<cr>', opts)
map('n', '<Leader>sa', ':wa<cr>', opts)
map('n', 'zf', 'zf%', opts)

--> splits mappings
map('n', '<leader>w', '<c-w>', opts)
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-l>', '<c-w>l', opts)

--> resize window mappings
map('n', '<up>', ':resize +2<cr>', opts)
map('n', '<down>', ':resize -2<cr>', opts)
map('n', '<left>', ':vertical resize +2<cr>', opts)
map('n', '<right>', ':vertical resize -2<cr>', opts)

--> nvim-tree mappings
map('n', '<leader>e', ':NvimTreeToggle<cr>', opts)

--> telescope mappings
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fs', ':Telescope grep_string<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fc', ':Telescope command_history<CR>', opts)

--> toggleterm mappings
map('n', '<leader>tv', '<Cmd>exe v:count1 . "ToggleTerm direction=vertical size=60"<CR>', opts)
map('n', '<leader>tf', '<Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>', opts)
