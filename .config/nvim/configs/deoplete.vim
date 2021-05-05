" ++++++++++ DEOPLETE PLUGIN CONFIGURATION +++++++++++
let g:acp_enableAtStartup = 0
let g:deoplete#enable_at_startup = 1
    
call deoplete#custom#option({
\ 'smart_case': v:true,
\ 'min_pattern_length': 3
\ })

" ####### KEY-MAPPINGS
inoremap <expr><C-g>	deoplete#undo_completion()
inoremap <expr><C-l>	deoplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><ENTER> pumvisible() ? "\<C-y>" : "\<ENTER>"

function! s:my_cr_function()
	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" ENABLE OMNI COMPLETION.
autocmd FileType css,less,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ENABLE HEAVY OMNI COMPLETION.
if !exists('g:deoplete#sources#omni#input_patterns')
	let g:deoplete#sources#omni#input_patterns = {}
endif

" enable autoselect
set completeopt+=noinsert
