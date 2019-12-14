***
## ZSH

If necessary, follow these steps to install Zsh:

1. There are two main ways to install Zsh
  - with the package manager of your choice, _e.g._ `sudo apt install zsh`
  - from [source](http://zsh.sourceforge.net/Arc/source.html), following
        [instructions from the Zsh FAQ](http://zsh.sourceforge.net/FAQ/zshfaq01.html#l7)
2. Verify installation by running `zsh --version`. Expected result: `zsh 5.1.1` or more recent.
3. Make it your default shell: `chsh -s $(which zsh)`
  - Note that this will not work if Zsh is not in your authorized shells list (`/etc/shells`)
    or if you don't have permission to use `chsh`. If that's the case [you'll need to use a different procedure](https://www.google.com/search?q=zsh+default+without+chsh).
4. Log out and login back again to use your new default shell.
5. Test that it worked with `echo $SHELL`. Expected result: `/bin/zsh` or similar.
6. Test with `$SHELL --version`. Expected result: 'zsh 5.1.1' or similar

## Oh My Zsh

Oh My Zsh is installed by running one of the following commands in your terminal. You can install this via the command-line with either `curl` or `wget`.

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### via wget

```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Manual inspection

It's a good idea to inspect the install script from projects you don't yet know. You can do
that by downloading the install script first, looking through it so everything looks normal,
then running it:

```shell
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

## Using Oh My Zsh

### Plugins

Oh My Zsh comes with a shitload of plugins to take advantage of. You can take a look in the [plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins) directory and/or the [wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) to see what's currently available.

#### Enabling Plugins

Once you spot a plugin (or several) that you'd like to use with Oh My Zsh, you'll need to enable them in the `.zshrc` file. You'll find the zshrc file in your `$HOME` directory. Open it with your favorite text editor and you'll see a spot to list all the plugins you want to load.

```shell
vi ~/.zshrc
```

For example, this might begin to look like this:

```shell
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)
```

_Note that the plugins are separated by whitespace. **Do not** use commas between them._
