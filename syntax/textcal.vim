if exists("b:current_syntax")
    finish
endif

unlet! b:current_syntax

syntax case ignore

syn match textcalKeywords "\vNatasha's|Natasha"
syn match textcalSpecial "\vbirthday"

syn match textcalWeekday '\v[0-9]{4}\-[0-9]{2}\-[0-9]{2}\ {2}[MTWRF]\ {2}\:'
syn match textcalWeekend '\v[0-9]{4}\-[0-9]{2}\-[0-9]{2}\ {2}[S]\ {2}\:'

syn match textcalHashtag '#[A-Za-z0-9:]*\w'
syn match textcalAt '@[A-Za-z0-9:]*\w'
syn match textcalWork '\v\#work'
syn match textcalCanceled '\v\#canceled'

highlight link textcalWeekday Constant
highlight link textcalWeekend Type
highlight link textcalHashtag Function
highlight link textcalAt Constant
highlight link textcalWork Error
highlight link textcalCanceled PMenu
highlight link textcalKeywords Todo
highlight link textcalSpecial PreProc
