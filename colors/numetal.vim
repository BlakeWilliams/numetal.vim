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
let s:black2 = ["#25343e", 8]
let s:black3 = ["#433a4a", 8]

" bg/fg
let s:black = ["#15242e", 0]
let s:bblack = ["#5c5d6a", 8]
let s:white = ["#ded5ba", 7]
let s:bwhite = ["#b9b6aa", 15]

" colors
let s:red = ["#cc7185", 1]
let s:bred = ["#cc7185", 9]
let s:green = ["#aab479", 2]
let s:bgreen = ["#5FA840", 10]
let s:yellow = ["#d5b27c", 3]
let s:byellow = ["#F29926", 11]
let s:blue = ["#78aace", 4]
let s:bblue = ["#8E87DE", 12]
let s:magenta = ["#c796b8", 5]
let s:bmagenta = ["#B06DAC", 13]
let s:cyan = ["#81b1ae", 6]
let s:bcyan = ["#65AAB1", 14]

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
hi link Normal NormalFloat
hi link Normal NormalNC

call s:HL('Pmenu', s:white, s:black2)
call s:HL('PmenuSel', s:black, s:yellow)
call s:HL('PmenuSbar', 'NONE', s:white)
call s:HL('PmenuThumb', 'NONE', s:black2)
call s:HL('QuickFixLine', s:black, s:yellow)
call s:HL('Search', s:black, s:byellow)
call s:HL('IncSearch', s:bblack, s:yellow, 'undercurl')
call s:HL('SpellBad', s:black, s:red, 'undercurl')
call s:HL('SpellLocal', s:black, s:yellow, 'undercurl')
call s:HL('SpellRare', s:black, s:red, 'undercurl')

call s:HL('Boolean', s:magenta)
call s:HL('Constant', s:white)
call s:HL('Character', s:red)
call s:HL('String', s:green)
call s:HL('Identifier', s:red)
call s:HL('Function', s:blue)
call s:HL('Statement', s:red)
call s:HL('Conditional', s:red)
call s:HL('Repeat', s:red)
call s:HL('Label', s:red)
call s:HL('Operator', s:cyan)
call s:HL('Keyword', s:red)
call s:HL('Exception', s:red)

call s:HL('PreProc', s:green)
call s:HL('Include', s:green)
call s:HL('Define', s:green)
call s:HL('Macro', s:red, 'none', 'none')
call s:HL('PreCondit', s:green)

call s:HL('Type', s:yellow, 'none', 'none')
call s:HL('StorageClass', s:red)
call s:HL('Structure', s:yellow)
call s:HL('Typedef', s:magenta)

call s:HL('Special', s:red)
call s:HL('SpecialChar', s:green)
call s:HL('Delimiter', s:white)
call s:HL('Debug', s:white)

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
call s:HL('TODO', s:byellow, 'NONE', 'bold')
call s:HL('DiffAdded', s:green, 'NONE')
call s:HL('typescriptClassName', s:white, 'none')
call s:HL('typescriptClassKeyword', s:red, 'none')
call s:HL('typescriptTypeReference', s:yellow, 'none')
call s:HL('typescriptMethodAccessor', s:red, 'none')
call s:HL('typescriptInterfaceKeyword', s:red)
call s:HL('typescriptExport', s:red)
call s:HL('typescriptCall', s:yellow, 'none')
call s:HL('typescriptAsyncFuncKeyword', s:red)
call s:HL('typescriptMember', s:red)
call s:HL('typescriptIdentifier', s:blue)
call s:HL('typescriptGlobal', s:blue)
call s:HL('typescriptAliasKeyword', s:red)
call s:HL('typescriptdotNotation', s:yellow)
call s:HL('typescriptNumber', s:green)
call s:HL('typescriptTestGlobal', s:bblue)
"
call s:HL('illuminatedWord', 'none', s:black3, 'underline')
"
call s:HL('rubyInstanceVariable', s:blue)
call s:HL('rubyConstant', s:yellow)
call s:HL('rubyMethodName', s:white)
" call s:HL('rubyClassName', s:magenta)
call s:HL('rubyDefine', s:red)
call s:HL('rubySymbol', s:white, 'none', 'bold')
call s:HL('rubyHelper', s:magenta)
call s:HL('rubyInteger', s:green)
call s:HL('rubyMethodName', s:blue)
call s:HL('rubyInclude', s:red)
" call s:HL('rubyDefine', s:blue)

" ale
call s:HL('ALEWarningSign', s:yellow, 'none')
call s:HL('ALEErrorSign', s:red, 'none')
" call s:HL('CocInfoSign', s:magenta, 'none')
" call s:HL('CocHintSign', s:green, 'none')

" coc
call s:HL('CocErrorSign', s:yellow, 'none')
call s:HL('CocWarningSign', s:yellow, 'none')
call s:HL('CocInfoSign', s:magenta, 'none')
call s:HL('CocHintSign', s:green, 'none')
