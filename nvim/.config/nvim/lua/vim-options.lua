vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.g.background = "light"

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Noice
vim.api.nvim_set_keymap("n", "<leader>nn", ":Noice dimiss<CR>", { noremap = true })

-- Bufferline
vim.opt.termguicolors = true
vim.keymap.set("n", "<Space>bd", function()
    vim.api.nvim_command("bp|sp|bn|bd")
end)

vim.opt.swapfile = false

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
