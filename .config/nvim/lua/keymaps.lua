local keymap_opts = { buffer = buffer }
local builtin = require('telescope.builtin')

vim.g.mapleader = ','

vim.keymap.set("n", "<leader>r", ":so %<CR>")
vim.keymap.set("n", "<leader>s", ":w <CR>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)


vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)
vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=terminal --height=0.8 --width=0.7 --autoclose=2 zsh <CR> ", {})
vim.keymap.set('n', "<leader>fl", ":FloatermNext <CR>", {})
vim.keymap.set('n', "<leader>fh", ":FloatermPrev <CR>", {})
vim.keymap.set('n', "t", ":FloatermToggle terminal<CR>", {})
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>", {})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle <CR>")
