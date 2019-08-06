" Vim filetype plugin
" Language:	    AoE2RMS
" Author:	    Tim Pope <vimNOSPAM@tpope.org>
" Maintainer:   Leonard Ehrenfried <leonard.ehrenfried@web.de>
" Last Change:  2011 Sep 30

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< def< inc< inex< ofu< sua<"

setlocal iskeyword+=<,>
setlocal suffixesadd=.rms

if executable("rms-check")
  au User lsp_setup call lsp#register_server({
        \ 'name': 'rms-check',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'rms-check --server']},
        \ 'whitelist': ['aoe2-rms'],
        \ })
endif

" vim:set sw=2:
