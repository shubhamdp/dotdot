" Auto-format code using clang-format on save
function! Formatonsave()
  let l:formatdiff = 1
  py3f /Users/shubhampatil/shubham/bin/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()

set tags+=~/esp/esp-idf/tags
