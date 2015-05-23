let s:suite = themis#suite('test_autoload')
let s:assert = themis#helper('assert')

function! s:suite.before() abort
  call ForceLoad('test_autoload')
  let s:sid = GetSID('autoload/test_autoload.vim')
endfunction

function! s:suite.after_each() abort
  norm! gg"_dG
endfunction

