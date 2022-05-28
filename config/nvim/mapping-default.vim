nnoremap <SPACE> <Nop>
let mapleader = " "

" vim
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" LSP
nnoremap <silent>gD :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K :lua vim.lsp.buf.hover()<CR>
nnoremap <silent>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <leader>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <leader>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <leader>D :lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent>gr :lua vim.lsp.buf.references()<CR>
nnoremap <space>f :lua vim.lsp.buf.formatting()<CR>

" Telescope
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>


" NERDTree
nnoremap <leader>b :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
