let s:black2 = ["#231E25", 8]
let s:black3 = ["#433a4a", 8]

let s:black = ["#1C080C", 0]
let s:bblack = ["#885265", 8]
let s:blue = ["#9694BE", 4]
let s:magenta = ["#B488AA", 13]
let s:yellow = ["#E9A44B", 3]
let s:red = ["#D75164", 1]
let s:white = ["#e2d2af", 7]
let s:byellow = ["#F29926", 11]
let s:green = ["#8BA05D", 2]

let s:normal1   = [s:black[0],  s:bblack[0],   s:black[1],  s:bblack[1]]
let s:normal2   = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:normal3   = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:inactive1 = [s:white[0], s:black2[0], s:white[1], s:black2[1]]
let s:inactive2 = [s:white[0], s:black2[0], s:white[1], s:black2[1]]
let s:inactive3 = [s:white[0], s:black2[0], s:white[1], s:black2[1]]
let s:insert1   = [s:black[0],  s:green[0],    s:black[1],  s:green[1]]
let s:insert2   = [s:black[0],  s:green[0],    s:black[1],  s:green[1]]
let s:insert3   = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:replace1  = [s:black[0],  s:byellow[0], s:black[1],  s:byellow[1]]
let s:replace2  = [s:black[0],  s:byellow[0], s:black[1],  s:byellow[1]]
let s:replace3  = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:visual1   = [s:black[0],  s:byellow[0], s:black[1],  s:byellow[1]]
let s:visual2   = [s:black[0],  s:byellow[0], s:black[1],  s:byellow[1]]
let s:visual3   = [s:white[0],  s:black2[0], s:white[1],  s:black2[1]]
let s:warning   = [s:black[0],  s:byellow[0], s:black[1],  s:byellow[1]]
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
        \ 'airline_tab': [s:black[0], s:bblack[0], s:black[1], s:bblack[1], ''],
        \ 'airline_tabsel':  [s:black[0], s:blue[0], s:black[1], s:blue[1], ''],
        \ 'airline_tabtype':['#afd700', '#204d20','148','22'],
        \ 'airline_tabmod': [s:black[0], s:red[0], s:black[1], s:red[1]],
        \ 'airline_tabmod_unsel': [s:black[0], s:red[0], s:black[1], s:red[1]],
        \ }
endif
