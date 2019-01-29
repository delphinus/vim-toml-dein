# vim-toml-dein

A tiny syntax to highlight Vim script for [dein.vim][] on toml files

[dein.vim]: https://github.com/Shougo/dein.vim

## What's this?

[dein.vim][] supports two formats for setting.  One is on `.vimrc`, and another is external `.toml` files.  This is for the latter.

It highlights Vim script on some options for dein.vim.  It can detect below.

* `if` / `on_if`
* `hook_*`
* `[ftplugin]` / `[plugins.ftpugin]`

It also depends on [cespare/vim-toml][] to highlight TOML itself.

[cespare/vim-toml]: https://github.com/cespare/vim-toml

## example

| before                                                                                                                                                | after                                                                                                                                                 |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| <img width="470" alt="2019-01-29 14 25 21" src="https://user-images.githubusercontent.com/1239245/51886194-11c8fe00-23d2-11e9-8bd8-5c1ed347d99c.png"> | <img width="469" alt="2019-01-29 14 24 31" src="https://user-images.githubusercontent.com/1239245/51886183-0bd31d00-23d2-11e9-8563-9748978d998c.png"> |

## Installation

example for dein.vim

```toml
[[plugins]]
repo = 'cespare/vim-toml'

[[plugins]]
repo = 'delphinus/vim-toml-dein'
```
