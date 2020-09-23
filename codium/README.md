# VSCodium
VSCodium is a community-driven, freely-licensed binary distribution of Microsoft’s editor VSCode

## Why does VSCodium exist?
Microsoft’s vscode source code is open source (MIT-licensed), but the product available for download (Visual Studio Code) is licensed under this not-FLOSS license and contains telemetry/tracking.

## Installation
The easiest way to install Visual Studio Code for Debian/Ubuntu based distributions is to [download](https://github.com/VSCodium/vscodium/releases) and install the `.deb` package and install it via the terminal.

```bash
wget codium_x.xx.x-xxxxxx_amd64.deb
sudo apt install ./<file>.deb

# If you're on an older Linux distribution, you will need to run this instead:
sudo dpkg -i <file>.deb
# Install dependencies
sudo apt-get install -f
```

The first time VSCodium is opened, it will create subdirectories in `~/.config`. Therefore you need to open the program and close it before using the `stow` command.

### Extensions

Run this script to install extensions. Some might fail because they might not work with the current version of VSCodium.

```bash
sh install.sh
```
