" my filetype file
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.qbk setfiletype quickbook
    au! BufRead,BufNewFile *.quickbook setfiletype quickbook
augroup END
