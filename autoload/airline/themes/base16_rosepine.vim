" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Summerfruit Scheme by Christopher Corley (http://cscorley.github.io/)
let g:airline#themes#base16_rosepine#palette = {}
let s:gui00 = "#faf4ed"
let s:gui01 = "#fffaf3"
let s:gui02 = "#f2e9e1"
let s:gui03 = "#9893a5"
let s:gui04 = "#797593"
let s:gui05 = "#575279"
let s:gui06 = "#b4637a"
let s:gui07 = "#ea9d34"
let s:gui08 = "#d7827e"
let s:gui09 = "#286983"
let s:gui0A = "#56949f"
let s:gui0B = "#907aa9"
let s:gui0C = "#f4ede8"
let s:gui0D = "#dfdad9"
let s:gui0E = "#cecacd"
let s:gui0F = "#cecacd"

let s:cterm00 = 233
let s:cterm01 = 234
let s:cterm02 = 236
let s:cterm03 = 239
let s:cterm04 = 249
let s:cterm05 = 252
let s:cterm06 = 253
let s:cterm07 = 15
let s:cterm08 = 198
let s:cterm09 = 208
let s:cterm0A = 142
let s:cterm0B = 2
let s:cterm0C = 37
let s:cterm0D = 68
let s:cterm0E = 127
let s:cterm0F = 167

let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
let s:N2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_rosepine#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
let s:I2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_rosepine#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_rosepine#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_rosepine#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let g:airline#themes#base16_rosepine#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_rosepine#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
