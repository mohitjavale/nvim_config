vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.undofile = true
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"

-- indent
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- file_tree
vim.pack.add({ "https://github.com/nvim-tree/nvim-tree.lua" })
require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- telescope
vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})
local tb = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", tb.find_files)
vim.keymap.set("n", "<leader>g", tb.live_grep)
vim.keymap.set("n", "<leader>b", tb.buffers)

-- tree_sitter
vim.pack.add({ { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" } })
vim.api.nvim_create_autocmd("FileType", {
  callback = function() pcall(vim.treesitter.start) end,
})

-- lsp
vim.pack.add({
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/neovim/nvim-lspconfig",
})
require("mason").setup()
require("mason-lspconfig").setup()
 
-- autocomplete
vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
})
require("blink.cmp").setup()

-- terminal
vim.pack.add({ "https://github.com/akinsho/toggleterm.nvim" })
require("toggleterm").setup({
  open_mapping = [[<C-\>]], 
  direction = "float",
})
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
