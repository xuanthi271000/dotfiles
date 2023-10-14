"               ,        ,
"              / \,,_  .'|
"           ,{{| /}}}}/_.'            _____________________________________________
"          }}}}` '{{'  '.            /                                             \
"        {{{{{    _   ;, \          /            Ladies and Gentlemen,              \
"     ,}}}}}}    /o`\  ` ;)        |                                                |
"    {{{{{{   /           (        |        my name is ファム・スアン・ティ         |
"    }}}}}}   |            \       |                                                |
"   {{{{{{{{   \            \      |                     _                          |
"   }}}}}}}}}   '.__      _  |                      __  / \     _                   |
"   {{{{{{{{       /`._  (_\ /     |               / /_/  /    (_)___               |
"    }}}}}}'      |    //___/   --=:              / __/  /__  / / __ \              |
"    `{{{{`       |     '--'       |             / /_/  __  \/ /  \/ /              |
"     }}}`                         |             \__/\_/  \_/_/ /\__/               |
"                                  |                         / /                    |
"                                  |                        /_/                    /
"                                   \_____________________________________________/
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map leader is your Space
let mapleader=" " 

" Turn on mouse 
set mouse=a

"set paste

" Turn on color
syntax enable

" Turn on syntax highlighting  
syntax on

" Correct Backspace's function
set backspace=indent,eol,start

" Dictionary completion 
set dictionary=/usr/share/dict/words

" Set compatibility to Vim only
set nocompatible

" Show line number
set number

" Relative number to quickly run command
set relativenumber

" Status bar
set laststatus=2

" Allow backspacing over everuthing in insert mode
set backspace=2

" A tab character indents to the 2th
set tabstop=2

set expandtab

" pressing >> or << in normal mode indents by 2 characters
set shiftwidth=2

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Highlight cursor line underneath the cursor horizontally.
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=0

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn
hi CursorColumn ctermbg=0

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
 
" Set the commands to save in history default number is 20.
"set history=1000

" Use highlighting when doing a search.
set hlsearch

" Show matching words during a search.
set showmatch

" Show the mode you are on the last line.
set showmode

" Show partial command you type in the last line of the screen.
set showcmd

set showtabline=2

" Ignore capital letters during search.
"set ignorecase

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show the cursor position all the time
set ruler

" No automatically indent when getting out of line
set autoindent
 
" Share clipboard between Vim and OS
set clipboard^=unnamed,unnamedplus

" New window will be in the bottom side when splitted
set splitbelow

" New window will be in the right side when splitted
set splitright

" Automatically change the current directory
set autochdir

"set listchars=tab:·\ ,trail:·

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" F1 - help on some command
map <F1> :h 

" F6 - switch to next split
map <F6> <C-W><C-W>

" Shift-F6 - switch to next split, in reverse order
map <S-F6> <C-W>W

" F12 & Shift-F6 - toggle line number & relative number
nnoremap    <Leader>n        :set number!<CR>
nnoremap    <Leader>rn       :set relativenumber!<CR>
  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings for nomal mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Edit config file quickly
nmap <Leader><Leader>v     :e ~/.vimrc<CR>
nnoremap <Leader><Leader>s :so ~/.vimrc<CR> 

" Resize window
nnoremap <Leader>= :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" Set working directory
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Appear working directory
nnoremap <Leader>. :pwd<CR>

" Appear file working directory
nnoremap <Leader>, :echo expand('%:p')<CR>

" [ (left bracket) - change tabs to the left
nnoremap <s-tab> gT

" [ (right bracket) - change tabs to the right
nnoremap <tab> gt

" Fast move current line
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" Quickly add blank lines
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Open current file in web browser
nnoremap <F12>f :exe ':silent !firefox %'<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=> Change the cursor style depending on the mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=> Auto command
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd     BufRead                 *               if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=> Abbreviation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used with Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Theme
Plug 'joshdick/onedark.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'morhetz/gruvbox'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File browser
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'jcharum/vim-nerdtree-syntax-highlight',
    \ {'branch': 'escape-keys'}

" Cheat
Plug 'lifepillar/vim-cheat40'


call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set theme
colorscheme gruvbox
set t_Co=256
set background=dark

"colorscheme purify

"colorscheme onedark
"
"if (has("autocmd"))
"  augroup colorextend
"  autocmd ColorScheme 
"		      \ * call onedark#extend_highlight("Comment",{"fg": {"gui": "#728083"}})
"  autocmd ColorScheme 
"		      \ * call onedark#extend_highlight("LineNr", {"fg": {"gui": "#728083"}})
"  augroup END
"endif

" Extended settings
let vim_settings_dir = '~/.vim/settings/'
execute 'source '.vim_settings_dir.'airline.vim'
execute 'source '.vim_settings_dir.'git.vim'
execute 'source '.vim_settings_dir.'nerdtree.vim'

