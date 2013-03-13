" Vim filetype plugin file
" Language:	SystemVerilog (superset extension of Verilog)
" Maintainer:	Amit Sethi <amitrajsethi@yahoo.com>
" Last Change:	Tue Jun 26 08:56:34 IST 2006
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

set foldmethod=expr
set foldexpr=MyFoldExpr(v:lnum)
function! MyFoldExpr(line)
   let str = getline(a:line)   
   if str =~ '^\s*task\s' || str =~ '^\s*function\s'
      return '>1'   
   elseif str =~ '^\s*endtask' || str =~ '^\s*endfunction'
      return '<1'
   else       return foldlevel(a:line)
   endif
endfunction
" Behaves just like Verilog
runtime! ftplugin/verilog.vim
