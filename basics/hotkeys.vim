nnoremap <C-s> :w<CR>

nnoremap <C-e> :Explore<CR>

nnoremap <C-p> :Files<CR>

nnoremap <C-S-p> :CommandPalette<CR>

nnoremap <C-g> :call SearchGoToLine()<CR>

nnoremap <C-\> :term<CR>

nnoremap <C-w> <C-w>

nnoremap <C-w> :q<CR>

nnoremap <C-/> :CommentToggle<CR>

nnoremap <C-,> :Settings<CR>

function! SearchGoToLine()
    let l:line_number = input('Go to line: ')
    execute 'normal! '.l:line_number.'G'
endfunction
