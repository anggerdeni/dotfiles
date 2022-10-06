local nnoremap = require("an0nvi.keymap").nnoremap
local vnoremap = require("an0nvi.keymap").vnoremap

nnoremap("<leader>b", ":Ex<cr>")
vnoremap("<leader>p", "\"_dp")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>y", "\"+y")
nnoremap("<leader>y", "gg\"+ygg")
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")


-- source
nnoremap("<leader><cr>", "<cmd>so ~/.config/nvim/init.lua<cr>")

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
nnoremap("<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")


-- quickfixlist
nnoremap("<C-j>", "<cmd>cnext<cr>")
nnoremap("<C-k>", "<cmd>cprev<cr>")
