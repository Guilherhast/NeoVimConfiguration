"
"Theme TODO "
"The todotag should be white bg with bold black fg
"
"Colors find in:
"https://www.ditig.com/256-colors-cheat-sheet
"
"Int float and boolean
"Should be cyan of different shades
"Maybe light magenta as strings will be purple
"
"
"The name of the propperty will be a green near cyan
"{ nameOfPropperty: property}
"
"Different {} () []
"matched should be of different collors.
"
"matchParen - inverted fg
"visual - invenrted bg and fg
"hi Visual           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=Reverse
"
"The cursor under the matched {
"hi MatchParen       guisp=NONE guifg=#080808 guibg=#afffff ctermfg=15    ctermbg=16  gui=bold           cterm=bold
"Working Macro
"->30GdG\ç:w:so %30G
"The ~ When I create a file should be Blue
"Maybe it is better to remove focus from ( function, let, Const ) and put on
"this...





"""
" Name: restNight.vim
"""

set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='restNight'
set t_Co=256

" misc

hi ColorColumn      guisp=NONE guifg=NONE    guibg=#080808 ctermfg=NONE ctermbg=232  gui=NONE           cterm=NONE
hi Conceal          guisp=NONE guifg=#ff0000 guibg=NONE    ctermfg=196  ctermbg=NONE gui=NONE           cterm=NONE
hi Cursor           guisp=NONE guifg=NONE    guibg=#ffffff ctermfg=NONE ctermbg=231  gui=NONE           cterm=NONE
hi lCursor          guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorIM         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorColumn     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorLine       guisp=NONE guifg=#ffffff guibg=#0000ff ctermfg=231  ctermbg=21   gui=NONE           cterm=NONE
hi Directory        guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=bold,underline cterm=bold,underline
hi DiffAdd          guisp=NONE guifg=#00ff00 guibg=NONE    ctermfg=46   ctermbg=NONE gui=NONE           cterm=NONE
hi DiffChange       guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE           cterm=NONE
hi DiffDelete       guisp=NONE guifg=#ff0000 guibg=NONE    ctermfg=196  ctermbg=NONE gui=NONE           cterm=NONE
hi DiffText         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi EndOfBuffer      guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=NONE           cterm=NONE
hi ErrorMsg         guisp=NONE guifg=#ff0000 guibg=#000000 ctermfg=196  ctermbg=16   gui=NONE           cterm=NONE
hi VertSplit        guisp=NONE guifg=#6c6c6c guibg=#3a3a3a ctermfg=242  ctermbg=237  gui=NONE           cterm=NONE
hi Folded           guisp=NONE guifg=#303030 guibg=#000000 ctermfg=236  ctermbg=16   gui=NONE           cterm=NONE
hi FoldColumn       guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi SignColumn       guisp=NONE guifg=#4e4e4e guibg=NONE    ctermfg=239  ctermbg=NONE gui=NONE           cterm=NONE
hi IncSearch        guisp=NONE guifg=#080808 guibg=#87ff00 ctermfg=232  ctermbg=118  gui=bold           cterm=bold
hi LineNr           guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=bold           cterm=bold
hi LineNrAbove      guisp=NONE guifg=#8a8a8a guibg=NONE    ctermfg=245  ctermbg=NONE gui=NONE           cterm=NONE
hi LineNrBelow      guisp=NONE guifg=#8a8a8a guibg=NONE    ctermfg=245  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorLineNr     guisp=NONE guifg=#8a8a8a guibg=NONE    ctermfg=245  ctermbg=NONE gui=bold,underline cterm=bold,underline
hi MatchParen       guisp=NONE guifg=#ffffff guibg=#0000ff ctermfg=231  ctermbg=21   gui=bold           cterm=bold
hi ModeMsg          guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi MoreMsg          guisp=NONE guifg=#d70000 guibg=NONE    ctermfg=160  ctermbg=NONE gui=NONE           cterm=NONE
hi NonText          guisp=NONE guifg=#ff0087 guibg=NONE    ctermfg=198  ctermbg=NONE gui=NONE           cterm=NONE
hi Pmenu            guisp=NONE guifg=#ffffff guibg=#121212 ctermfg=231  ctermbg=233  gui=NONE           cterm=NONE
hi PmenuSel         guisp=NONE guifg=#ffffff guibg=#00005f ctermfg=231  ctermbg=17   gui=bold           cterm=bold
hi PmenuSbar        guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=NONE           cterm=NONE
hi PmenuThumb       guisp=NONE guifg=#080808 guibg=NONE    ctermfg=232  ctermbg=NONE gui=NONE           cterm=NONE
hi Question         guisp=NONE guifg=#00ff00 guibg=NONE    ctermfg=46   ctermbg=NONE gui=NONE           cterm=NONE
hi QuickFixLine     guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE           cterm=NONE
hi Search           guisp=NONE guifg=#080808 guibg=#00ff00 ctermfg=232  ctermbg=46   gui=NONE           cterm=NONE
hi SpecialKey       guisp=NONE guifg=#af5f00 guibg=NONE    ctermfg=130  ctermbg=NONE gui=NONE           cterm=NONE
hi SpellBad         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi SpellCap         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=underline      cterm=underline
hi SpellLocal       guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi SpellRare        guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi StatusLine       guisp=NONE guifg=#ffffff guibg=#080808 ctermfg=231  ctermbg=232  gui=NONE           cterm=NONE
hi StatusLineNC     guisp=NONE guifg=#626262 guibg=#d0d0d0 ctermfg=241  ctermbg=252  gui=NONE           cterm=NONE
hi StatusLineTerm   guisp=NONE guifg=#0087d7 guibg=#626262 ctermfg=32   ctermbg=241  gui=NONE           cterm=NONE
hi StatusLineTermNC guisp=NONE guifg=#0000ff guibg=#d0d0d0 ctermfg=21   ctermbg=252  gui=NONE           cterm=NONE
hi TabLine          guisp=NONE guifg=#ffffff guibg=#767676 ctermfg=231  ctermbg=243  gui=NONE           cterm=NONE
hi TabLineFill      guisp=NONE guifg=#080808 guibg=#585858 ctermfg=232  ctermbg=240  gui=NONE           cterm=NONE
hi TabLineSel       guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=bold           cterm=bold
hi Terminal         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi Title            guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE           cterm=NONE
hi Visual           guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16   ctermbg=231  gui=NONE           cterm=NONE
hi VisualNOS        guisp=NONE guifg=#585858 guibg=#d0d0d0 ctermfg=240  ctermbg=252  gui=NONE           cterm=NONE
hi WarningMsg       guisp=NONE guifg=#ff8700 guibg=#080808 ctermfg=208  ctermbg=232  gui=NONE           cterm=NONE
hi WildMenu         guisp=NONE guifg=#ffffff guibg=#0000ff ctermfg=231  ctermbg=21   gui=NONE           cterm=NONE

" major

hi Normal     guisp=NONE guifg=#d7ffff guibg=#000000 ctermfg=195 ctermbg=NONE gui=NONE          cterm=NONE
hi Comment    guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240 ctermbg=NONE gui=NONE          cterm=NONE
hi Constant   guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28  ctermbg=NONE gui=NONE          cterm=NONE
hi Identifier guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63  ctermbg=NONE gui=bold          cterm=bold
hi Statement  guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226 ctermbg=NONE gui=NONE          cterm=NONE
hi PreProc    guisp=NONE guifg=#5f005f guibg=NONE    ctermfg=53  ctermbg=NONE gui=NONE          cterm=NONE
hi Type       guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40  ctermbg=NONE gui=NONE          cterm=NONE
hi Special    guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100 ctermbg=NONE gui=NONE          cterm=NONE
hi Underlined guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=underline     cterm=underline
hi Ignore     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=strikethrough cterm=strikethrough
hi Error      guisp=NONE guifg=#800000 guibg=#080808 ctermfg=88  ctermbg=232  gui=bold          cterm=bold
hi Todo       guisp=NONE guifg=#080808 guibg=#ffffff ctermfg=232 ctermbg=231  gui=bold          cterm=bold

" minor

hi String         guisp=NONE guifg=#8700ff guibg=NONE    ctermfg=93  ctermbg=NONE gui=NONE        cterm=NONE
hi Character      guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54  ctermbg=NONE gui=NONE        cterm=NONE
hi Number         guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63  ctermbg=NONE gui=NONE        cterm=NONE
hi Boolean        guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62  ctermbg=NONE gui=NONE        cterm=NONE
hi Float          guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99  ctermbg=NONE gui=NONE        cterm=NONE
hi Function       guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=bold        cterm=bold
hi Conditional    guisp=NONE guifg=#ffffaf guibg=NONE    ctermfg=229 ctermbg=NONE gui=NONE        cterm=NONE
hi Repeat         guisp=NONE guifg=#ffff5f guibg=NONE    ctermfg=227 ctermbg=NONE gui=NONE        cterm=NONE
hi Label          guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47  ctermbg=NONE gui=NONE        cterm=NONE
hi Operator       guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82  ctermbg=NONE gui=NONE        cterm=NONE
hi Keyword        guisp=NONE guifg=#d7d700 guibg=NONE    ctermfg=184 ctermbg=NONE gui=bold        cterm=bold
hi Exception      guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208 ctermbg=NONE gui=NONE        cterm=NONE
hi Include        guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226 ctermbg=NONE gui=bold        cterm=bold
hi Define         guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28  ctermbg=NONE gui=NONE        cterm=NONE
hi Macro          guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28  ctermbg=NONE gui=bold        cterm=bold
hi PreCondit      guisp=NONE guifg=#87d700 guibg=NONE    ctermfg=112 ctermbg=NONE gui=NONE        cterm=NONE
hi StorageClass   guisp=NONE guifg=#00ff00 guibg=NONE    ctermfg=46  ctermbg=NONE gui=bold        cterm=bold
hi Structure      guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40  ctermbg=NONE gui=NONE        cterm=NONE
hi Typedef        guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40  ctermbg=NONE gui=bold        cterm=bold
hi SpecialChar    guisp=NONE guifg=#00005f guibg=NONE    ctermfg=17  ctermbg=NONE gui=bold,italic cterm=bold,italic
hi Tag            guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=51  ctermbg=NONE gui=NONE        cterm=NONE
hi Delimiter      guisp=NONE guifg=#eeeeee guibg=NONE    ctermfg=255 ctermbg=NONE gui=bold        cterm=bold
hi SpecialComment guisp=NONE guifg=#808080 guibg=NONE    ctermfg=244 ctermbg=NONE gui=NONE        cterm=NONE
hi Debug          guisp=NONE guifg=#d70000 guibg=#262626 ctermfg=160 ctermbg=235  gui=bold        cterm=bold

