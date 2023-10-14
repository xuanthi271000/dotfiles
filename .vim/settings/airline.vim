let g:airline_theme='base16_gruvbox_dark_hard'          " Theme Gruvbox

let g:airline#extensions#tabline#enabled = 1            " Enable Tab bar
let g:airline#extensions#tabline#left_sep = ' '         " Enable Tab seperator
let g:airline#extensions#tabline#left_alt_sep = '|'     " Enable Tab seperator
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'        " Set Tab name as file name

let g:airline#extensions#whitespace#enabled = 0         " Remove warning whitespace

let g:airline_section_error=''

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
	let g:airline#extensions#tabline#left_sep     = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_left_sep                        = '▶'
	let g:airline_left_alt_sep                    = '»'
	let g:airline_right_sep                       = '◀'
	let g:airline_right_alt_sep                   = '«'
	let g:airline#extensions#branch#prefix        = '⤴' "➔, ➥, ⎇
	let g:airline#extensions#readonly#symbol      = '⊘'
	let g:airline#extensions#linecolumn#prefix    = '¶'
	let g:airline#extensions#paste#symbol         = 'ρ'
	let g:airline_symbols.linenr                  = '␊'
	let g:airline_symbols.branch                  = '⎇'
	let g:airline_symbols.paste                   = 'ρ'
	let g:airline_symbols.paste                   = 'Þ'
	let g:airline_symbols.paste                   = '∥'
	let g:airline_symbols.whitespace              = 'Ξ'
endif
