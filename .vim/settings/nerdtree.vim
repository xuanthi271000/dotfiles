"" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" Appear hide file 
let NERDTreeShowHidden=1

" autocmd VimEnter * NERDTree | wincmd p
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"" Mo cung Nerdtree cho tab moi, mac dinh moi tab se mo 1 cai moi
autocmd BufWinEnter * silent NERDTreeMirror

"" Tu dong NERDTree khi dong tab, mac dinh giu lai NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") 
	      \ && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['node_modules','\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize=40

"" F2 to find
map <silent> <F2> :NERDTreeFind<CR>

"" F3 to toggle 
map <silent> <F3> :NERDTreeToggle<CR>

