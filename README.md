dotfiles
------
Based on https://alexpearce.me/2016/02/managing-dotfiles-with-stow   
GNU Stow https://www.gnu.org/software/stow   
   
Font https://input.fontbureau.com/   
GNOME terminal theme https://github.com/Mayccoll/Gogh   

### Installation
```bash
cd ~
git clone git@github.com:olesla/dotfiles.git .dotfiles
```
### Usage
```bash
cd ~/.dotfiles
stow dir
```
This creates symlinks one level above the current working directory for every file in the folder which is passed in as an argument to the stow command.
```bash
stow zsh
```
```bash
$ ls ~ | grep .zshrc
.zshrc -> .dotfiles/zsh/.zshrc
```
