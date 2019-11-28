# VIM Password Genetator

## Installation

```vim
Plug 'josa42/vim-password-generator'
```

## Usage

```vim
nmap <F2> "=password#generate(16)<C-M>P
vmap <F2> "=password#generate(16)<C-M>p
imap <F2> <C-R>=password#generate(16)<C-M>
```

## License

[MIT © Josa Gesell](LICENSE)
