local nnoremap = require("an0nvi.keymap").nnoremap

nnoremap("<leader>b", "<cmd>Ex<cr>")

-- lsp
nnoremap("<leader>e", vim.diagnostic.open_float)
nnoremap("<leader>[d", vim.diagnostic.goto_prev)
nnoremap("<leader>]d", vim.diagnostic.goto_next)
nnoremap("<leader>q", vim.diagnostic.setloclist)
nnoremap("<leader>gD", vim.lsp.buf.declaration)
nnoremap("<leader>gd", vim.lsp.buf.definition)
nnoremap("<leader>gi", vim.lsp.buf.implementation)
nnoremap("<leader>gr", vim.lsp.buf.references)
nnoremap("<leader>K", vim.lsp.buf.hover)
nnoremap("<leader><C-k>", vim.lsp.buf.signature_help)
nnoremap("<leader>D", vim.lsp.buf.type_definition)
nnoremap("<leader>rn", vim.lsp.buf.rename)
nnoremap("<leader>f", vim.lsp.buf.formatting)


-- telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
