vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Copiar al portapapeles del sistema
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy visual to clipboard" })
vim.keymap.set("n", "<C-c>", '"+y', { desc = "Copy line to clipboard" })

-- Pegar desde portapapeles
vim.keymap.set("n", "<C-v>", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("v", "<C-v>", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("i", "<C-v>", "<C-R>+", { desc = "Paste from clipboard in insert mode" })

vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>x", ":x<CR>")
-- ctl+\+n back to normal mode in terminal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-A-k>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-A-j>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-A-h>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-A-l>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":e $MYVIMRC<CR>", { desc = "Edit config" })
vim.keymap.set("n", "<leader>rl", ":so $MYVIMRC<CR>", { desc = "Reload config" })

vim.keymap.set("n", "<leader>t", function()
	vim.cmd("botright split | terminal")
	vim.cmd("resize 15")
	vim.cmd("startinsert")
end)

vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

vim.keymap.set("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Help tags" })

vim.keymap.set("n", "<leader>fr", function()
	require("telescope.builtin").resume()
end, { desc = "Resume last search" })

vim.keymap.set("n", "<leader>fs", function()
	require("telescope.builtin").current_buffer_fuzzy_find()
end, { desc = "Search current buffer" })
