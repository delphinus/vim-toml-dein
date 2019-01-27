unlet b:current_syntax
syn include @vimScript syntax/vim.vim
let b:current_syntax = 'toml'

syn region tomlDeinScriptOption start=/^\%(if\|on_if\|hook_\%(add\|done_update\|post_source\|post_update\|source\)\)\s*=\s*\z('''\|"""\)/ end=/\z1/ contains=tomlKey,tomlDeinScript keepend
syn region tomlDeinFtplugin start=/^\s*\[\%(plugins\.\)\?ftplugin\]/ end=/\(\_^\s*\[\|\%$\)\@=/ contains=tomlDeinScript
syn region tomlDeinScript matchgroup=tomlDeinScriptQuote start=/\z('''\|"""\)/ end=/\z1/ contains=@vimScript keepend contained

hi def link tomlDeinScriptQuote tomlString
