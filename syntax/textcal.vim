if exists("b:current_syntax")
    finish
endif

unlet! b:current_syntax

syntax case ignore

syn keyword textcalKeyword Natasha Vasya Misha
syn keyword textcalSpecial birthday

syn match textcalWeekday '\v[0-9]{4}\-[0-9]{2}\-[0-9]{2}\ {2}[MTWRF]\ {2}\:'
syn match textcalWeekend '\v[0-9]{4}\-[0-9]{2}\-[0-9]{2}\ {2}[S]\ {2}\:'

syn match textcalHash '#[A-Za-z0-9:\-_]*\w'
syn match textcalAt '@[A-Za-z0-9:\-_]*\w'
syn match textcalPlus '+[A-Za-z0-9:\-_]*\w'

highlight link textcalWeekday Constant
highlight link textcalWeekend Type
highlight link textcalHash Function
highlight link textcalAt Constant
highlight link textcalPlus Special
highlight link textcalKeyword Keyword
highlight link textcalSpecial PreProc
