let g:airline#themes#one#palette = {}

function! airline#themes#one#refresh()
  let g:airline#themes#one#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['CursorLine', 'bg'], ['DiffAdd', 'fg'], 'none')
  let s:N2 = airline#themes#get_highlight2(['Normal', 'fg'], ['SpecialKey', 'fg'], 'none')
  let s:N3 = airline#themes#get_highlight('CursorLine')
  let g:airline#themes#one#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#one#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['DiffLine', 'fg'], 'none')
  let s:I2 = airline#themes#get_highlight2(['Normal', 'fg'], ['SpecialKey', 'fg'], 'none')
  let s:I3 = s:N3
  let g:airline#themes#one#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#one#palette.insert_modified = g:airline#themes#one#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Error', 'fg'], 'none')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#one#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#one#palette.replace_modified = g:airline#themes#one#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'none')
  let s:V2 = airline#themes#get_highlight2(['Normal', 'fg'], ['SpecialKey', 'fg'], 'none')
  let s:V3 = s:N3
  let g:airline#themes#one#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#one#palette.visual_modified = g:airline#themes#one#palette.normal_modified

  let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['CursorLine', 'bg'])
  let g:airline#themes#one#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#one#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }
  let g:airline#themes#one#palette.tabline = {}

  let s:mono_1 = ['#abb2bf', '145']
  let s:mono_3 = ['#5c6370', '59']
  let s:visual_grey  = ['#3e4452', '17']
  let s:syntax_bg     = ['#08090d', '16']
  let s:hue_1  = ['#56b6c2', '73'] " cyan
  let s:hue_2  = ['#61afef', '75'] " blue
  let s:hue_4  = ['#98c379', '114'] " green
  let s:special_grey = ['#3b4048', '16']
  let s:visual_grey  = ['#3e4452', '17']
  " call <sid>X('TabLine',      s:mono_1,        s:syntax_bg,      '')
  " call <sid>X('TabLineFill',  s:mono_3,        s:visual_grey,    'none')
  " call <sid>X('TabLineSel',   s:syntax_bg,     s:hue_2,          '')
  " dark gray: 2d323b
  
      " \ 'airline_tab':      ['#61afef', '#2d323b',  237, 250, ''],
let g:airline#themes#one#palette.tabline = {
      \ 'airline_tab':      [s:hue_2[0], '#2d323b',  s:hue_2[1], 250, ''],
      \ 'airline_tabsel':   ['#000000', s:hue_2[0], s:syntax_bg[1], s:hue_2[1], ''],
      \ 'airline_tabmod':   [s:syntax_bg[0], s:hue_4[0], s:syntax_bg[1], s:hue_4[1], ''],
      \ 'airline_tabfill':  [s:mono_3[0], s:syntax_bg[0], s:mono_3[1], s:syntax_bg[1], ''],
      \ }
      " \ 'airline_tabtype':  ['#00FF00', '#00FF00',  237, 248, ''],


endfunction

call airline#themes#one#refresh()

