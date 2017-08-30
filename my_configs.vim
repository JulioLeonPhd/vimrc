" Enable Numbering
set nu

" No line wrapping
set nowrap

" Lightline already tells us the mode
set noshowmode

" Highlight current line
set cursorline

" Folding Options
set foldenable
set foldlevelstart=10
set foldnestmax=1
set foldmethod=indent
nnoremap <leader><C-space> za

" NerdTree Configs
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_smart_startup_focus = 2

" Remove search highlight with leader + space
nnoremap <silent><leader><space> : nohlsearch<CR>

" Pathogen
execute pathogen#infect()

" For LaTeX
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []}
nnoremap <C-w>e :SyntasticCheck<CR> 

" For IDL, Better Syntax highlighting
autocmd BufEnter *.pro set syntax=idlang filetype=idlang

" <ESC> with jj 
imap jj <ESC>

" Font Selection Override
set gfn=Hack\ 9
" set gfn=Hack\ Bold\ 8
" set gfn=DejaVu\ Sans\ Mono\ Bold\ 9

" Search and Replace word (Giorgio)
nnoremap <leader>s :%s/\<<C-r><C-w>\>//gc<left><left><left>
vnoremap <leader>s "hy:%s/<C-r>h//gc<left><left><left>

" Column Line at 80
" set cc=80


