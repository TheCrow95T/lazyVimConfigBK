-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- General keybinding
keymap("n", "<C-s>", ":wa<CR>", { desc = "Save all files" })
keymap("n", "<C-m>", ":delm! | delm A-Z0-9<CR>", { desc = "Clear Mark" })

-- Neotree keybinding
keymap("n", "<leader><C-e>", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree" })
vim.api.nvim_set_keymap("n", "<C-e>", "", {
  noremap = true,
  callback = function()
    require("ranger-nvim").open(true)
  end,
})

-- Bufferline keybindings
keymap("n", "<leader><S-h>", "<cmd>BufferLineMovePrev<CR>", { desc = "Move to previous buffer" })
keymap("n", "<leader><S-l>", "<cmd>BufferLineMoveNext<CR>", { desc = "Move to next buffer" })
keymap("n", "<C-w>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
vim.cmd("unmap <C-w>d")
vim.cmd("unmap <C-w><C-d>")
vim.cmd("unmap <C-w><leader>")

-- Split windows
keymap("n", "<leader>\\", "<cmd>vs<cr>", { desc = "Vertical split" })
keymap("n", "<leader>-", "<cmd>split<cr>", { desc = "Horizontal split" })

-- Toggle focus windows
keymap("n", "<M-z>", "<cmd>lua require('maximizer').toggle()<cr>", { desc = "Toggle Focus window" })

-- Lazygit keybindings
keymap("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })

-- Open ToggleTerm
keymap("n", "<C-t>", "<cmd>lua require('FTerm').toggle()<CR>", { desc = "Open ToggleTerm" })
keymap("t", "<C-t>", "<C-\\><C-n><cmd>lua require('FTerm').toggle()<CR>", { desc = "Close ToggleTerm" })

-- Telescope
keymap("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Find TODO from current directory" })
keymap("n", "<leader>fp", ":Telescope project<CR>", { desc = "Find Project" })
keymap("n", "<leader>fk", ":Telescope keymaps<CR>", { desc = "Find Keymapping" })
keymap("n", "<leader>fm", ":Telescope harpoon marks<CR>", { desc = "Find Mark" })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
keymap("n", "<leader>fc", ":Telescope colorscheme<CR>", { desc = "Find buffers" })
