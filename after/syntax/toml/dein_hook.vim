unlet b:current_syntax
syn include @vimScript syntax/vim.vim
let b:current_syntax = 'toml'

syn region deinOptionScript matchgroup=deinOptionScriptQuote start=/^\%(if\|on_if\)\s*=\s*\z('''\|"""\)/ end=/\z1/ contains=@vimScript keepend
syn region deinOptionScript matchgroup=deinOptionScriptQuote start=/^\%(if\|on_if\)\s*=\s*\z('\(''\)\@!\|"\(""\)\@!\)/ end=/\z1/ contains=@vimScript keepend
syn region deinHookScript matchgroup=deinHookScriptQuote start=/^hook_\%(add\|done_update\|post_source\|post_update\|source\)\s*=\s*\z('''\|"""\)/ end=/\z1/ contains=@vimScript keepend
syn region deinHookScript matchgroup=deinHookScriptQuote start=/^hook_\%(add\|done_update\|post_source\|post_update\|source\)\s*=\s*\z('\(''\)\@!\|"\(""\)\@!\)/ end=/\z1/ contains=@vimScript keepend oneline

hi def link deinOptionScriptQuote PreProc
hi def link deinHookScriptQuote PreProc
