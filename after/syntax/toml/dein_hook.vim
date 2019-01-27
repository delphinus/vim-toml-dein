unlet b:current_syntax
syn include @vimScript syntax/vim.vim
let b:current_syntax = 'toml'

syn region deinOptionScript matchgroup=deinOptionScriptQuote start=/^\%(if\|on_if\)\s*=\s*\z('''\|"""\)/ end=/\z1/ contains=@vimScript keepend
syn region deinOptionScript matchgroup=deinOptionScriptQuote start=/^\%(if\|on_if\)\s*=\s*\z('\(''\)\@!\|"\(""\)\@!\)/ end=/\z1/ contains=@vimScript keepend
syn region deinHookScript matchgroup=deinHookScriptQuote start=/^hook_\%(add\|done_update\|post_source\|post_update\|source\)\s*=\s*\z('''\|"""\)/ end=/\z1/ contains=@vimScript keepend
syn region deinHookScript matchgroup=deinHookScriptQuote start=/^hook_\%(add\|done_update\|post_source\|post_update\|source\)\s*=\s*\z('\(''\)\@!\|"\(""\)\@!\)/ end=/\z1/ contains=@vimScript keepend oneline

syn region deinFtplugin start=/^\s*\[\%(plugins\.\)\?ftplugin\]/ end=/\(\_^\s*\[\|\%$\)\@=/ contains=tomlTable,tomlKey,deinFtpluginScript
syn region deinFtpluginScript matchgroup=deinFtpluginScriptQuote start=/\z('''\|"""\)/ end=/\z1/ contains=@vimScript keepend contained
syn region deinFtpluginScript matchgroup=deinFtpluginScriptQuote start=/\z('\(''\)\@!\|"\(""\)\@!\)/ end=/\z1/ contains=@vimScript keepend contained

hi def link deinFtpluginScriptQuote tomlString
hi def link deinOptionScriptQuote PreProc
hi def link deinHookScriptQuote PreProc
