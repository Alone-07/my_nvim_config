vim.notify = require("notify")
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
--for fat cursor
vim.opt.guicursor = ""

vim.opt.splitbelow = false
vim.opt.splitright = true

vim.opt.swapfile = false

--for undofile plugin
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.ignorecase = true

vim.opt.wrap = true
vim.opt.scrolloff = 5
vim.opt.fileencoding = 'UTF-8'
vim.opt.showmatch = true
vim.opt.hidden = true
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.cmd[[colorscheme NeoSolarized]]

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Map global leader from \ to Space
vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
 
--to set neovim transparent
-- vim.g.transparent_enabled = true -- its for transparent pack in plugins init.lua

-- vim.api.nvim_set_hl(0, "Normal", {bg= "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", {bg= "none"})

-- terminal settings:-
map("n", "<C-t>",":terminal <CR>", opts)
map("t","<Esc>","<c-\\><c-n>", opts)

--UndoTree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

--Git (vim-fugitive)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

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
-- map("n", "<leader>h", ":tabp<CR>", opts)
-- map("n", "<leader>l", ":tabn<CR>", opts)

-- tab bar
-- ':' or "<Cmd>"
map("n", "<leader>h", ":BufferPrevious<CR>", opts)
map("n", "<leader>l", ":BufferNext<CR>", opts)

-- Close buffer
map('n', '<c-d>', '<Cmd>BufferClose<CR>', opts)

--nerd tree:-
map("n", "<leader>b", ":NvimTreeToggle<CR>", opts)
-- map("n", "<leader>f", ":NvimTreeFocus<CR>", opts)


--windows:-
map("n", "<c-h>", "<c-w>h", opts) --focus left
map("n", "<c-l>", "<c-w>l", opts) --focus right
map("n", "<c-j>", "<c-w>j", opts) --focus bottom
map("n", "<c-k>", "<c-w>k", opts) --focus above


--copy in clipboard
-- vim.keymap.set("n", "<leader>y", "\" +y")
-- vim.keymap.set("v", "<leader>y", "\" +y")
-- vim.keymap.set("n", "<leader>Y", "\" +Y")
