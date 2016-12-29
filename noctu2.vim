" noctu.vim - Vim color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   Noah Frederick (http://noahfrederick.com/)
" Version:  1.7.0
" --------------------------------------------------------------

" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="noctu2"

"}}}
" Vim UI {{{
hi Cursor              ctermfg=lightgray     ctermbg=darkred
hi CursorLine          ctermbg=black     cterm=NONE
hi MatchParen          ctermfg=darkred    ctermbg=NONE cterm=bold
hi Pmenu               ctermfg=white    ctermbg=None
hi PmenuThumb          ctermbg=white
hi PmenuSBar           ctermbg=darkgray
" hi PmenuSel            ctermfg=lightgray     ctermbg=4
hi PmenuSel            ctermfg=lightgray     cterm=bold 
hi ColorColumn         ctermbg=black
hi SpellBad            ctermfg=darkred     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=Green    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=yellow    ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=magenta    ctermbg=NONE  cterm=underline
hi NonText             ctermfg=darkgray
hi LineNr              ctermfg=darkgray     ctermbg=NONE
hi CursorLineNr        ctermfg=yellow    ctermbg=black
hi Visual              ctermfg=lightgray  ctermbg=darkgray
hi IncSearch           ctermfg=black     ctermbg=magenta    cterm=NONE
hi Search              ctermfg=black     ctermbg=Green
hi StatusLine          ctermfg=lightgray     ctermbg=black     cterm=bold
hi StatusLineNC        ctermfg=darkgray     ctermbg=black     cterm=bold
hi VertSplit           ctermfg=black     ctermbg=black     cterm=NONE
hi TabLine             ctermfg=darkgray     ctermbg=black     cterm=NONE
hi TabLineSel          ctermfg=lightgray     ctermbg=black
hi Folded              ctermfg=yellow     ctermbg=None
hi Directory           ctermfg=blue
hi Title               ctermfg=yellow     cterm=bold
hi ErrorMsg            ctermfg=white    ctermbg=darkred
hi DiffAdd             ctermfg=black     ctermbg=darkgreen
hi DiffChange          ctermfg=black     ctermbg=yellow
hi DiffDelete          ctermfg=black     ctermbg=darkred
hi DiffText            ctermfg=black     ctermbg=yellow    cterm=bold
hi User1               ctermfg=white    ctermbg=magenta
hi User2               ctermfg=white    ctermbg=darkgray
hi User3               ctermfg=white    ctermbg=yellow
hi User4               ctermfg=white    ctermbg=black
hi User5               ctermfg=white    ctermbg=magenta
hi User6               ctermfg=white    ctermbg=cyan
hi User7               ctermfg=white    ctermbg=blue
hi User8               ctermfg=white    ctermbg=yellow
hi User9               ctermfg=white    ctermbg=darkgray
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

"}}}
" Generic syntax {{{
hi Delimiter       ctermfg=lightgray
hi Comment         ctermfg=darkgray   cterm=italic
hi Underlined      ctermfg=darkblue   cterm=underline
hi Type            ctermfg=darkcyan
"hi String          ctermfg=red
hi String          ctermfg=darkgreen
hi Keyword         ctermfg=darkblue
hi Todo            ctermfg=white  ctermbg=NONE     cterm=bold,underline
hi Function        ctermfg=darkblue
hi Identifier      ctermfg=lightgray   cterm=NONE
hi Statement       ctermfg=white   cterm=bold
hi Constant        ctermfg=magenta
hi Number          ctermfg=darkred
hi Boolean         ctermfg=darkblue
hi Special         ctermfg=magenta
hi Ignore          ctermfg=black
hi! link Operator  Delimiter
hi! link PreProc   Delimiter
hi! link Error     ErrorMsg

"}}}
" HTML {{{
hi htmlTagName              ctermfg=darkgreen
hi htmlTag                  ctermfg=darkgreen
hi htmlArg                  ctermfg=Green
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

"}}}
" XML {{{
hi xmlTagName       ctermfg=darkblue
hi xmlTag           ctermfg=blue
hi! link xmlString  xmlTagName
hi! link xmlAttrib  xmlTag
hi! link xmlEndTag  xmlTag
hi! link xmlEqual   xmlTag

"}}}
" JavaScript {{{
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter

"}}}
" PHP {{{
hi phpSpecialFunction    ctermfg=magenta
hi phpIdentifier         ctermfg=yellow
hi! link phpVarSelector  phpIdentifier
hi! link phpHereDoc      String
hi! link phpDefine       Statement

"}}}
" Markdown {{{
hi! link markdownHeadingRule        NonText
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi! link markdownUrl                markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownCodeBlock          String
hi markdownCode                     cterm=bold
hi markdownBold                     cterm=bold
hi markdownItalic                   cterm=underline

"}}}
" Ruby {{{
hi! link rubyDefine                 Statement
hi! link rubyLocalVariableOrMethod  Identifier
hi! link rubyConstant               Constant
hi! link rubyInstanceVariable       Number
hi! link rubyStringDelimiter        rubyString

"}}}
" Git {{{
hi gitCommitBranch               ctermfg=yellow
hi gitCommitSelectedType         ctermfg=Green
hi gitCommitSelectedFile         ctermfg=darkgreen
hi gitCommitUnmergedType         ctermfg=red
hi gitCommitUnmergedFile         ctermfg=darkred
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Vim {{{
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant

"}}}
" LESS {{{
hi lessVariable             ctermfg=yellow
hi! link lessVariableValue  Normal

"}}}
" NERDTree {{{
hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" CtrlP {{{
hi! link CtrlPMatch    String
hi! link CtrlPLinePre  Comment

"}}}
" Mustache {{{
hi mustacheSection           ctermfg=cyan  cterm=bold
hi mustacheMarker            ctermfg=darkcyan
hi mustacheVariable          ctermfg=cyan
hi mustacheVariableUnescape  ctermfg=red
hi mustachePartial           ctermfg=magenta

"}}}
" Shell {{{
hi shDerefSimple     ctermfg=yellow
hi! link shDerefVar  shDerefSimple

"}}}
" Syntastic {{{
hi SyntasticWarningSign  ctermfg=yellow   ctermbg=NONE
hi SyntasticErrorSign    ctermfg=darkred   ctermbg=NONE

"}}}
" Ale {{{
hi ALEErrorSign ctermfg=darkred ctermbg=NONE
hi ALEWarningSign ctermfg=gray ctermbg=NONE
" }}}
" Netrw {{{
hi netrwExe       ctermfg=red
hi netrwClassify  ctermfg=darkgray  cterm=bold

"}}}

" vim: fdm=marker:sw=2:sts=2:et
