" -----------------------------------------------------------------------------
" File: numetal.vim
" Description: numetal but for vim
" Author: Blake Williams <blake@blakewilliams.me>
" Source: https://github.com/blakewilliams/numetal
" -----------------------------------------------------------------------------

highlight clear

set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="numetal"

" Extra colors
let s:black2 = ["#2e282e", 8]
let s:black3 = ["#433a4a", 8]

" Base 16
let s:black = ["#26232b", 0]
let s:bblack = ["#5f5861", 8]
let s:red = ["#f53a55", 1]
let s:bred = ["#cf4855", 9]
let s:green = ["#38ce5d", 2]
let s:bgreen = ["#5ddd7d", 10]
let s:yellow = ["#e9a44b", 3]
let s:byellow = ["#e2b356", 11]
let s:blue = ["#6c98ed", 4]
let s:bblue = ["#a08eff", 12]
let s:magenta = ["#e36ca6", 5]
let s:bmagenta = ["#bb7afd", 13]
let s:cyan = ["#56b6c2", 6]
let s:bcyan = ["#59bcd7", 14]
let s:white = ["#e2d2af", 7]
let s:bwhite = ["#b6a889", 15]

let g:terminal_color_0 = s:black[0]
let g:terminal_color_1 = s:red[0]
let g:terminal_color_2 = s:green[0]
let g:terminal_color_3 = s:yellow[0]
let g:terminal_color_4 = s:blue[0]
let g:terminal_color_5 = s:magenta[0]
let g:terminal_color_6 = s:cyan[0]
let g:terminal_color_7 = s:white[0]
let g:terminal_color_8 = s:bblack[0]
let g:terminal_color_9 = s:bred[0]
let g:terminal_color_10 = s:bgreen[0]
let g:terminal_color_11 = s:byellow[0]
let g:terminal_color_12 = s:bblue[0]
let g:terminal_color_13 = s:bmagenta[0]
let g:terminal_color_14 = s:bcyan[0]
let g:terminal_color_15 = s:bwhite[0]

function! s:HL(group, fg, ...)
  let highlightstring = 'hi ' . a:group . ' '

  if type(a:fg) is v:t_string
    let highlightstring .= 'guifg=NONE ctermfg=NONE '
  else
    let highlightstring .= 'guifg=' . a:fg[0] . ' '
    let highlightstring .= 'ctermfg=' . a:fg[1] . ' '
  endif

  if a:0 > 0
    if type(a:1) is v:t_string
      let highlightstring .= 'guibg=NONE ctermbg=NONE '
    else
      let highlightstring .= 'guibg=' . a:1[0] . ' '
      let highlightstring .= 'ctermbg=' . a:1[1] . ' '
    endif
  else
    let highlightstring .= 'guibg=NONE ctermbg=NONE'
  endif

  if a:0 > 1
    let highlightstring .= 'gui=' . a:2 . ' '
  endif

  execute highlightstring
endfunction

call s:HL('SignColumn', s:black, s:bblack)
call s:HL('LineNr', s:bblack)
call s:HL('CursorLineNR', s:byellow)
call s:HL('ColorColumn', s:bblack, s:black2)
call s:HL('CursorLine', 'NONE', s:black2)
call s:HL('Normal', s:white, s:black)
call s:HL('Boolean', s:yellow)
hi link Normal NormalFloat
hi link Normal NormalNC

call s:HL('Pmenu', s:white, s:black3)
call s:HL('PmenuSel', s:black, s:yellow)
call s:HL('PmenuSbar', 'NONE', s:white)
call s:HL('PmenuThumb', 'NONE', s:black2)
call s:HL('QuickFixLine', s:black, s:yellow)
call s:HL('Search', s:black, s:byellow)
call s:HL('IncSearch', s:bblack, s:yellow, 'undercurl')
call s:HL('SpellBad', s:black, s:red, 'undercurl')
call s:HL('SpellLocal', s:black, s:yellow, 'undercurl')
call s:HL('SpellRare', s:black, s:bmagenta, 'undercurl')

call s:HL('Constant', s:magenta)
call s:HL('Character', s:red)
call s:HL('String', s:yellow)
call s:HL('Identifier', s:bmagenta)
call s:HL('Function', s:bblue)
call s:HL('Statement', s:red)
call s:HL('Conditional', s:red)
call s:HL('Repeat', s:red)
call s:HL('Label', s:red)
call s:HL('Operator', s:white)
call s:HL('Keyword', s:red)
call s:HL('Exception', s:red)

call s:HL('PreProc', s:cyan)
call s:HL('Include', s:cyan)
call s:HL('Define', s:cyan)
call s:HL('Macro', s:red, 'none', 'none')
call s:HL('PreCondit', s:cyan)

call s:HL('Type', s:bblue, 'none', 'none')
call s:HL('StorageClass', s:yellow)
call s:HL('Structure', s:yellow)
call s:HL('Typedef', s:yellow)

call s:HL('Special', s:red)
call s:HL('SpecialChar', s:red)
call s:HL('Delimiter', s:red)
call s:HL('Debug', s:red)

call s:HL('Error', s:black, s:red)

" statusline
call s:HL('StatusLine', s:black3, s:white)
call s:HL('StatusLineNC', s:black2, s:bwhite)

" tabline
call s:HL('Tabline', s:white, s:black3, 'none')
call s:HL('TablineFill', s:bblack)
call s:HL('TablineSel', s:black, s:white, 'bold')

" highlights
call s:HL('Visual', s:black, s:white)
call s:HL('VisualNOS', s:black, s:white)
call s:HL('WarningMsg', s:red, 'NONE'. 'bold')
call s:HL('WildMenu', s:red, 'NONE'. 'bold')
call s:HL('Question', s:red, 'NONE'. 'bold')

call s:HL('Title', s:red)

call s:HL('Conceal', s:bblack)
call s:HL('Directory', s:bblue)
call s:HL('NetrwSymlink', s:green)
call s:HL('EndOfBuffer', s:bblack)
call s:HL('VertSplit', s:black2, s:black2)
call s:HL('Folded', s:bblack, s:black)
call s:HL('FoldColumn', s:bblack, s:black)
call s:HL('SignColumn', s:white, s:black)

call s:HL('ModeMsg', s:yellow, 'NONE', 'bold')
call s:HL('MoreMsg', s:yellow, 'NONE', 'bold')
call s:HL('NonText', s:bblack)

call s:HL('MatchParen', s:white, s:bblack)

call s:HL('Comment', s:bblack)
call s:HL('SpecialComment', s:red)
call s:HL('TODO', s:byellow, 'NONE')
call s:HL('DiffAdded', s:green, 'NONE')

call s:HL('typescriptClassName', s:bblue, 'none', 'bold')

call s:HL('illuminatedWord', 'none', s:black3, 'underline')
