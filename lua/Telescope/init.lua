--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ft', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
--Telescope file browser
vim.keymap.set('n', '<leader>fb',":Telescope file_browser", {noremap = true} )
-- vim.keymap.set('n', '<leader>fb', "telescope".extensions.file_browser.file_browser , {noremap = true} )
require("telescope").load_extension "file_browser"
