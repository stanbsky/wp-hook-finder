function! s:SearchWPRoot(name, declaration)

  let l:root = findfile('wp-config.php', '.;')
  let l:root = fnamemodify(l:root, ':h')

  " filters and actions are the same in WordPress, so search both
  if(a:declaration)
    let l:hook = '(apply_filters|do_action)(_ref_array)?'
  else
    let l:hook = '(add_filter|add_action)'
  endif

  exec 'Ack "' . l:hook . '\(\s*''' . a:name . '(-.+)?''.*\)" ' . l:root

endfunction

command! FindWPHook call s:SearchWPRoot(expand('<cword>'), 0)
command! FindWPHookDef call s:SearchWPRoot(expand('<cword>'), 1)
