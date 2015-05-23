" Vimscript Setup: {{{1
let s:save_cpo = &cpo
set cpo&vim

" load guard
" uncomment after plugin development.
"if exists("g:loaded_emotes")
"  let &cpo = s:save_cpo
"  finish
"endif
"let g:loaded_emotes = 1

" Options: {{{1
if !exists('g:emotes_happy')
  let g:emotes_happy = 1
endif

if !exists('g:emotes_rage')
  let g:emotes_rage = 1
endif

if !exists('g:emotes_confused')
  let g:emotes_confused = 1
endif

if !exists('g:emotes_srsly')
  let g:emotes_srsly = 1
endif

if !exists('g:emotes_tables')
  let g:emotes_tables = 1
endif

if !exists('g:emotes_deal')
  let g:emotes_deal = 1
endif

if !exists('g:emotes_sad')
  let g:emotes_sad = 1
endif

if !exists('g:emotes_disapoint')
  let g:emotes_disapoint = 1
endif

if !exists('g:emotes_lenny')
  let g:emotes_lenny = 1
endif

if !exists('g:emotes_dongers')
  let g:emotes_dongers = 1
endif

" Private Functions: {{{1
function! s:some_local_function()
  echom "change s:some_local_function"
endfunction

" Public Interface: {{{1
function! SomeFunction()
  echom "change SomeFunction"
endfunction

" Maps: {{{1
nnoremap <Plug>emotes1 :call <SID>some_local_function()<CR>
nnoremap <Plug>emotes2 :call SomeFunction()<CR>

if !hasmapto('<Plug>emotes1')
  nmap <unique><silent> <Leader>p1 <Plug>emotes1
endif

if !hasmapto('<Plug>emotes2')
  nmap <unique><silent> <Leader>p2 <Plug>emotes2
endif

" Commands: {{{1
command! -nargs=0 -bar emotes1 call <SID>some_local_function()
command! -nargs=0 -bar emotes2 call SomeFunction()

" Teardown: {{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
