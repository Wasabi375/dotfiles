local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader><space>', builtin.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = "grep in files"})
vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep >")}) end, { desc = "grep for string and then filter based on name"})

-- Buffers
vim.keymap.set('n', '<leader>bf', builtin.buffers, { desc ="find buffer" })


-- git 
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

