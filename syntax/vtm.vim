" @Author: voldikss
" @Date: 2019-04-27 9:31:12
" @Last Modified by: voldikss
" @Last Modified time: 2019-07-02 19:37:38

if exists('b:current_syntax')
    finish
endif

syn match vtmQuery               #@.*@#
syn match vtmParaphrase          #🌀.*$#
syn match vtmPhonetic            #🔉.*$#
syn match vtmExplain             #📝.*#
syn match vtmDelimiter           #-.*-#
syn match vtmNormal              #.*# contains=
    \ vtmQuery,vtmParaphrase,vtmPhonetic,vtmExplain,vtmDelimiter

hi def link vtmQuery             Identifier
hi def link vtmParaphrase        Statement
hi def link vtmPhonetic          Special
hi def link vtmExplain           Comment
hi def link vtmFloatingNormal    NormalFloat
hi def link vtmDelimiter         Delimiter
hi def link vtmNormal            NormalFloat

let b:current_syntax = 'vtm'
