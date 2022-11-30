vim.cmd([[
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat
autocmd FileType javascript setlocal formatprg=prettier\
" Use formatprg when available
let g:neoformat_try_formatprg = 1
]])
