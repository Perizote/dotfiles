local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8
set.conceallevel = 2
set.termguicolors = true
set.relativenumber = true
set.cursorline = true
set.hidden = true
set.signcolumn = 'yes'
set.clipboard = 'unnamed'
set.updatetime = 300
set.completeopt = 'menuone,noselect'
set.showmode = false
set.wildmenu = true

vim.notify = require("notify")
