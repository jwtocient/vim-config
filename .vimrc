set number
set hlsearch

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set lazyredraw      " Much faster scrolling on large files

set cursorline      " Highlight the line the cursor is on

set mouse=a         " Accept input from the mouse

set colorcolumn=120
highlight ColorColumn ctermbg=darkgray

set makeprg=make\ all\ -j10


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-k> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

execute pathogen#infect()
call pathogen#helptags()

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_linters = {
\   'cpp': ['clangtidy'],
\}

set tags=.tags

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
set wildignore+=*/*.o

" Always remove trailing spaces
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e

let g:cpp_experimental_simple_template_highlight = 1

" Fix mouse scrolling on wrong pane
if has('mouse_sgr')
    set ttymouse=sgr
endif

set rtp+=/home/user/.vim/bundle/fzf
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R -f .tags --c++-kinds=+p --fields=+iaS --extra=+q --exclude=*.o --exclude=toolchain --exclude=.git --exclude=ext --exclude=*.a  --languages=c++ .'

" Much faster than ctrlp
map <C-g> :GFiles<CR>

" use ripgrep for grepping
set grepprg=rg

" dont use backup files
set nobackup
set noswapfile
" store swap files here
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

syntax on
filetype indent on
filetype plugin on

set incsearch
set ignorecase
set smartcase

set autoindent
set copyindent

set scrolloff=3
set autoread

set nocompatible

set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.
