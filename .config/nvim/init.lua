require("plugins")
require("tree")
require("lsp")

require("rust")
require("keymaps")

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd [[set termguicolors]]

-- Tabs VS Spacing
vim.cmd [[set tabstop=4]]
vim.cmd [[set softtabstop=4]]
vim.cmd [[set shiftwidth=4 smarttab]]
vim.cmd [[set expandtab]]

-- Clipboard
vim.cmd [[set clipboard+=unnamedplus]]

-- Colorscheme
vim.cmd [[colorscheme nightfly]]

vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"

vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
