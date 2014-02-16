call pathogen#incubate()
call pathogen#helptags()

" execute pathogen#infect()
set nocompatible

syntax enable
" Molokai scheme color
" let g:molokai_original = 1
" let g:rehash256 = 1
" set background=dark
"
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark



set showmatch
filetype indent on
filetype plugin indent on
set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set si					" Smart indent
set nu					" Number lines
set hls					" Highlight search
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=4

nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" maps j and k to move down and up in the pop up windows
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-Space> 

" brings the cursor to outside for the )
" :inoremap <F8> <ESC>%%a
" nnoremap <leader>d dd
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn','\%81v',100)
set encoding=utf-8
filetype plugin on 
" set omnifunc=syntaxcomplete#Complete

" fc-F2 will load vim three menu
map <F2> :NERDTreeToggle<CR>

" Tab Navigation
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-t> :tabnew<CR>
map <D-w> :tabclose<CR>
map <D-0> :tablast<CR>

let mapleader=","
" map <leader>c <c-_><c-_>   "Hot key <\c> too slow
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
filetype plugin on
    
syntax on
" autocmd BufWritePost *.go silent! !ctags -R &
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go compiler go

