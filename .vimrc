"
"                                         ,   ,
"                                         $,  $,     ,
"                                         "ss.$ss. .s'
"                                 ,     .ss$$$$$$$$$$s,                           _____________________________________________
"                                 $. s$$$$$$$$$$$$$$`$$Ss                        /                                             \
"                                 "$$$$$$$$$$$$$$$$$$o$$$       ,               /            Ladies and Gentlemen,              \
"                                s$$$$$$$$$$$$$$$$$$$$$$$$s,  ,s               |                                                |
"                               s$$$$$$$$$"$$$$$$""""$$$$$$"$$$$$,             |        my name is ファム・スアン・ティ         |
"                               s$$$$$$$$$$s""$$$$ssssss"$$$$$$$$"             |                                                |
"                              s$$$$$$$$$$'         `"""ss"$"$s""              |                     _                          |
"                              s$$$$$$$$$$,              `"""""$  .s$$s                         __  / \     _                   |
"                              s$$$$$$$$$$$$s,...               `s$$'  `       |               / /_/  /    (_)___               |
"                          `ssss$$$$$$$$$$$$$$$$$$$$####s.     .$$"$.   , s---=:              / __/  /__  / / __ \              |  
"                            `""""$$$$$$$$$$$$$$$$$$$$#####$$$$$$"     $.$'    |             / /_/  __  \/ /  \/ /              |  
"                                  '$$$$$$$$$$$$$$$$$$$$$####s""     .$$$|     |             \__/\_/  \_/_/ /\__/               |  
"                                   '$$$$$$$$$$$$$$$$$$$$$$$$##s    .$$" $     |                         / /                    |  
"                                    $$""$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"   `    |                        /_/                    /   
"                                   $$"  '$"$$$$$$$$$$$$$$$$$$$$S""""'          \_____________________________________________/    
"                              ,   ,"     '  $$$$$$$$$$$$$$$$####s            
"                              $.          .s$$$$$$$$$$$$$$$$$####"           
"                  ,           '$s.   ..ssS$$$$$$$$$$$$$$$$$$$####"           
"                  $           .$$$S$$$$$$$$$$$$$$$$$$$$$$$$#####"            
"                  Ss     ..sS$$$$$$$$$$$$$$$$$$$$$$$$$$$######""             
"                   '$$sS$$$$$$$$$$$$$$$$$$$$$$$$$$$########"                 
"            ,      s$$$$$$$$$$$$$$$$$$$$$$$$#########""'                     
"            $    s$$$$$$$$$$$$$$$$$$$$$#######""'      s'         ,          
"            $$..$$$$$$$$$$$$$$$$$$######"'       ....,$$....    ,$           
"             '$$$$$$$$$$$$$$$######"' ,     .sS$$$$$$$$$$$$$$$$s$$
"               $$$$$$$$$$$$#####"     $, .s$$$$$$$$$$$$$$$$$$$$$$$$s.
"    )          $$$$$$$$$$$#####'      `$$$$$$$$$###########$$$$$$$$$$$.
"   ((          $$$$$$$$$$$#####       $$$$$$$$###"       "####$$$$$$$$$$
"   ) \         $$$$$$$$$$$$####.     $$$$$$###"             "###$$$$$$$$$   s'
"  (   )        $$$$$$$$$$$$$####.   $$$$$###"                ####$$$$$$$$s$$'
"  )  ( (       $$"$$$$$$$$$$$#####.$$$$$###'     ThiPham    .###$$$$$$$$$$"
"  (  )  )   _,$"   $$$$$$$$$$$$######.$$##'                .###$$$$$$$$$$
"  ) (  ( \.         '$$$$$$$$$$$$$#######,,,.          ..####$$$$$$$$$$$"
" (   )$ )  )        ,$$$$$$$$$$$$$$$$$$####################$$$$$$$$$$$"
" (   ($$  ( \     _sS"  `"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$S$$,
"  )  )$$$s ) )  .      .   `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"'  `$$
"   (   $$$Ss/  .$,    .$,,s$$$$$$##S$$$$$$$$$$$$$$$$$$$$$$$$S""        '
"     \)_$$$$$$$$$$$$$$$$$$$$$$$##"  $$        `$$.        `$$.
"         `"S$$$$$$$$$$$$$$$$$#"      $          `$          `$
"             `"""""""""""""'         '           '           '
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used with Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Theme
Plug 'joshdick/onedark.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'dhruvasagar/vim-table-mode'

" A solid language pack for Vim
Plug 'sheerun/vim-polyglot'
"let g:polyglot_disabled = ['tcl']

" 
Plug 'lifepillar/vim-cheat40'
"Plug 'junegunn/fzf', 
"  \ { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'preservim/vim-indent-guides'
"Plug 'frazrepo/vim-rainbow'
Plug 'Yggdroot/indentLine'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" VLSI syntax highlighting
Plug 'MTDL9/vim-log-highlighting'
Plug 'tarikgraba/vim-lefdef'
Plug 'tarikgraba/vim-liberty'
"Plug 'vhda/verilog_systemverilog.vim'
Plug 'xuanthi271000/vim-cpf-upf-sdc'
Plug 'xuanthi271000/vim-seraphim'
Plug 'xuanthi271000/vim-tcl'
Plug 'xuanthi271000/vim-upf'

" Perl
Plug 'vim-perl/vim-perl', 
  \ { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'c9s/perlomni.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set theme
colorscheme gruvbox
set t_Co=256
set background=dark

"colorscheme solarized
"let g:solarized_termcolors=256
"if has('gui_running')
"  set background=light
"else
"  set background=dark
"endif

"colorscheme dracula

"colorscheme purify

"colorscheme onedark
"if (has("autocmd"))
"  augroup colorextend
"  autocmd ColorScheme 
"		      \ * call onedark#extend_highlight("Comment",{"fg": {"gui": "#728083"}})
"  autocmd ColorScheme 
"		      \ * call onedark#extend_highlight("LineNr", {"fg": {"gui": "#728083"}})
"  augroup END
"endif

"set t_Co=256
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
"let g:lightline = { 'colorscheme': 'onehalfdark' }

" Extended settings
let vim_settings_dir = '~/.vim/settings/'
execute 'source '.vim_settings_dir.'airline.vim'
execute 'source '.vim_settings_dir.'nerdtree.vim'
"execute 'source '.vim_settings_dir.'coc.vim'
execute 'source '.vim_settings_dir.'indentline.vim'
"execute 'source '.vim_settings_dir.'fzf.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map leader is your Space
let mapleader=" " 

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

" While searching though a file incrementally highlight matching characters as
" you type.
set incsearch

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show the cursor position all the time
set ruler

" No automatically indent when getting out of line
set noautoindent
 
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

" F2 - open file in new tab
"map <F2> :tabe<CR> 

" F3 - save current file
"map <F3> :w<CR>

" F4 - exit
"map <F4> :q<CR>

" Shift-F4 - exit without saving
"map <S-F4> :q!<CR>

" F6 - switch to next split
map <F6> <C-W><C-W>

" Shift-F6 - switch to next split, in reverse order
map <S-F6> <C-W>W

" F12 & Shift-F6 - toggle line number & relative number
nnoremap    <Leader>n        :set number!<CR>
nnoremap    <Leader>rn       :set relativenumber!<CR>
"inoremap    <Leader> n   <Esc>:set number!<CR>
"inoremap    <Leader> rn  <Esc>:set relativenumber!<CR>gi
"vnoremap    <Leader> n   <Esc>:set number!<CR>
"vnoremap    <Leader> rn  <Esc>:set relativenumber!<CR>gv
  

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

" Remember last position when opening a file
"autocmd     BufEnter                *               silent! lcd %:p:h

autocmd     BufRead                 *                        if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

autocmd     BufNewFile,BufRead      *.cshrc                  set filetype=tcsh
autocmd     BufNewFile,BufRead      *.tlef.*                 set filetype=lef
autocmd     BufNewFile,BufRead      *.lef.*                  set filetype=lef
autocmd     BufNewFile,BufRead      *.def.*                  set filetype=def
autocmd     BufNewFile,BufRead      *.rpt*                   set filetype=log
autocmd     BufNewFile,BufRead      *.rpt.*                  set filetype=log
autocmd     BufNewFile,BufRead      *.tarpt.*                set filetype=log
autocmd     BufNewFile,BufRead      *.sv                     set filetype=verilog
autocmd     BufNewFile,BufRead      *.v.*                    set filetype=verilog
autocmd     BufNewFile,BufRead      *.spi                    set filetype=spice
autocmd     BufNewFile,BufRead      *.cdl*                   set filetype=spice
autocmd     BufNewFile,BufRead      *PERSEUS*                set filetype=csh
autocmd     BufNewFile,BufRead      *.summary*               set filetype=log
autocmd     BufNewFile,BufRead      *.sdc*.mod*              set filetype=sdc
autocmd     BufNewFile,BufRead      SERAPHIM.permissions     set filetype=seraphim
autocmd     BufNewFile,BufRead      SERAPHIM.build_design    set filetype=seraphim
autocmd     BufNewFile,BufRead      *.cmd                    set filetype=tcl
autocmd     BufNewFile,BufRead      *.spec.ccopt             set filetype=tcl
autocmd     BufNewFile,BufRead      *.tcl.*                  set filetype=tcl
autocmd     BufNewFile,BufRead      SERAPHIM*.run            set filetype=tcsh
autocmd     BufNewFile,BufRead      SERAPHIM*.cp             set filetype=tcsh
autocmd     BufNewFile,BufRead      PERSEUS*.run             set filetype=tcsh
autocmd     BufNewFile,BufRead      *.lib                    set filetype=liberty
autocmd     BufNewFile,BufRead      *.upf*                   set filetype=upf

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

" eat characters after abbreviation
function! Eatchar(pat)
	let c = nr2char(getchar(0))
	return (c =~ a:pat) ? '' : c
endfunction

iabbrev     _me_        Thi Pham (thip@uniquify.com)<C-R>=EatChar('\s')<CR>
iabbrev     _mymail_    thip@uniquify.com<C-R>=EatChar('\s')<CR>

iabbrev    _csh_       <Esc>:set paste<CR>gi
                       \#! /bin/tcsh -f<CR>
                       \<CR>
                       \#=======================================================================<CR>
                       \# File name   : <C-R>=expand('%:t')<CR><CR>
                       \# Date        : <C-R>=strftime("%m - %d - %y")<CR><CR>
                       \# Description : <CR>
                       \# Email       : thip@uniquify.com <CR>
                       \#=======================================================================<CR>
                       \<Esc>:set nopaste<CR>gi

iabbrev     _perl_     <Esc>:set paste<CR>gi
                       \#! /usr/bin/perl -w<CR>
                       \<CR>
                       \#=======================================================================<CR>
                       \# File name   : <C-R>=expand('%:t')<CR><CR>
                       \# Date        : <C-R>=strftime("%m - %d - %y")<CR><CR>
                       \# Description : <CR>
                       \# Email       : thip@uniquify.com <CR>
                       \#=======================================================================<CR>
                       \<Esc>:set nopaste<CR>gi

iabbrev     _tcl_      <Esc>:set paste<CR>gi
                       \#! /usr/bin/tclsh<CR>
                       \<CR>
                       \#=======================================================================<CR>
                       \# File name   : <C-R>=expand('%:t')<CR><CR>
                       \# Date        : <C-R>=strftime("%m - %d - %y")<CR><CR>
                       \# Description : <CR>
                       \# Email       : thip@uniquify.com <CR>
                       \#=======================================================================<CR>
                       \<Esc>:set nopaste<CR>gi

iabbrev     _awk_      <Esc>:set paste<CR>gi
                       \#! /bin/awk -f<CR>
                       \<CR>
                       \#=======================================================================<CR>
                       \# File name   : <C-R>=expand('%:t')<CR><CR>
                       \# Date        : <C-R>=strftime("%m - %d - %y")<CR><CR>
                       \# Description : <CR>
                       \# Email       : thip@uniquify.com <CR>
                       \#=======================================================================<CR>
                       \<Esc>:set nopaste<CR>gi

iabbrev     _for1_     #code for 1<CR><BS>
                       \for {set i 0} {$i < } {incr i} {<CR>
                       \<CR>
                       \}<CR>

abbrev      _for2_     #code for 2<CR><BS>
                       \for {set i 0}{$i < } {incr i} {<CR>
                       \    <CR>
                       \    for {set h 0}{$h < }{incr h} {<CR>
                       \      <CR>
                       \      <CR>
                       \    }<CR>
                       \}<CR>

" For C++, Perl
iabbrev     <silent>    while{      while () {<CR>}<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    until{      until () {<CR>}<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    for{        for () {<CR>}<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    foreach{    foreach () {<CR>}<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    if{         if () {<CR>}<Up><Esc>f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    elsif{      elsif () {<CR>}<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>

" For C-shell
iabbrev     <silent>    foreach_    foreach () <CR>end<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    while_      while () <CR>end<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    if_         if () <CR>endif<Up><Esc>0f)i<C-R>=EatChar('\s')<CR>
iabbrev     <silent>    awk_        awk '{}'<Left><Left><C-R>=EatChar('\s')<CR>
iabbrev     <silent>    sed_        sed -e ''<Left><C-R>=EatChar('\s')<CR>

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
nnoremap <Leader>cd :lcd %:p:h<CR>

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

" Open new file
nnoremap <Leader>o :new<CR>

" Quickly save file
nnoremap <Leader>w :w<CR>

" Copy and paste into system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Discover text search object
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" Invent move awesome key mappings
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" Quickly move to the beginning/end of the line
nnoremap <CR> G
nnoremap <BS> gg

" Select quickly the text you just paste
noremap gv `[v`]


