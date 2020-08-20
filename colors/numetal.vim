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

if !exists("g:numetal_variant")
  let g:numetal_variant = "limp_bizkit"
endif


" Extra colors
let s:black2 = ["#231E25", 8]
let s:black3 = ["#433a4a", 8]

" bg/fg
let s:black = ["#222222", 0]
let s:bblack = ["#5c5c5c", 8]
let s:white = ["#d2d2d2", 7]
let s:bwhite = ["#CBBB98", 7]
" let s:bwhite = ["#D9BEBE", 15]

" colors
" let s:red = ["#d6384f", 1]
let s:red = ["#fb4d59", 1]
let s:bred = ["#E36072", 9]
let s:green = ["#72b235", 2]
let s:bgreen = ["#5FA840", 10]
let s:yellow = ["#c39b14", 3]
let s:byellow = ["#bf9664", 11]
let s:blue = ["#8a6ff2", 4]
let s:bblue = ["#8E87DE", 12]
let s:magenta = ["#dc5e8d", 5]
let s:bmagenta = ["#C07ABB", 13]
let s:cyan = ["#8AAB9E", 6]
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
call s:HL('CursorLineNR', s:white)
call s:HL('ColorColumn', s:bblack, s:black2)
call s:HL('CursorLine', 'NONE', s:black2)
call s:HL('Normal', s:white, s:black)
hi link Normal NormalFloat
hi link Normal NormalNC

call s:HL('Pmenu', s:white, s:black2)
call s:HL('PmenuSel', s:black, s:white)
call s:HL('PmenuSbar', 'NONE', s:white)
call s:HL('PmenuThumb', 'NONE', s:black2)
call s:HL('QuickFixLine', s:black, s:white)
call s:HL('Search', s:black, s:white)
call s:HL('IncSearch', s:bblack, s:white, 'undercurl')
call s:HL('SpellBad', s:black, s:white, 'undercurl')
call s:HL('SpellLocal', s:black, s:white, 'undercurl')
call s:HL('SpellRare', s:black, s:white, 'undercurl')

call s:HL('Boolean', s:white)
call s:HL('Constant', s:white)
call s:HL('Character', s:white)
call s:HL('String', s:white)
call s:HL('Identifier', s:white)
call s:HL('Function', s:white)
call s:HL('Statement', s:white, 'none', 'bold')
call s:HL('Conditional', s:white)
call s:HL('Repeat', s:white)
call s:HL('Label', s:white)
call s:HL('Operator', s:white)
call s:HL('Keyword', s:white, 'none', 'bold')
call s:HL('Exception', s:white)

call s:HL('PreProc', s:white)
call s:HL('Include', s:white)
call s:HL('Define', s:white)
call s:HL('Macro', s:white)
call s:HL('PreCondit', s:white)

call s:HL('Type', s:white, 'none', 'none')
call s:HL('StorageClass', s:white)
call s:HL('Structure', s:white)
call s:HL('Typedef', s:white)

call s:HL('Special', s:white)
call s:HL('SpecialChar', s:white)
call s:HL('Delimiter', s:white)
call s:HL('Debug', s:white)

call s:HL('Error', s:black, s:white)

" statusline
call s:HL('StatusLine', s:black3, s:white)
call s:HL('StatusLineNC', s:black2, s:bwhite)

" tabline
call s:HL('Tabline', s:white, s:black3, 'none')
call s:HL('TablineFill', s:bblack)
call s:HL('TablineSel', s:black, s:white, 'bold')

" highlights
call s:HL('Visual', s:black, s:bwhite)
call s:HL('VisualNOS', s:black, s:white)
call s:HL('WarningMsg', s:white, 'NONE'. 'bold')
call s:HL('WildMenu', s:white, 'NONE'. 'bold')
call s:HL('Question', s:white, 'NONE'. 'bold')

call s:HL('Title', s:white)

call s:HL('Conceal', s:bblack)
call s:HL('Directory', s:bwhite)
call s:HL('NetrwSymlink', s:white)
call s:HL('EndOfBuffer', s:bblack)
call s:HL('VertSplit', s:black2, s:black2)
call s:HL('Folded', s:bblack, s:black)
call s:HL('FoldColumn', s:bblack, s:black)
call s:HL('SignColumn', s:white, s:black)

call s:HL('ModeMsg', s:white, 'NONE', 'bold')
call s:HL('MoreMsg', s:white, 'NONE', 'bold')
call s:HL('NonText', s:bblack)

call s:HL('MatchParen', s:white, s:bblack)

call s:HL('Comment', s:bblack)
call s:HL('SpecialComment', s:white)
call s:HL('TODO', s:white, 'NONE', 'bold')
call s:HL('DiffAdded', s:white, 'NONE')

call s:HL('typescriptClassName', s:white, 'none')
call s:HL('typescriptClassKeyword', s:white, 'none')
call s:HL('typescriptTypeReference', s:white, 'none')
call s:HL('typescriptMethodAccessor', s:white, 'none')
call s:HL('typescriptInterfaceKeyword', s:white)
call s:HL('typescriptInterfaceName', s:white)
call s:HL('typescriptExport', s:white)
call s:HL('typescriptCall', s:white, 'none')
call s:HL('typescriptAsyncFuncKeyword', s:white)
call s:HL('typescriptMember', s:white)
call s:HL('typescriptIdentifier', s:white)
call s:HL('typescriptGlobal', s:white)
call s:HL('typescriptAliasKeyword', s:white)
call s:HL('typescriptdotNotation', s:white)
call s:HL('typescriptNumber', s:white)
call s:HL('typescriptTestGlobal', s:white)
call s:HL('typescriptProp', s:white)
call s:HL('typescriptStringMethod', s:white)
call s:HL('typescriptCacheMethod', s:white)
call s:HL('typescriptVariable', s:white)
"
call s:HL('illuminatedWord', 'none', s:black3, 'underline')
"
call s:HL('rubyInstanceVariable', s:white)
call s:HL('rubyConstant', s:white)
call s:HL('rubyMethodName', s:white)
" call s:HL('rubyClassName', s:white)
call s:HL('rubyDefine', s:white)
call s:HL('rubySymbol', s:white, 'none', 'bold')
call s:HL('rubyHelper', s:white)
call s:HL('rubyInteger', s:white)
call s:HL('rubyMethodName', s:white)
call s:HL('rubyInclude', s:white)
call s:HL('erubyDelimiter', s:white)
call s:HL('htmlArg', s:white)
call s:HL('htmlH1', s:white, 'none', 'bold')
" call s:HL('rubyDefine', s:white)

" ale
call s:HL('ALEWarningSign', s:white, 'none')
call s:HL('ALEErrorSign', s:white, 'none')
" call s:HL('CocInfoSign', s:white, 'none')
" call s:HL('CocHintSign', s:white, 'none')

" coc
call s:HL('CocErrorSign', s:white, 'none')
call s:HL('CocWarningSign', s:white, 'none')
call s:HL('CocInfoSign', s:white, 'none')
call s:HL('CocHintSign', s:white, 'none')
