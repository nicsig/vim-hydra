if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

runtime! ftplugin/markdown.vim

" teardown {{{1

let b:undo_ftplugin =         get(b:, 'undo_ftplugin', '')
\                     .(empty(get(b:, 'undo_ftplugin', '')) ? '' : '|')
\                     ."
\                        delc HydraAnalyse
\                      "
