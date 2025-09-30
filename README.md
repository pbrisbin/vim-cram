> [!NOTE]
> All of my GitHub repositories have been **archived** and will be migrated to
> Codeberg as I next work on them. This repository either now lives, or will
> live, at:
>
> https://codeberg.org/pbrisbin/vim-cram
>
> If you need to report an Issue or raise a PR, and this migration hasn't
> happened yet, send an email to me@pbrisbin.com.

# vim-cram v0.1.0 [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/MisanthropicBit/vim-cram/master/LICENSE)

**This project is currently under development**

`vim` syntax highlighting for [`cram`](https://github.com/brodie/cram).

Since `cram` already contains a [syntax highlighting
file](https://github.com/brodie/cram/blob/master/contrib/cram.vim), here are
some reasons to install `vim-cram` instead:

* Adaptable syntax highlighting based on `cram` indentation setting.
* Read `.cramrc` files using `CramConfig`.
* Run `cram` test files in `vim` using `Cram`.
* Enhanced folding

![Example highlighting using the quantum colorscheme](/demo.png?raw=true)

## Installation

`vim-cram` is `pathogen`-compatible and can be installed with various plugin managers:

* [Pathogen](https://github.com/tpope/vim-pathogen):
  `git clone https://github.com/MisanthropicBit/vim-cram ~/.vim/bundle/vim-cram`
* [NeoBundle](https://github.com/Shougo/neobundle.vim):
  `NeoBundle 'MisanthropicBit/vim-cram'`
* [VAM](https://github.com/MarcWeber/vim-addon-manager):
  `call vam#ActivateAddons(['MisanthropicBit/vim-cram'])`
* [Vundle](https://github.com/VundleVim/Vundle.vim):
  `Plugin 'MisanthropicBit/vim-cram'`
