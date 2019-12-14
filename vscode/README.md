Visual Studio Code
------
Font https://www.google.com/get/noto   

### Installation
The easiest way to install Visual Studio Code for Debian/Ubuntu based distributions is to download and install the `.deb` package and install it via the terminal.

```bash
sudo apt install ./<file>.deb

# If you're on an older Linux distribution, you will need to run this instead:
sudo dpkg -i <file>.deb
# Install dependencies
sudo apt-get install -f
```

The first time Visual Studio Code is opened, it will create subdirectories in `~/.config`. Therefore you need to open the program and close it before using the `stow` command.
