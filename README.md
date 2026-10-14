# xyrn's dotfiles

## Comments

Comments starting with one more symbol than needed (e.g. `##`, `---`, `///`) try to explain what's happening, while the normal ones are actual commented-out lines.

## Installation

Install dependencies:

- Debian-based:
  
  ```bash
  sudo apt update && sudo apt -y install zsh zsh-autosuggestions neovim python3 npm
  ```
  
- Fedora:
  
  ```bash
  sudo dnf update && sudo dnf -y install zsh zsh-autosuggestions neovim python3 npm
  ```
  
- Arch Linux:
  
  ```bash
  sudo pacman -Sy zsh zsh-autosuggestions neovim python3 npm
  ```

Download [`fast-syntax-highlighting`](https://github.com/zdharma-continuum/fast-syntax-highlighting):

```bash
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git /usr/share/zsh/plugins/
```

Clone the repo and `cd` into it:

```bash
git clone https://github.com/xxyrnn/dotfiles.git && cd dotfiles
```

Make `install.sh` executable and run it:

```bash
chmod +x install.sh && ./install.sh
```

## Zsh

You should consider editing the following line in `~/.zshenv` with your preferred locale if necessary:

```bash
export LC_ALL="en_US.UTF-8"
```

> [!NOTE]
> If you do not know what locale you are using, run `cat /etc/locale.conf` and read the value of the `LANG` variable.
