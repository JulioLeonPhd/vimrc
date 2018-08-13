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
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_smart_startup_focus = 2

" Remove search highlight with leader + space
nnoremap <silent><leader><space> : nohlsearch<CR>

" Pathogen
execute pathogen#infect()

" IDL Syntax Highlight and Block Comment (using vim-commentary: gcc and gc)
au BufEnter *.pro set syntax=idlang filetype=idlang
au FileType idlang setlocal commentstring=;\ %s

" <ESC> with jj 
imap jj <ESC>

" Font Selection Override
" set gfn=IBM\ Plex\ Mono\ 9
" set gfn=Hack\ 8.5

" Search and Replace word (Giorgio Hack)
nnoremap <leader>s :%s/\<<C-r><C-w>\>//gc<left><left><left>
vnoremap <leader>s "hy:%s/<C-r>h//gc<left><left><left>

" Column Line at 100
set cc=100

" Ignore case when searching
set ignorecase

" LaTeX indenting
let g:tex_flavor='latex'

" vim-pandoc and vim-pandoc-syntax configuration
let g:pandoc#syntax#conceal#use = 1

" Spellcheck hotkeys: 
" Replace spelling error: z= | prev/next spelling error: [s or ]s
let g:pandoc#spell#enabled = 1
let g:pandoc#spell#default_langs = ["pt", "en"]

" Pandoc Workarounds
" let g:go_version_warning = 0 " Workaround for vim < 7.4.052
" let g:pandoc#modules#warn_disabled = 0 " Workaround for vim < 7.3


