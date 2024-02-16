-- Project keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open current file in directory view. :help Explorer" })
vim.keymap.set("n", "<leader>ps", vim.cmd.wa)


--# Window keymaps
vim.keymap.set("n", "<leader>wv", vim.cmd.vs, { desc = "Split window vertically" })

-- Buffer keymaps
vim.keymap.set("n", "<leader>bn", vim.cmd.bn)
vim.keymap.set("n", "<leader>bp", vim.cmd.bp)
vim.keymap.set("n", "<leader>bm", vim.cmd.bm)
vim.keymap.set("n", "<leader>bs", vim.cmd.write)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- TODO what keymaps did I copy form Primagen here? I should at least try to understand them before I delete them for good.
-- greatest remap ever
-- paste without copying selection
vim.keymap.set("x", "<leader>dp", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- copy into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from system clipboard
vim.keymap.set("n", "<leader>P", [["+p]])
vim.keymap.set("x", "<leader>dP", [["_d"+p]])

vim.keymap.set({ "n", "v" }, "<leader>dd", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("x", "<leader>P", [["+p]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
