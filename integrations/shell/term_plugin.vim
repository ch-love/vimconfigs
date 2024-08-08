" ~/.vim/plugin/term_plugin.vim or ~/.local/share/nvim/site/plugin/term_plugin.vim

" Function to open the terminal at the bottom of the window
function! OpenTerminal()
    " Get the height of the current window
    let l:height = winheight(0)
    " Set the terminal height to 40% of the window height
    let l:term_height = max([1, round(l:height * 0.4)])

    " Open a new terminal window at the bottom
    split | resize l:term_height | terminal

    " Switch to normal mode to prevent automatic insertion
    stopinsert
endfunction

" Function to close the terminal
function! CloseTerminal()
    " Check if the current buffer is a terminal
    if &buftype == 'terminal'
        " Close the terminal window
        quit
    endif
endfunction

" Map Ctrl+~ to open the terminal
nnoremap <C-'> :call OpenTerminal()<CR>

" Map Ctrl+Shift+E to close the terminal
nnoremap <C-S-e> :call CloseTerminal()<CR>