vim.opt.relativenumber = true
vim.opt.list = true
--vim.opt.listchars:append('tab: >')
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.cursorline = true
--vim.opt.cursorcolumn = true
vim.opt.swapfile = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.wrap = true
vim.opt.fileencoding = 'UTF-8'
vim.opt.splitbelow = true 

vim.cmd[[colorscheme codedark]]

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Map global leader from \ to Space
vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
 
--to set neovim transparent
vim.g.transparent_enabled = true

-- terminal settings:-
map("n", "<C-t>",":terminal <CR>", opts)
map("t","<Esc>","<c-\\><c-n>", opts)

--keyMapings:

--tab for autocompletion:- ( C-n for that )
--map("i", "<Tab>", "<C-n>", opts)

--to exit insertmode:-
map("i", "jj", "<Esc>", opts)

map("n", "<leader>z", ":w<CR>", opts)
map("n", "cz", ":q<CR>", opts)
map("n", "zq", ":q!<CR>", opts)

--to open a tab:-
map("n", "<leader>o", ":tabe<CR>", opts)
map("n", "<leader>t", ":Texplore<CR>", opts)
--switching tabs:-
map("n", "<leader>h", ":tabp<CR>", opts)
map("n", "<leader>l", ":tabn<CR>", opts)
--to close the tab
map("n", "<c-d>", ":tabc<CR>", opts)

--nerd tree:-
map("n", "<leader>b", ":NvimTreeToggle<CR>", opts)
--map("n", "<leader>f", ":NERDTreeFocus<CR>", opts)


--windows:-
map("n", "<c-h>", "<c-w>h", opts) --focus left
map("n", "<c-l>", "<c-w>l", opts) --focus right
map("n", "<c-j>", "<c-w>j", opts) --focus bottom
map("n", "<c-k>", "<c-w>k", opts) --focus above

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
