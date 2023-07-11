require("reteach.remap")
require("reteach.set")

vim.cmd[[autocmd BufLeave,FocusLost * silent! wall]]


vim.cmd[[inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"]]

vim.cmd[[tnoremap <C-w>h <C-\><C-n><C-w>h]]
vim.cmd[[tnoremap <C-w>l <C-\><C-n><C-w>l]]
vim.cmd[[tnoremap <C-w>j <C-\><C-n><C-w>j]]
vim.cmd[[tnoremap <C-w>k <C-\><C-n><C-w>k]]




