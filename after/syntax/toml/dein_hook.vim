unlet b:current_syntax
syn include @vimScript syntax/vim.vim
let b:current_syntax = 'toml'

syn region tomlDeinScriptOption start=/\v^\s*%(if|on_if|hook_%(add|done_update|post_source|post_update|source))\s*\=\s*\z('''|""")/ end=/\z1/ contains=tomlKey,tomlDeinScript keepend
syn region tomlDeinScriptOption start=/\v^\s*%(if|on_if|hook_%(add|done_update|post_source|post_update|source))\s*\=\s*\z('('')@!|"("")@!)/ end=/\z1/ contains=tomlKey,tomlDeinScript oneline keepend
syn region tomlDeinFtplugin start=/\v^\s*\[%(plugins\.)?ftplugin\]/ end=/\v(\_^\s*\[|%$)@=/ contains=tomlDeinScript keepend
syn region tomlDeinScript matchgroup=tomlDeinScriptQuote start=/\v\z('''|""")/ end=/\z1/ contains=@vimScript keepend contained
syn region tomlDeinScript matchgroup=tomlDeinScriptQuote start=/\v\z('('')@!|"("")@!)/ end=/\z1/ contains=@vimScript keepend contained oneline

hi def link tomlDeinScriptQuote tomlString
