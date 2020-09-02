" Extra colors
let s:black2 = ["#1a303f", 8]
let s:black3 = ["#3d5565", 8]
let s:black4 = ["#223B4B", 8]

" bg/fg
let s:black = ["#15242e", 0]
let s:bblack = ["#446073", 8]
let s:white = ["#cac3ac", 7]
let s:bwhite = ["#b9b6aa", 15]

" colors
let s:red = ["#ee6978", 1]
let s:bred = ["#cc7185", 9]
let s:green = ["#aab479", 2]
let s:bgreen = ["#5FA840", 10]
let s:yellow = ["#ebb076", 3]
let s:byellow = ["#F29926", 11]
let s:blue = ["#78aace", 4]
let s:bblue = ["#8E87DE", 12]
let s:magenta = ["#c993b8", 5]
let s:bmagenta = ["#B06DAC", 13]
let s:cyan = ["#89bdb6", 6]
let s:bcyan = ["#65AAB1", 14]

let s:normal1   = [s:black[0],  s:green[0],   s:black[1],  s:green[1]]
let s:normal2   = [s:white[0],  s:black4[0], s:white[1],  s:black4[1]]
let s:normal3   = [s:white[0],  s:black4[0], s:white[1],  s:black4[1]]
let s:inactive1 = [s:bwhite[0], s:black2[0], s:bwhite[1], s:black2[1]]
let s:inactive2 = [s:bwhite[0], s:black2[0], s:bwhite[1], s:black2[1]]
let s:inactive3 = [s:bwhite[0], s:black2[0], s:bwhite[1], s:black2[1]]
let s:insert1   = [s:black[0],  s:red[0],    s:black[1],  s:red[1]]
let s:insert2   = [s:black[0],  s:red[0],    s:black[1],  s:red[1]]
let s:insert3   = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:replace1  = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:replace2  = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:replace3  = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:visual1   = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:visual2   = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:visual3   = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:warning   = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:error     = [s:black[0],  s:red[0],    s:black[1],  s:red[1]]

if exists('g:airline_theme')
  let g:airline#themes#numetal#palette                          = {}
  let g:airline#themes#numetal#palette.normal                   = airline#themes#generate_color_map(s:normal1, s:normal1, s:normal3)
  let g:airline#themes#numetal#palette.normal.airline_warning   = s:warning
  let g:airline#themes#numetal#palette.normal.airline_error     = s:error
  let g:airline#themes#numetal#palette.insert                   = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
  let g:airline#themes#numetal#palette.insert.airline_warning   = s:warning
  let g:airline#themes#numetal#palette.insert.airline_error     = s:error
  let g:airline#themes#numetal#palette.replace                  = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
  let g:airline#themes#numetal#palette.replace.airline_warning  = s:warning
  let g:airline#themes#numetal#palette.replace.airline_error    = s:error
  let g:airline#themes#numetal#palette.visual                   = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
  let g:airline#themes#numetal#palette.visual.airline_warning   = s:warning
  let g:airline#themes#numetal#palette.visual.airline_error     = s:error
  let g:airline#themes#numetal#palette.inactive                 = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
  let g:airline#themes#numetal#palette.inactive.airline_warning = s:warning
  let g:airline#themes#numetal#palette.inactive.airline_error   = s:error

  let g:airline#themes#numetal#palette.tabline = {
        \ 'airline_tab': [s:black[0], s:black3[0], s:black[1], s:black3[1], ''],
        \ 'airline_tabfill': [s:black[0], s:black[0], s:black[1], s:black[1], ''],
        \ 'airline_tabsel':  [s:black[0], s:green[0], s:black[1], s:green[1], ''],
        \ 'airline_tabtype':['#afd700', '#204d20','148','22'],
        \ 'airline_tabmod': [s:black[0], s:green[0], s:black[1], s:green[1]],
        \ 'airline_tabmod_unsel': [s:black[0], s:red[0], s:black[1], s:red[1]],
        \ }
endif
