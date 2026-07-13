# liquid-shell
Minimalist configuration for SwayFX (Wayland).

## Preview
<img width="2560" height="1440" alt="image" src="https://github.com/user-attachments/assets/d75f462f-ecd9-4dbd-8cad-94081f1712d6" />

## Wallpapers
<img width="3840" height="2160" alt="wallpaper" src="https://github.com/user-attachments/assets/14a70933-313b-40db-bc48-8e7d1f42bd31" />
<img width="3840" height="2160" alt="fffffff" src="https://github.com/user-attachments/assets/469e7680-b5dc-443e-b9c6-17292891c693" />


## Components
| Component | Application | Notes |
| :--- | :--- | :--- |
| **Window Manager** | SwayFX | Blur & Radius enabled |
| **Bar** | Waybar | Custom CSS, MPRIS, & Pomodoro |
| **Terminal** | Kitty | Custom Theme |
| **Launcher** |	Rofi |	Run / Drun / Window modes
| **Compositor** | Native |	SwayFX handles composition

### Key Bindings

<details>
<summary>Click to view full keybindings list</summary>



| Keybind | Action | Command |
| :--- | :--- | :--- |
| **Applications** | | |
| `Mod` + `Enter` | Open Terminal | `$term (Kitty)` |
| `Mod` + `d` | App Launcher | `rofi -show drun` |
| `Mod` + `c` | Clipboard Manager | `cliphist` |
| `Mod` + `b` | Browser | `firefox` |
| `Mod` + `n` | File Manager | `dolphin` |
| `Mod` + `w` | Wallpaper Manager | `waypaper` |
| `Mod` + `.` | Emoji Launcher | `rofi -show emoji` |
| `Mod` + `shift` + `e` | Logout Manager | `wlogout` |
| **Navigation & Workspaces** | | |
| `Mod` + `Tab` | Visual Window List | `rofi -show window` |
| **System** | | |
| `Mod` + `q` | Kill Focused Window | `kill` |
| `Mod` + `Shift` + `x` | Lock Screen | `swaylock` |
| `Mod` + `Shift` + `c` | Reload Configuration | `reload` |
| `Mod` + `Shift` + `e` | Exit Sway | `swaynag` |
| **Screenshots** | | |
| `Mod` + `Shift` + `s` | Region Screenshot | `grim + slurp` |
| `Print` | Full Screenshot | `grim` |
| **Window Management** | | |
| `Mod` + `Shift` + `Space` | Toggle Floating | `floating toggle` |
| `Mod` + `Shift` + `Minus` | Scratchpad (Move) | `move scratchpad` |
| **Hardware / Media** | | |
| `Vol Up/Down/Mute` | Audio Control | `pactl` |
| `Play/Next/Prev` | Media Control | `playerctl` |


</details>

# Install
## Arch Linux
```bash
sudo pacman -Syu
sudo pacman -S git swayfx autotiling swaybg waybar kitty rofi swaylock papirus-icon-theme ttf-fira-code ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols gsimplecal wtype rofi-emoji dolphin wlogout
yay -S waytrogen
cd ~
git clone https://github.com/swpuzo/liquid-sway
cp -r ~/liquid-sway/* ~/.config/
rm -rf ~/liquid-sway
```

# Once installed, do this
Open the terminal and enter the command
```bash
nano ~/.config/waybar/config
```
Press Ctrl + W and find "timezone" 
Replace London with your city.
In the "Pictures" directory, paste the wallpaper file, Press Mod+w and select wallpaper.
