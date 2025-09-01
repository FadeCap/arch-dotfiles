# 🌿 Arch Linux Rice Setup

### This rice is just a slightly tweaked version of [Sansroot's](https://github.com/sansroot) peach rice.

#### Check out San's Rices here: https://sansroot.github.io/My-Rices/

#### They look so good, and the installation steps San's shows are easy to follow and works really well.

This is a list of all the tools and programs used in my personal Arch Linux ricing setup. Below are the installation commands and a brief description of each tool.

---

# Dependencies (programs I use)

## 🔧 System & Window Manager

| Tool         | Description                                     | Install Command                                    |
| ------------ | ----------------------------------------------- | -------------------------------------------------- |
| **Hyprland** | Dynamic tiling Wayland compositor               | `sudo pacman -S hyprland` or `yay -S hyprland-git` |
| **Hyprlock** | Screen locker for Hyprland                      | `yay -S hyprlock`                                  |
| **Hyprshot** | Screenshot tool for Hyprland                    | `yay -S hyprshot`                                  |
| **Swww**     | Wallpaper daemon for Wayland (use -git version) | `yay -S swww-git`                                  |

---

## 🖥️ Appearance

| Tool              | Description                         | Install Command                     |
| ----------------- | ----------------------------------- | ----------------------------------- |
| **Waybar**        | Customizable status bar for Wayland | `sudo pacman -S waybar`             |
| **Rofi**          | Application launcher                | `sudo pacman -S rofi`               |
| **Papirus Icons** | Stylish icon pack                   | `sudo pacman -S papirus-icon-theme` |
| **Nerd Fonts**    | Fonts with icons                    | `yay -S nerd-fonts-complete`        |
| **Awesome Fonts** | Icon font set                       | `sudo pacman -S ttf-font-awesome`   |

---

## 🎵 Audio & Visuals

| Tool             | Description                    | Install Command             |
| ---------------- | ------------------------------ | --------------------------- |
| **Cava**         | Console-based audio visualizer, this is for waybar | `sudo pacman -S cava`       |
| **Easy Effects** | Equalizer software             | `sudo pacman -S easyeffect` |

---

![image](https://github.com/user-attachments/assets/a8032222-e7a6-43e2-a81d-f965af2dee37)

(Almost the same i use in easy effect, slightly altered for less bass)


## 💻 Terminal & Shell

| Tool                        | Description                           | Install Command                                                                                                                         |
| --------------------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **Zsh**                     | Z shell                               | `sudo pacman -S zsh`                                                                                                                    |
| **Oh My Zsh**               | Framework for managing Zsh config     | [Install via script](https://ohmyz.sh/#install)                                                                                         |
| **Powerlevel10k**           | Fast, customizable Zsh theme          | `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`                                     |
| **zsh-autosuggestions**     | Suggests commands as you type         | `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`             |
| **zsh-syntax-highlighting** | Syntax highlights in terminal         | `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting` |
| **Kitty**                   | GPU-based terminal emulator           | `sudo pacman -S kitty`                                                                                                                  |
| **Fastfetch**               | Neofetch alternative, faster & themed | `sudo pacman -S fastfetch`                                                                                                              |
| **Tmux**               | Multiple terminals in one, and sessions etc | `sudo pacman -S tmux`                                                                                                              |
| **LazyGit** (optional)               | Simple terminal UI for Git - commit, stash, push etc | `sudo pacman -S lazygit`                                                                                                              |

---

## 📝 Text Editor

| Tool       | Description                  | Install Command         |
| ---------- | ---------------------------- | ----------------------- |
| **Neovim** | Modern Vim-based text editor | `sudo pacman -S neovim` |

> 📁 Be sure to copy your `~/.config/nvim` directory for custom configs.


Extras: (programs I use today)
 * MPD (music library back-end)
 * ncmpcpp (music player for the terminal)
 * Obsidian
 * lazygit
 * kdeconnect
 * rivalcfg (to check battery % on steelseries mouse)

---

## 🗂️ Dotfiles

Don't forget to track the following config directories and files in your repo:

~/.config/hypr/

~/.config/waybar/

~/.config/rofi/

~/.config/kitty/

~/.config/nvim/

~/.config/swww/

~/.config/hyprlock/

~/.config/hyprshot/

~/.zshrc

~/.p10k.zsh
~/.config/tmux/

You can use a symlink manager like [`stow`](https://www.gnu.org/software/stow/) to manage them cleanly:

```bash
sudo pacman -S stow
```
