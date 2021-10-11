" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0


" ============= KEY BINDINGS FOR GO =============== "
" run all tests in the current file
autocmd BufEnter *.go nmap <leader>t  <Plug>(go-test)

" run the current test
autocmd BufEnter *.go nmap <leader>tt <Plug>(go-test-func)

" show function signature
autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)

" show interfaces a type implements
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)

" show callers of a function
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)

autocmd BufEnter *.go nmap <leader>bb  <Plug>(go-build)
autocmd BufEnter *.go nmap <leader>rr  <Plug>(go-run)
