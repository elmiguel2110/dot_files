vim.g.mapleader = ' '

--Window navigation
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})


--Window resizing
vim.keymap.set("n", "<A-l>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<A-h>", ":vertical resize +2<CR>", {})
vim.keymap.set("n", "<A-k>", ":horizontal resize -2<CR>", {})
vim.keymap.set("n", "<A-j>", ":horizontal resize +2<CR>", {})


--Buffer navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})


-- Visual mode modifications
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})


-- Cursor stays in the middle when jumping and searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy paste
vim.keymap.set("x", "<leader>p", [["_dP]]) -- when copy pasting into selection, won't replace
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


-- Nvim-Tree
vim.keymap.set('n', "<leader>n", ":NvimTreeToggle<CR>", {})


-- Telescope
local built = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", built.find_files, {})
vim.keymap.set("n", "<leader>fg", built.grep_string, {})
-- vim.keymap.set("n", "<leader>fg", built.live_grep, {})
vim.keymap.set("n", "<leader>fb", built.buffers, {})
vim.keymap.set("n", "<leader>fr", built.oldfiles, {})
-- vim.keymap.set("n", "<leader>fh", built.help_tags, {})
vim.keymap.set("n", "<leader>fj", built.jumplist, {})
vim.keymap.set("n", "<leader>lr", built.lsp_references, {})
vim.keymap.set("n", "<leader>ld", built.lsp_definitions, {})
vim.keymap.set("n", "<leader>gc", built.git_commits, {})
vim.keymap.set("n", "<leader>gd", built.git_bcommits, {})
vim.keymap.set("n", "<leader>gb", built.git_branches, {})
vim.keymap.set("n", "<leader>gs", built.git_stash, {})
