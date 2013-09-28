function! SearchWPRoot(name, declaration)
  " NB: won't work if we keep wp-config.php somewhere else
  let l:root = findfile('wp-config.php', '.;')
  let l:root = fnamemodify(l:root, ':h')
  " filters and actions are the same in WordPress, so search both
  if(a:declaration)
    let l:hook = '(apply_filters|do_action)(_ref_array)?'
  else
    let l:hook = '(add_filter|add_action)'
  endif
  exec 'Ack "' . l:hook . '\(\s*''' . a:name . '''.*\)" ' . l:root
endfunction
" Search for hooks and filters, capital letter finds definition
nnoremap <Leader>f :call SearchWPRoot(expand('<cword>'), 0)<CR>
nnoremap <Leader>F :call SearchWPRoot(expand('<cword>'), 1)<CR>
