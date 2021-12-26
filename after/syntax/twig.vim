" Twig syntax file
" Language:	Twig
" Remark:	Uses HTML syntax file

" Read the HTML syntax to start with
if version < 600
  so <sfile>:p:h/html.vim
else
  runtime! syntax/html.vim

  if exists('b:current_syntax')
    unlet b:current_syntax
  endif
endif
