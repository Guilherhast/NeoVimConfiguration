"""
" Name: chewingGum.vim
"""

set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='chewingGum'
set t_Co=256

"## Flavors

"## Neutral

"## Light
hi	BananaLight		guisp=NONE	guifg=#ffff87	guibg=NONE	gui=NONE		ctermfg=228	ctermbg=NONE	cterm=NONE	" Khaki1
hi	StrawBerryLight	guisp=NONE	guifg=#ffafaf	guibg=NONE	gui=NONE		ctermfg=217	ctermbg=NONE	cterm=NONE	" LightPink1
hi	StrawBerryLight		guisp=NONE	guifg=#ff8787	guibg=NONE	gui=NONE		ctermfg=210	ctermbg=NONE	cterm=NONE	" LightCoral
hi	OrangeLight		guisp=NONE	guifg=#ffd7af	guibg=NONE	gui=NONE		ctermfg=223	ctermbg=NONE	cterm=NONE	" NavajoWhite1
hi	LimeLight		guisp=NONE	guifg=#87ff87	guibg=NONE	gui=NONE		ctermfg=120	ctermbg=NONE	cterm=NONE	" LightGreen
hi	GrapeLight		guisp=NONE	guifg=#87afff	guibg=NONE	gui=NONE		ctermfg=111	ctermbg=NONE	cterm=NONE	" SkyBlue2
hi	SkyLight		guisp=NONE	guifg=#8787ff	guibg=NONE	gui=NONE		ctermfg=105	ctermbg=NONE	cterm=NONE	" LightSlateBlue

"## Strong
hi GrapeStrong guisp=NONE guifg=#ff00ff guibg=NONE ctermfg=13 ctermbg=0 gui=NONE cterm=NONE

" misc

hi ColorColumn      guisp=NONE guifg=NONE    guibg=#080808 ctermfg=NONE ctermbg=232  gui=NONE           cterm=NONE
hi Conceal          guisp=NONE guifg=#ff0000 guibg=NONE    ctermfg=196  ctermbg=NONE gui=NONE           cterm=NONE
hi Cursor           guisp=NONE guifg=NONE    guibg=#ffffff ctermfg=NONE ctermbg=231  gui=NONE           cterm=NONE
hi lCursor          guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorIM         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorColumn     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorLine       guisp=NONE guifg=#ffffff guibg=#0000ff ctermfg=231  ctermbg=21   gui=NONE           cterm=NONE
hi Directory        guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE
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
hi IncSearch        guisp=NONE guifg=#080808 guibg=#87ff00 ctermfg=232  ctermbg=118  gui=BOLD           cterm=BOLD
hi LineNr           guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=BOLD           cterm=BOLD
hi LineNrAbove      guisp=NONE guifg=#8a8a8a guibg=NONE    ctermfg=245  ctermbg=NONE gui=NONE           cterm=NONE
hi LineNrBelow      guisp=NONE guifg=#8a8a8a guibg=NONE    ctermfg=245  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorLineNr     guisp=NONE guifg=#8a8a8a guibg=NONE    ctermfg=245  ctermbg=NONE gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE
hi MatchParen       guisp=NONE guifg=#ffffff guibg=#0000ff ctermfg=231  ctermbg=21   gui=BOLD           cterm=BOLD
hi ModeMsg          guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi MoreMsg          guisp=NONE guifg=#d70000 guibg=NONE    ctermfg=160  ctermbg=NONE gui=NONE           cterm=NONE
hi NonText          guisp=NONE guifg=#ff0087 guibg=NONE    ctermfg=198  ctermbg=NONE gui=NONE           cterm=NONE
hi Pmenu            guisp=NONE guifg=#ffffff guibg=#121212 ctermfg=231  ctermbg=233  gui=NONE           cterm=NONE
hi PmenuSel         guisp=NONE guifg=#ffffff guibg=#00005f ctermfg=231  ctermbg=17   gui=BOLD           cterm=BOLD
hi PmenuSbar        guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=NONE           cterm=NONE
hi PmenuThumb       guisp=NONE guifg=#080808 guibg=NONE    ctermfg=232  ctermbg=NONE gui=NONE           cterm=NONE
hi Question         guisp=NONE guifg=#00ff00 guibg=NONE    ctermfg=46   ctermbg=NONE gui=NONE           cterm=NONE
hi QuickFixLine     guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE           cterm=NONE
hi Search           guisp=NONE guifg=#080808 guibg=#00ff00 ctermfg=232  ctermbg=46   gui=NONE           cterm=NONE
hi SpecialKey       guisp=NONE guifg=#af5f00 guibg=NONE    ctermfg=130  ctermbg=NONE gui=NONE           cterm=NONE
hi SpellBad         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi SpellCap         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=UNDERLINE      cterm=UNDERLINE
hi SpellLocal       guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi SpellRare        guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi StatusLine       guisp=NONE guifg=#ffffff guibg=#080808 ctermfg=231  ctermbg=232  gui=NONE           cterm=NONE
hi StatusLineNC     guisp=NONE guifg=#626262 guibg=#d0d0d0 ctermfg=241  ctermbg=252  gui=NONE           cterm=NONE
hi StatusLineTerm   guisp=NONE guifg=#0087d7 guibg=#626262 ctermfg=32   ctermbg=241  gui=NONE           cterm=NONE
hi StatusLineTermNC guisp=NONE guifg=#0000ff guibg=#d0d0d0 ctermfg=21   ctermbg=252  gui=NONE           cterm=NONE
hi TabLine          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE           cterm=NONE
hi TabLineFill      guisp=NONE guifg=#585858 guibg=#121212 ctermfg=240  ctermbg=233  gui=NONE           cterm=NONE
hi TabLineSel       guisp=NONE guifg=#ffffff guibg=#000000    ctermfg=231  ctermbg=0 gui=BOLD           cterm=BOLD
hi Terminal         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi Title            guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE           cterm=NONE
hi Visual           guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16   ctermbg=231  gui=NONE           cterm=NONE
hi VisualNOS        guisp=NONE guifg=#585858 guibg=#d0d0d0 ctermfg=240  ctermbg=252  gui=NONE           cterm=NONE
hi WarningMsg       guisp=NONE guifg=#ff8700 guibg=#080808 ctermfg=208  ctermbg=232  gui=NONE           cterm=NONE
hi WildMenu         guisp=NONE guifg=#ffffff guibg=#0000ff ctermfg=231  ctermbg=21   gui=NONE           cterm=NONE


" major
hi	Normal		guisp=NONE	guifg=#ff8787	guibg=NONE	gui=NONE		ctermfg=210	ctermbg=NONE	cterm=NONE	" LightCoral
hi Comment    guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240 ctermbg=NONE gui=NONE          cterm=NONE
hi Constant   guisp=NONE guifg=#005fff guibg=NONE    ctermfg=27  ctermbg=NONE gui=NONE          cterm=NONE
hi Identifier guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63  ctermbg=NONE gui=BOLD          cterm=BOLD
hi Statement guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=BOLD        cterm=BOLD
hi PreProc    guisp=NONE guifg=#5f00d7 guibg=NONE    ctermfg=56  ctermbg=NONE gui=NONE          cterm=NONE
hi	Type		guisp=NONE	guifg=#87ff87	guibg=NONE	gui=NONE		ctermfg=120	ctermbg=NONE	cterm=NONE	" LightGreen
hi Special    guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99 ctermbg=NONE gui=NONE          cterm=NONE
hi Underlined guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=UNDERLINE     cterm=UNDERLINE
hi Ignore     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=strikethrough cterm=strikethrough
hi Error      guisp=NONE guifg=#ffd7d7 guibg=#080000 ctermfg=224  ctermbg=88  gui=BOLD          cterm=BOLD
hi Todo       guisp=NONE guifg=#080808 guibg=#ffffff ctermfg=232 ctermbg=231  gui=BOLD          cterm=BOLD

" Coc
hi CocErrorSign guisp=NONE guifg=#800000 guibg=NONE ctermfg=1  ctermbg=NONE  gui=NONE          cterm=NONE
hi CocWarningSign guisp=NONE guifg=#af5f00 guibg=NONE ctermfg=139  ctermbg=NONE  gui=NONE          cterm=NONE
hi CocHintHighlight  guisp=NONE guifg=#888888 guibg=NONE ctermfg=8 ctermbg=NONE gui=NONE 	cterm=NONE

" minor

hi	String		guisp=NONE	guifg=#8787ff	guibg=NONE	gui=NONE		ctermfg=105	ctermbg=NONE	cterm=NONE	" LightSlateBlue
hi Character      guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54  ctermbg=NONE gui=NONE        cterm=NONE
hi Boolean        guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62  ctermbg=NONE gui=NONE        cterm=NONE
hi	Float		guisp=NONE	guifg=#87afff	guibg=NONE	gui=NONE		ctermfg=111	ctermbg=NONE	cterm=NONE	" SkyBlue2
hi	Number		guisp=NONE	guifg=#87afff	guibg=NONE	gui=NONE		ctermfg=111	ctermbg=NONE	cterm=NONE	" SkyBlue2
hi	Function		guisp=NONE	guifg=#ffff87	guibg=NONE	gui=NONE		ctermfg=228	ctermbg=NONE	cterm=NONE	" Khaki1
hi Conditional    guisp=NONE guifg=#afffaf guibg=NONE    ctermfg=157 ctermbg=NONE gui=NONE        cterm=NONE
hi Repeat         guisp=NONE guifg=#afffaf guibg=NONE    ctermfg=157 ctermbg=NONE gui=BOLD        cterm=BOLD
hi Label          guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47  ctermbg=NONE gui=NONE        cterm=NONE
hi Operator 	guisp=NONE guifg=#5f87ff guibg=NONE    ctermfg=69  ctermbg=NONE gui=NONE        cterm=NONE
hi Noise		guisp=NONE guifg=#87afff guibg=NONE    ctermfg=111  ctermbg=NONE gui=BOLD        cterm=BOLD
hi Keyword        guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=14 ctermbg=NONE gui=NONE        CTERM=NONE
hi Exception      guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208 ctermbg=NONE gui=NONE        cterm=NONE
hi Include        guisp=NONE guifg=#00ff00 guibg=NONE    ctermfg=10 ctermbg=NONE gui=BOLD        cterm=BOLD
hi Define         guisp=NONE guifg=#5f00d7 guibg=NONE    ctermfg=56  ctermbg=NONE gui=NONE        cterm=NONE
hi Macro          guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28  ctermbg=NONE gui=BOLD        cterm=BOLD
hi PreCondit      guisp=NONE guifg=#87d700 guibg=NONE    ctermfg=112 ctermbg=NONE gui=NONE        cterm=NONE
hi StorageClass   guisp=NONE guifg=#00afff guibg=NONE    ctermfg=39  ctermbg=NONE gui=BOLD        cterm=BOLD
hi Structure      guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40  ctermbg=NONE gui=NONE        cterm=NONE
hi SpecialChar    guisp=NONE guifg=#87af00 guibg=NONE    ctermfg=106  ctermbg=NONE gui=BOLD,ITALIC cterm=BOLD,ITALIC
hi Tag            guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=51  ctermbg=NONE gui=NONE        cterm=NONE
hi Delimiter      guisp=NONE guifg=#eeeeee guibg=NONE    ctermfg=255 ctermbg=NONE gui=BOLD        cterm=BOLD
hi SpecialComment guisp=NONE guifg=#808080 guibg=NONE    ctermfg=244 ctermbg=NONE gui=NONE        cterm=NONE
hi Debug          guisp=NONE guifg=#d70000 guibg=#262626 ctermfg=160 ctermbg=235  gui=BOLD        cterm=BOLD

" vim
hi link vimFunkKey Function
hi link vimCommand Function
hi link vimNotFunc Statement

" css

hi cssTagName                  guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssSelectorOp               guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE          cterm=NONE
hi cssSelectorOp2              guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE          cterm=NONE
hi cssAttributeSelector        guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=51   ctermbg=NONE gui=NONE          cterm=NONE
hi cssClassName                guisp=NONE guifg=#afd700 guibg=NONE    ctermfg=148  ctermbg=NONE gui=NONE          cterm=NONE
hi cssIdentifier               guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssValueInteger             guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE          cterm=NONE
hi cssValueNumber              guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE          cterm=NONE
hi cssValueLength              guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE          cterm=NONE
hi cssColor                    guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28   ctermbg=NONE gui=NONE          cterm=NONE
hi cssImportant                guisp=NONE guifg=#d75f00 guibg=NONE    ctermfg=166  ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssURL                      guisp=NONE guifg=#005fd7 guibg=NONE    ctermfg=26   ctermbg=NONE gui=NONE          cterm=NONE
hi cssFunction                 guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssAnimationProp            guisp=NONE guifg=#ff00ff guibg=NONE    ctermfg=201  ctermbg=NONE gui=NONE          cterm=NONE
hi cssPositioningProp          guisp=NONE guifg=#005fd7 guibg=NONE    ctermfg=26   ctermbg=NONE gui=NONE          cterm=NONE
hi cssPositioningAttr          guisp=NONE guifg=#87d700 guibg=NONE    ctermfg=112  ctermbg=NONE gui=NONE          cterm=NONE
hi cssUIProp                   guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE          cterm=NONE
hi cssBraces                   guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE          cterm=NONE
hi cssError                    guisp=NONE guifg=#800000 guibg=#080808 ctermfg=88   ctermbg=232  gui=BOLD          cterm=BOLD
hi cssDefinition               guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssBraceError               guisp=NONE guifg=#800000 guibg=#080808 ctermfg=88   ctermbg=232  gui=BOLD          cterm=BOLD
hi cssAttrComma                guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE          cterm=NONE
hi cssPseudoClass              guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=ITALIC        cterm=ITALIC
hi cssPseudoClassId            guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE          cterm=NONE
hi cssPseudoClassFn            guisp=NONE guifg=#d7ff00 guibg=NONE    ctermfg=190  ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssUnitDecorators           guisp=NONE guifg=#00afff guibg=NONE    ctermfg=39   ctermbg=NONE gui=NONE          cterm=NONE
hi cssNoise                    guisp=NONE guifg=#d7ff00 guibg=NONE    ctermfg=190  ctermbg=NONE gui=NONE          cterm=NONE
hi cssComment                  guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=NONE          cterm=NONE
hi cssUnicodeEscape            guisp=NONE guifg=#00005f guibg=NONE    ctermfg=17   ctermbg=NONE gui=BOLD,ITALIC   cterm=BOLD,ITALIC
hi cssStringQQ                 guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssStringQ                  guisp=NONE guifg=#8700ff guibg=NONE    ctermfg=93   ctermbg=NONE gui=NONE          cterm=NONE
hi cssVendor                   guisp=NONE guifg=#808080 guibg=NONE    ctermfg=244  ctermbg=NONE gui=NONE          cterm=NONE
hi cssHacks                    guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208  ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssAttrRegion               guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssAtKeyword                guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssAtRule                   guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssPagePseudo               guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssDeprecated               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=strikethrough cterm=strikethrough
hi cssCommonAttr               guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62   ctermbg=NONE gui=NONE          cterm=NONE
hi cssFunctionName             guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD          cterm=BOLD
hi cssMediaType                guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE          cterm=NONE
hi cssMediaComma               guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssAtRuleLogical            guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssMediaAttr                guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssPageProp                 guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssFontDescriptor           guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE
hi cssUnicodeRange             guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54   ctermbg=NONE gui=NONE          cterm=NONE
hi cssAttr                     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE          cterm=NONE

" html

hi htmlError               guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlString              guisp=NONE guifg=#00d7af guibg=NONE    ctermfg=43  ctermbg=NONE gui=NONE        cterm=NONE
hi htmlValue               guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlTag                 guisp=NONE guifg=#00d75f guibg=NONE    ctermfg=41 ctermbg=NONE gui=NONE          cterm=NONE
hi htmlEndTag              guisp=NONE guifg=#005f00 guibg=NONE    ctermfg=22 ctermbg=NONE gui=NONE          cterm=NONE
hi htmlTagN                guisp=NONE guifg=#af00ff guibg=NONE    ctermfg=129   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlTagError            guisp=NONE guifg=#800000 guibg=#080808 ctermfg=88   ctermbg=232  gui=BOLD                  cterm=BOLD
hi htmlTagName			   guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99  ctermbg=NONE gui=BOLD        cterm=BOLD
hi htmlArg 				   guisp=NONE guifg=#00afff guibg=NONE    ctermfg=32  ctermbg=NONE gui=NONE          cterm=NONE
hi htmlSpecialChar         guisp=NONE guifg=#00005f guibg=NONE    ctermfg=17   ctermbg=NONE gui=BOLD,ITALIC           cterm=BOLD,ITALIC
hi htmlComment             guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlCommentError        guisp=NONE guifg=#ff0000 guibg=#080808 ctermfg=196  ctermbg=232  gui=BOLD                  cterm=BOLD
hi htmlCommentPart         guisp=NONE guifg=#808080 guibg=NONE    ctermfg=244  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlPreProc             guisp=NONE guifg=#5f005f guibg=NONE    ctermfg=53   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlPreStmt             guisp=NONE guifg=#5f005f guibg=NONE    ctermfg=53   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlPreError            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlPreAttr             guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlPreProcAttrError    guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlPreProcAttrName     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlStrike              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=strikethrough         cterm=strikethrough
hi htmlBOLD                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlBOLDUNDERLINE       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,UNDERLINE        cterm=BOLD,UNDERLINE
hi htmlBOLDITALIC          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC           cterm=BOLD,ITALIC
hi htmlBOLDUNDERLINEITALIC guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlBOLDITALICUNDERLINE guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlUNDERLINE           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=UNDERLINE             cterm=UNDERLINE
hi htmlUNDERLINEBOLD       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,UNDERLINE        cterm=BOLD,UNDERLINE
hi htmlUNDERLINEITALIC     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlUNDERLINEITALICBOLD guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlUNDERLINEBOLDITALIC guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlITALIC              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=ITALIC                cterm=ITALIC
hi htmlITALICBOLD          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC           cterm=BOLD,ITALIC
hi htmlITALICBOLDUNDERLINE guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlITALICUNDERLINE     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=ITALIC,UNDERLINE      cterm=ITALIC,UNDERLINE
hi htmlITALICUNDERLINEBOLD guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD,ITALIC,UNDERLINE cterm=BOLD,ITALIC,UNDERLINE
hi htmlLeadingSpace        guisp=NONE guifg=#ff005f guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlLink                guisp=NONE guifg=#0087ff guibg=NONE    ctermfg=33   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlH1                  guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=15   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlH2                  guisp=NONE guifg=#d7d7d7 guibg=NONE    ctermfg=188   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlH3                  guisp=NONE guifg=#afafaf guibg=NONE    ctermfg=145   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlH4                  guisp=NONE guifg=#8787af guibg=NONE    ctermfg=103   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlH5                  guisp=NONE guifg=#5f5faf guibg=NONE    ctermfg=61   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlH6                  guisp=NONE guifg=#5f5f87 guibg=NONE    ctermfg=60   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlHead                guisp=NONE guifg=#ff0000 guibg=NONE    ctermfg=196  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlTitle               guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=BOLD,UNDERLINE        cterm=BOLD,UNDERLINE
hi javaScript              guisp=NONE guifg=#5f00ff guibg=NONE    ctermfg=57   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlScriptTag           guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlEvent               guisp=NONE guifg=#afd7ff guibg=NONE    ctermfg=153   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlEventSQ             guisp=NONE guifg=#800080 guibg=NONE    ctermfg=90   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlEventDQ             guisp=NONE guifg=#870087 guibg=NONE    ctermfg=90   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi javaScriptExpression    guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208  ctermbg=NONE gui=NONE                  cterm=NONE
hi cssStyle                guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=51   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlCssStyleComment     guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlCssDefinition       guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=BOLD                  cterm=BOLD
hi htmlStyleArg            guisp=NONE guifg=#00ffd7 guibg=NONE    ctermfg=50   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlSpecialTagName      guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlSpecial             guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54   ctermbg=NONE gui=NONE                  cterm=NONE
hi htmlStatement           guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE                  cterm=NONE

" sh

hi shDerefSimple  guisp=NONE guifg=#af00af guibg=NONE    ctermfg=127  ctermbg=NONE gui=NONE          cterm=NONE
hi shDerefVar  guisp=NONE guifg=#af00af guibg=NONE    ctermfg=127  ctermbg=NONE gui=NONE          cterm=NONE
hi bashSpecialVariables  guisp=NONE guifg=#5f00ff guibg=NONE    ctermfg=57  ctermbg=NONE gui=NONE          cterm=NONE

" javascript

hi javaScriptLineComment      guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptCommentSkip      guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=ITALIC      cterm=ITALIC
hi javaScriptComment          guisp=NONE guifg=#4e4e4e guibg=NONE    ctermfg=239  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptSpecial          guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptStringD          guisp=NONE guifg=#8700ff guibg=NONE    ctermfg=93   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptStringS          guisp=NONE guifg=#8700af guibg=NONE    ctermfg=91   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptStringT          guisp=NONE guifg=#af00ff guibg=NONE    ctermfg=129  ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptEmbed            guisp=NONE guifg=#800080 guibg=NONE    ctermfg=90   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptSpecialCharacter guisp=NONE guifg=#00005f guibg=NONE    ctermfg=17   ctermbg=NONE gui=BOLD,ITALIC cterm=BOLD,ITALIC
hi javaScriptNumber           guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptRegexpString     guisp=NONE guifg=#ff00ff guibg=NONE    ctermfg=201  ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptFunction         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptFunctionFold     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptBraces           guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptParens           guisp=NONE guifg=#5fd700 guibg=NONE    ctermfg=76   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptCommentTodo      guisp=NONE guifg=#080808 guibg=#ffffff ctermfg=232  ctermbg=231  gui=BOLD        cterm=BOLD
hi javaScriptCharacter        guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptConditional      guisp=NONE guifg=#ffffaf guibg=NONE    ctermfg=229  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptRepeat           guisp=NONE guifg=#ffff5f guibg=NONE    ctermfg=227  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptBranch           guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptOperator         guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptType             guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptStatement        guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptError            guisp=NONE guifg=#800000 guibg=#080808 ctermfg=88   ctermbg=232  gui=BOLD        cterm=BOLD
hi javaScrParenError          guisp=NONE guifg=#d75f00 guibg=#121212 ctermfg=166  ctermbg=233  gui=BOLD        cterm=BOLD
hi javaScriptNull             guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62   ctermbg=NONE gui=UNDERLINE   cterm=UNDERLINE
hi javaScriptBoolean          guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptIdentifier       guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptLabel            guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptException        guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208  ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptMessage          guisp=NONE guifg=#ff5f00 guibg=NONE    ctermfg=202  ctermbg=NONE gui=UNDERLINE   cterm=UNDERLINE
hi javaScriptGlobal           guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptMember           guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=NONE        cterm=NONE
hi javaScriptDeprecated       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=UNDERLINE   cterm=UNDERLINE
hi javaScriptReserved         guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=BOLD        cterm=BOLD
hi javaScriptDebug            guisp=NONE guifg=#d70000 guibg=#262626 ctermfg=160  ctermbg=235  gui=BOLD        cterm=BOLD
hi javaScriptConstant         guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28   ctermbg=NONE gui=NONE        cterm=NONE

" typescript

hi typescriptTypeCast                  guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptLabel                     guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptBlock                     guisp=NONE guifg=#00afff guibg=NONE    ctermfg=39   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptIdentifierName            guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptProp                      guisp=NONE guifg=#800080 guibg=NONE    ctermfg=90   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptIndexExpr                 guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDotNotation               guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDotStyleNotation          guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptFuncCall                  guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptParenExp                  guisp=NONE guifg=#0087af guibg=NONE    ctermfg=31   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptFuncCallArg               guisp=NONE guifg=#00ff87 guibg=NONE    ctermfg=48   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptEventFuncCallArg          guisp=NONE guifg=#c0c0c0 guibg=NONE    ctermfg=250  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptEventString               guisp=NONE guifg=#87005f guibg=NONE    ctermfg=89   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptASCII                     guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTemplateSubstitution      guisp=NONE guifg=#00afff guibg=NONE    ctermfg=39   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptString                    guisp=NONE guifg=#8700ff guibg=NONE    ctermfg=93   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptSpecial                   guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptRegexpString              guisp=NONE guifg=#ff00ff guibg=NONE    ctermfg=201  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptTemplate                  guisp=NONE guifg=#00d7d7 guibg=NONE    ctermfg=44   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptArray                     guisp=NONE guifg=#0087ff guibg=NONE    ctermfg=33   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptNumber                    guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptExponent                  guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptObjectLiteral             guisp=NONE guifg=#005fff guibg=NONE    ctermfg=27   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptObjectLabel               guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptStringProperty            guisp=NONE guifg=#8700d7 guibg=NONE    ctermfg=92   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptPropertyName              guisp=NONE guifg=#00af00 guibg=NONE    ctermfg=34   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptComputedPropertyName      guisp=NONE guifg=#005f00 guibg=NONE    ctermfg=22   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptRestOrSpread              guisp=NONE guifg=#0087ff guibg=NONE    ctermfg=33   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptObjectSpread              guisp=NONE guifg=#005fd7 guibg=NONE    ctermfg=26   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptObjectColon               guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptUnaryOp                   guisp=NONE guifg=#ff0000 guibg=NONE    ctermfg=196  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTernary                   guisp=NONE guifg=#ffffaf guibg=NONE    ctermfg=229  ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptAssign                    guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptBinaryOp                  guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=51   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptVariableDeclaration       guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptEnum                      guisp=NONE guifg=#0087ff guibg=NONE    ctermfg=33   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptLoopParen                 guisp=NONE guifg=#ffff5f guibg=NONE    ctermfg=227  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptConditionalParen          guisp=NONE guifg=#5fd700 guibg=NONE    ctermfg=76   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptEndColons                 guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi shellbang                           guisp=NONE guifg=#0000ff guibg=NONE    ctermfg=21   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptLineComment               guisp=NONE guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptComment                   guisp=NONE guifg=#4e4e4e guibg=NONE    ctermfg=239  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptRef                       guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocComment                guisp=NONE guifg=#808080 guibg=NONE    ctermfg=244  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocNotation               guisp=NONE guifg=#00ffff guibg=NONE    ctermfg=51   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocName                   guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocEventRef               guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocNamedParamType         guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocParamName              guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocParamType              guisp=NONE guifg=#008700 guibg=NONE    ctermfg=28   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocA                      guisp=NONE guifg=#00ff5f guibg=NONE    ctermfg=47   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocAs                     guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocB                      guisp=NONE guifg=#00ffd7 guibg=NONE    ctermfg=50   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocParam                  guisp=NONE guifg=#0087ff guibg=NONE    ctermfg=33   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocNumParam               guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocRef                    guisp=NONE guifg=#5f0087 guibg=NONE    ctermfg=54   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDocLinkTag                guisp=NONE guifg=#005fff guibg=NONE    ctermfg=27   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptOptionalMark              guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTypeParameters            guisp=NONE guifg=#5fd700 guibg=NONE    ctermfg=76   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTypeParameter             guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGenericDefault            guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptTypeArguments             guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptTypeBracket               guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptStringLiteralType         guisp=NONE guifg=#8700ff guibg=NONE    ctermfg=93   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptParenthesizedType         guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTypeReference             guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptPredefinedType            guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptObjectType                guisp=NONE guifg=#5fd700 guibg=NONE    ctermfg=76   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTupleType                 guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptUnion                     guisp=NONE guifg=#5fff5f guibg=NONE    ctermfg=83   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptGenericFunc               guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD,ITALIC               cterm=BOLD,ITALIC
hi typescriptFuncType                  guisp=NONE guifg=#87ff5f guibg=NONE    ctermfg=119  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptFuncTypeArrow             guisp=NONE guifg=#87ff5f guibg=NONE    ctermfg=119  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptGenericCall               guisp=NONE guifg=#00875f guibg=NONE    ctermfg=29   ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptCall                      guisp=NONE guifg=#00875f guibg=NONE    ctermfg=29   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptTypeAnnotation            guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptFuncComma                 guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDefaultParam              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptIndexSignature            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptAliasDeclaration          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptGlobalNumberDot           guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalStringDot           guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalArrayDot            guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalObjectDot           guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalSymBOLDot           guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalMathDot             guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalDateDot             guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalJSONDot             guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalRegExpDot           guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalPromiseDot          guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobalURLDot              guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDOMNodeMethod             guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptMember                    guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptMethodAccessor            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptMemberOptionality         guisp=NONE guifg=#8787ff guibg=NONE    ctermfg=105  ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptStringMember              guisp=NONE guifg=#8700ff guibg=NONE    ctermfg=93   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptComputedMember            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptClassName                 guisp=NONE guifg=#5f87ff guibg=NONE    ctermfg=69   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptClassTypeParameter        guisp=NONE guifg=#87ff5f guibg=NONE    ctermfg=119  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptClassHeritage             guisp=NONE guifg=#005faf guibg=NONE    ctermfg=25   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptClassTypeArguments        guisp=NONE guifg=#87ff5f guibg=NONE    ctermfg=119  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptMixinComma                guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptClassBlock                guisp=NONE guifg=#00afff guibg=NONE    ctermfg=39   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptInterfaceName             guisp=NONE guifg=#5f87ff guibg=NONE    ctermfg=69   ctermbg=NONE gui=BOLD,ITALIC               cterm=BOLD,ITALIC
hi typescriptInterfaceTypeParameter    guisp=NONE guifg=#87ff5f guibg=NONE    ctermfg=119  ctermbg=NONE gui=BOLD,ITALIC               cterm=BOLD,ITALIC
hi typescriptInterfaceHeritage         guisp=NONE guifg=#005faf guibg=NONE    ctermfg=25   ctermbg=NONE gui=BOLD,ITALIC               cterm=BOLD,ITALIC
hi typescriptInterfaceTypeArguments    guisp=NONE guifg=#87ff5f guibg=NONE    ctermfg=119  ctermbg=NONE gui=BOLD,ITALIC               cterm=BOLD,ITALIC
hi typescriptInterfaceComma            guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptAsyncFunc                 guisp=NONE guifg=#d7ffff guibg=NONE    ctermfg=195  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptFuncName                  guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptArrowFuncDef              guisp=NONE guifg=#ffd7ff guibg=NONE    ctermfg=225  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptArrowFunc                 guisp=NONE guifg=#ffd7ff guibg=NONE    ctermfg=225  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptArrowFuncArg              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptReturnAnnotation          guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptDecorator                 guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptGlobal                    guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptGlobalMethod              guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptReserved                  guisp=NONE guifg=#e4e4e4 guibg=NONE    ctermfg=254  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptBraces                    guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptParens                    guisp=NONE guifg=#5fd700 guibg=NONE    ctermfg=76   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptCommentTodo               guisp=NONE guifg=#080808 guibg=#ffffff ctermfg=232  ctermbg=231  gui=BOLD                      cterm=BOLD
hi typescriptDocTags                   guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=BOLD,UNDERLINE            cterm=BOLD,UNDERLINE
hi typescriptPrototype                 guisp=NONE guifg=#008000 guibg=NONE    ctermfg=28   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptConditional               guisp=NONE guifg=#ffff87 guibg=NONE    ctermfg=228  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptConditionalElse           guisp=NONE guifg=#ffff5f guibg=NONE    ctermfg=227  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptCase                      guisp=NONE guifg=#ffff87 guibg=NONE    ctermfg=228  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptDefault                   guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptBranch                    guisp=NONE guifg=#c0c0c0 guibg=NONE    ctermfg=250  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptIdentifier                guisp=NONE guifg=#5f5fff guibg=NONE    ctermfg=63   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptVariable                  guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptEnumKeyword               guisp=NONE guifg=#0087ff guibg=NONE    ctermfg=33   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptRepeat                    guisp=NONE guifg=#ffff5f guibg=NONE    ctermfg=227  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptForOperator               guisp=NONE guifg=#ffff5f guibg=NONE    ctermfg=227  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptOperator                  guisp=NONE guifg=#5fff00 guibg=NONE    ctermfg=82   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptCastKeyword               guisp=NONE guifg=#808000 guibg=NONE    ctermfg=100  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptType                      guisp=NONE guifg=#00d700 guibg=NONE    ctermfg=40   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptNull                      guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptBoolean                   guisp=NONE guifg=#5f5fd7 guibg=NONE    ctermfg=62   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptImport                    guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptAmbientDeclaration        guisp=NONE guifg=#875fff guibg=NONE    ctermfg=99   ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptExport                    guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptModule                    guisp=NONE guifg=#afff00 guibg=NONE    ctermfg=154  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptTry                       guisp=NONE guifg=#d7ff00 guibg=NONE    ctermfg=190  ctermbg=NONE gui=BOLD                      cterm=BOLD
hi typescriptExceptions                guisp=NONE guifg=#ff8700 guibg=NONE    ctermfg=208  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptAsyncFuncKeyword          guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptAsyncFor                  guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptFuncKeyword               guisp=NONE guifg=#008700 guibg=NONE    ctermfg=28   ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptFuncArg                   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=ITALIC                    cterm=ITALIC
hi typescriptClassKeyword              guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptAccessibilityModifier     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE                      cterm=NONE
hi typescriptConstructor               guisp=NONE guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=BOLD                      cterm=BOLD

