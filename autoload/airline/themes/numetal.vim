let s:white      = ["#e2d2af", 251]
let s:black = ["#26232b", 0]
let s:black2 = ["#56b6c2", 247]
let s:bblack = ["#433a4a", 236]
let s:blue       = ["#6c98ed", 111]
let s:purple     = ["#bb7afd", 135]
let s:red = ["#f53a55", 161]
let s:yellow = ["#e9a44b", 3]
let s:rad = ["#ff0ff0", 3]

let s:normal1   = [s:black[0],  s:blue[0],   s:black[1],  s:blue[1]]
let s:normal2   = [s:white[0],  s:bblack[0], s:white[1],  s:bblack[1]]
let s:normal3   = [s:white[0],  s:bblack[0], s:white[1],  s:bblack[1]]
let s:inactive1 = [s:black2[0], s:bblack[0], s:black2[1], s:bblack[1]]
let s:inactive2 = [s:black2[0], s:bblack[0], s:black2[1], s:bblack[1]]
let s:inactive3 = [s:black2[0], s:bblack[0], s:black2[1], s:bblack[1]]
let s:insert1   = [s:black[0],  s:red[0],    s:black[1],  s:red[1]]
let s:insert2   = [s:black[0],  s:red[0],    s:black[1],  s:red[1]]
let s:insert3   = [s:white[0],  s:bblack[0], s:white[1],  s:bblack[1]]
let s:replace1  = [s:black[0],  s:purple[0], s:black[1],  s:purple[1]]
let s:replace2  = [s:black[0],  s:purple[0], s:black[1],  s:purple[1]]
let s:replace3  = [s:white[0],  s:bblack[0], s:white[1],  s:bblack[1]]
let s:visual1   = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:visual2   = [s:black[0],  s:yellow[0], s:black[1],  s:yellow[1]]
let s:visual3   = [s:white[0],  s:bblack[0], s:white[1],  s:bblack[1]]
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
    \ 'airline_tab': [s:white[0], s:bblack[0], s:white[1], s:bblack[1], ''],
    \ 'airline_tabsel':  [s:black[0], s:blue[0], s:black[1], s:blue[1], '']
    \ }

    " \ 'airline_tabtype':  s:V1,
    " \ 'airline_tabfill':  s:TF,
    " \ 'airline_tabhid':  s:IA,
    " \ 'airline_tabmod':  s:I1
endif
