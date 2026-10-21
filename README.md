# xyrn's dotfiles

## Comments

Comments starting with one symbol more than needed (e.g. `##`, `---`, `///`) try to explain what's happening, while the normal
ones are actual commented-out lines.

---

## Installation

My distro is Arch Linux, so this guide uses `pacman` as package manager, but you can use your preferred one: as far as I know,
the only package with a different name is `base-devel`, which is `build-essential` in Debian-based distros (and Fedora?).

Furthermore, this guide uses `fish` as shell and `helix` and `micro` as terminal editors, but you can use your preferred ones.
The repo also contains configurations for `bash` and `zsh` as shells and `neovim` as terminal editor.

1. Install dependencies:
   
  ```bash
  sudo pacman -Sy base-devel python3 npm
  ```
  
2. Install software:
   
  ```bash
  sudo pacman -Sy polkit polkit-gnome ly hyprland quickshell kitty pipewire fish helix rofi zed nwg-look qt5ct qt6ct wiremix \
      btop pfetch networkmanager iwd nm-applet blueman awww hyprpm udiskie yazi fastfetch btop wleave bat lsd ripgrep plocate
  ```
  
3. Download [`fast-syntax-highlighting`](https://github.com/zdharma-continuum/fast-syntax-highlighting) **(ONLY IF YOU USE `zsh`)**:

  ```bash
  git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git /usr/share/zsh/plugins/
  ```

4. Clone the repo and `cd` into it:

  ```bash
  git clone https://github.com/xxyrnn/dotfiles.git && cd dotfiles
  ```

5. Make `install.sh` executable and run it:

  ```bash
  chmod +x install.sh && ./install.sh
  ```

---

## Configuration

### Shell

You should consider editing the following line in `~/.config/fish/conf.d/environment.fish` (for `fish`) with your preferred
locale, if necessary:

```bash
set -gx LC_ALL "en_US.UTF-8"
```

or in `~/.zshenv` (for `zsh`):

```bash
export LC_ALL="en_US.UTF-8"
```

> [!NOTE]
> If you do not know what locale you are using, run `cat /etc/locale.conf` and read the value of the `LANG` variable.

### GTK

To remove the buttons (minimize, maximize, close) from GTK3/GTK4 window decorations run the following command:

```bash
gsettings set org.gnome.desktop.wm.preferences button-layout ':'
```
