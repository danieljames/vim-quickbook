syntax region quickbookBlock matchgroup=quickbookBlockDelim start=/\[/ end=/\]/ contains=TOP
syntax region quickbookAttribute matchgroup=quickbookAttributeDelim start=/\[/ end=/\]/ contained contains=quickbookComment,quickbookAttribute

syntax region quickbookDocInfo matchgroup=quickbookDocInfo start=/\[\s*article/ end=/\]/ contains=quickbookComment,quickbookAttribute
syntax region quickbookDocInfo matchgroup=quickbookDocInfo start=/\[\s*chapter/ end=/\]/ contains=quickbookComment,quickbookAttribute
syntax region quickbookDocInfo matchgroup=quickbookDocInfo start=/\[\s*library/ end=/\]/ contains=quickbookComment,quickbookAttribute

syntax match quickbookTableError /[^ \t\[\]][^\[\]]*/ contained
syntax region quickbookTable matchgroup=quickbookTableDelim start=/\[\s*table[^\[\]]*$/ end=/\]/ contains=quickbookComment,quickbookRow,quickbookTableError
syntax region quickbookVariableList matchgroup=quickbookVariableListDelim start=/\[\s*variablelist.*$/ end=/\]/ contains=quickbookComment,quickbookRow,quickbookTableError
syntax region quickbookRow matchgroup=quickbookRowDelim start=/\[/ end=/\]/ contained contains=quickbookComment,quickbookCell,quickbookTableError
syntax region quickbookCell matchgroup=quickbookCellDelim start=/\[/ end=/\]/ contained contains=TOP

syntax region quickbookComment matchgroup=quickbookComment start=/\[\// end=/\]/
syntax region quickbookNestedComment matchgroup=quickbookComment start=/\[/ end=/\]/ contained containedin=quickbookComment,quickbookNestedComment
syntax match quickbookEscape /\\./

hi def link quickbookComment Comment
hi def link quickbookNestedComment quickbookComment

hi def link quickbookBlockDelim Statement
hi def link quickbookTableDelim quickbookBlockDelim
hi def link quickbookVariableListDelim quickbookBlockDelim
hi def link quickbookRowDelim quickbookBlockDelim
hi def link quickbookCellDelim quickbookBlockDelim

hi def link quickbookTableError Error

hi def link quickbookDocInfo Statement
hi def link quickbookAttributeDelim Statement

hi def link quickbookEscape SpecialChar
