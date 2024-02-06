" set wrap
set wrap linebreak nolist
syntax enable
set guifont=Monospace\ 12
colorscheme anotherdark
set autochdir
set nocompatible
" disable mouse
set mouse=c

" tabs and spaces
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" ui
set cursorline
hi CursorLine cterm=NONE ctermbg=black
set wildmenu

" hide gui widgets
set guioptions-=m
set guioptions-=T

" search
set incsearch
set hlsearch


" splits
set splitbelow
set splitright

" key mapping
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader><space> :nohlsearch
map <space> \
inoremap jk <esc>
inoremap <S-tab> <C-n>
nnoremap j gj
nnoremap k gk

" set up autocomplete
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
highlight Pmenu ctermfg=yellow ctermbg=blue guifg=yellow guibg=blue

" ag ( faster searcher )
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <leader>a :Ag

" ctrlp (fuzzy search)
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
nnoremap <leader>s :CtrlP

" Persistnet undo
if has ("persistent_undo")
    set undofile
    if !isdirectory($HOME.'/.vim/undodir') && exists('*mkdir')
        call mkdir($HOME.'/.vim/undodir')
    endif
    set undodir=$HOME/.vim/undodir
endif

" Undotree (visual undo)
nnoremap <leader>u :UndotreeToggle<CR>

" plugin manager
execute pathogen#infect()

" Folding 
set foldenable
 set foldlevelstart=3
set foldnestmax=10
set foldmethod=indent
filetype plugin indent on

" Status line
hi User1 ctermbg=blue ctermfg=blue guibg=CornflowerBlue " guifg=red
set laststatus=2
set statusline+=%-.50F
set statusline+=/
set statusline+=%m/
set statusline+=Lines:
set statusline+=%L
set statusline+=/
set statusline+=%p%%
set statusline+=%=
set statusline+=%k
set statusline+=Buff:
set statusline+=%n//
set statusline+=%l
set statusline+=/
set statusline+=%-2c

" clipboard
set clipboard=unnamed


