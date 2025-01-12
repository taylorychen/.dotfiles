-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<c-u>", "<c-u>zz", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })

-- go to beginning/end of line
vim.keymap.set("n", "H", "^", { silent = true })
vim.keymap.set("n", "L", "$", { silent = true })

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moving highlighted chunks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indent doesn't deselect
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- dont grab deleted chunk
vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "Q", "<nop>")

-- creating split windows
vim.keymap.set("n", "<leader>_", "<cmd>:split<CR>", { desc = "Horizontally split window" })
vim.keymap.set("n", "<leader>|", "<cmd>:vsplit<CR>", { desc = "Vertically split window" })
vim.keymap.set("n", "<leader>T", "<C-w>T", { desc = "Create [T]ab from current window" })

-- moving between split windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<leader>h", "<C-w><C-h>")
vim.keymap.set("n", "<leader>l", "<C-w><C-l>")
vim.keymap.set("n", "<leader>j", "<C-w><C-j>")
vim.keymap.set("n", "<leader>k", "<C-w><C-k>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Executing lua files
vim.keymap.set("n", "<leader>x", "<cmd>source %<CR>", { desc = "Source current file" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source current visual selection" })

-- Quickfix list
vim.keymap.set("n", "<M-j>", "<cmd>:cnext<CR>", { desc = "Go to next entry in quickfix list" })
vim.keymap.set("n", "<M-k>", "<cmd>:cprev<CR>", { desc = "Go to prev entry in quickfix list" })
