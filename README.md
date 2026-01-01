# Dotfiles Arch

<sub>revision 2024-08-21</sub>

A comprehensive collection of configuration files for Arch Linux featuring a minimal and efficient BSPWM desktop environment with carefully selected tools and themes.

## 🌟 Overview

This dotfiles setup provides a complete, ready-to-use desktop experience with:
- **Window Manager**: BSPWM with automatic dual-monitor support
- **Terminal**: Kitty with transparency and custom themes
- **Status Bar**: Polybar with system monitoring modules
- **Application Launcher**: Rofi with gruvbox theme
- **Notifications**: Dunst with customized appearance
- **Text Editor**: Neovim with LazyVim configuration
- **File Manager**: Midnight Commander (mc) with custom settings

## 📦 Contents

| Component | Description | Key Features |
|-----------|-------------|--------------|
| **bspwm** | Tiling window manager | Dual monitor setup, custom workspaces, rounded borders |
| **sxhkd** | Hotkey daemon | Comprehensive keybindings for window management |
| **kitty** | Terminal emulator | Transparency, custom fonts, split layouts |
| **polybar** | Status bar | System monitoring, workspace indicators, dual monitor support |
| **rofi** | Application launcher | Drun mode, icon support, gruvbox theme |
| **dunst** | Notification daemon | Custom colors, urgency levels, positioning |
| **nvim** | Text editor | LazyVim configuration, Lua-based setup |
| **picom** | Compositor | Transparency, blur effects, animations |
| **mc** | File manager | Custom panels, color schemes |

## 🚀 Installation

### Prerequisites

Ensure you have the following packages installed on Arch Linux:

```bash
# Core packages
sudo pacman -S bspwm sxhkd kitty polybar rofi dunst picom neovim

# Additional utilities
sudo pacman -S nitrogen flameshot betterlockscreen playerctl

# Optional: For full functionality
sudo pacman -S jetbrains-mono-nerd ttf-font-awesome
```

### Setup using GNU Stow

This repository uses GNU Stow for easy management of configuration files:

```bash
# Clone the repository
git clone https://github.com/VladimirKobranov/dotfiles-arch.git
cd dotfiles-arch

# Stow individual packages
stow bspwm          # BSPWM window manager
stow sxhkd          # Hotkey daemon
stow kitty          # Terminal emulator
stow polybar        # Status bar
stow rofi           # Application launcher
stow dunst          # Notification daemon
stow nvim           # Neovim configuration
stow picom          # Compositor
stow mc             # Midnight Commander

# Or stow all at once
stow */

# Test before applying (dry run)
stow -n <packagename>

# Remove/unstow a package
stow -D <packagename>

# Restow a package (useful after updates)
stow -R <packagename>
```

## ⌨️ Keybindings

### Window Management (BSPWM + SXHKD)

| Keybinding | Action |
|------------|--------|
| `Super + Return` | Open terminal (kitty) |
| `Super + Space` | Application launcher (rofi) |
| `Super + b` | Open browser (Chrome) |
| `Super + d` | File manager (Dolphin) |
| `Super + Shift + t` | Telegram Desktop |
| `Super + w` | Close window |
| `Super + Shift + w` | Kill window |
| `Super + m` | Toggle monocle layout |
| `Super + {h,j,k,l}` | Focus direction |
| `Super + Shift + {h,j,k,l}` | Swap window direction |
| `Super + {1-9,0}` | Focus workspace |
| `Super + Shift + {1-9,0}` | Send to workspace |
| `Super + Alt + {h,j,k,l}` | Resize window |
| `Super + Escape` | Reload SXHKD |
| `Super + Alt + Ctrl + q` | Quit BSPWM |
| `Super + Alt + Ctrl + r` | Restart BSPWM |

### System Controls

| Keybinding | Action |
|------------|--------|
| `XF86AudioRaiseVolume` | Volume up (+5%) |
| `XF86AudioLowerVolume` | Volume down (-5%) |
| `XF86AudioMute` | Toggle mute |
| `Super + e` | Toggle mute |
| `Super + r` | Play/pause media |
| `Print` | Screenshot tool (flameshot) |
| `Super + Shift + x` | Lock screen |

### Terminal (Kitty)

| Keybinding | Action |
|------------|--------|
| `Ctrl + Shift + c` | Copy to clipboard |
| `Ctrl + Shift + v` | Paste from clipboard |
| `Ctrl + Shift + t` | New tab |
| `Ctrl + Shift + w` | Close tab |
| `Ctrl + Shift + n` | New window |
| `Ctrl + e` | Split vertical |
| `Ctrl + o` | Split horizontal |
| `Ctrl + w` | Close window |

## 🎨 Theme & Appearance

### Color Scheme
The setup uses a consistent dark theme throughout:
- **Primary**: `#F0C674` (Amber/Yellow)
- **Secondary**: `#8ABEB7` (Cyan)
- **Background**: `#282A2E` (Dark gray)
- **Foreground**: `#C5C8C6` (Light gray)
- **Alert**: `#A54242` (Red)

### Fonts
- **Primary**: JetBrains Mono Nerd Font
- **Terminal**: JetBrains Mono Nerd Font (size 11)
- **Status Bar**: JetBrains Mono Nerd Font (size 9)

### Transparency
- **Terminal**: 50% background opacity
- **Notifications**: Configured transparency levels
- **Compositor**: Picom handles window transparency and blur

## 🖥️ Dual Monitor Support

The configuration includes automatic dual monitor setup:
- **Primary Monitor**: eDP-1 (laptop display)
- **External Monitor**: HDMI-2
- **Workspace Distribution**: Custom workspaces on each monitor
- **Polybar**: Separate bars for each monitor

## 📸 Screenshots

![Desktop Screenshot](https://github.com/VladimirKobranov/dotfiles-arch/blob/master/images/20250402_20h51m34s_grim.png)

## 🔧 Customization

### Adding New Configurations
1. Create the configuration directory in `.config/`
2. Add your files to the appropriate directory
3. Use `stow` to create symlinks:
   ```bash
   stow <new-package>
   ```

### Modifying Existing Configurations
1. Edit files directly in the repository
2. Restow the package to apply changes:
   ```bash
   stow -R <package>
   ```

### Theme Changes
- **Kitty**: Modify `kitty.conf` or theme files
- **Polybar**: Update `config.ini` color section
- **Rofi**: Change theme in `config.rasi`
- **Dunst**: Adjust colors in `dunstrc`

## 📋 Dependencies

### Required Packages
```bash
bspwm sxhkd kitty polybar rofi dunst picom neovim mc
```

### Recommended Packages
```bash
nitrogen flameshot betterlockscreen playerctl
jetbrains-mono-nerd ttf-font-awesome
```

### Optional Packages
```bash
google-chrome-stable telegram-desktop dolphin
```

## 🐛 Troubleshooting

### Common Issues

1. **Polybar not starting**
   - Check monitor names with `xrandr`
   - Update monitor names in `config.ini`

2. **Kitty transparency not working**
   - Ensure picom is running
   - Check compositor configuration

3. **Keybindings not working**
   - Reload SXHKD: `pkill -USR1 -x sxhkd`
   - Check for conflicting keybindings

4. **Stow conflicts**
   - Use `stow -n <package>` for dry run
   - Remove existing conflicting files
   - Use `stow -D <package>` to unstow before restowing

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report issues
- Suggest improvements
- Submit pull requests
- Share your customizations

## 📞 Support

For questions or support:
- Open an issue on GitHub
- Check the Arch Wiki for component-specific documentation
- Refer to manual pages (`man bspwm`, `man sxhkd`, etc.)

---

**Enjoy your minimal, efficient Arch Linux desktop!** 🚀