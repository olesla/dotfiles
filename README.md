# .dotfiles

Based on [managing dotfiles with GNU stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow)

## Dependencies
- GNU Stow https://www.gnu.org/software/stow

## Setup
Install stow and clone this repository to the home directory

```bash
$ git clone git@github.com:olesla/dotfiles.git ~/.dotfiles
```

## Symbolic linking

Creating symbolic links is easy using stow. If a file named `.stow-local-ignore` exists, this file and it's folder and files will be ignored. It's similar to how a `.gitignore` file works.

```bash
$ stow vim
$ ls ~/.vimrc
.vimrc -> .dotfiles/vim/vim.rc
```
