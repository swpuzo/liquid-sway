# liquid-sway
Minimalist configuration for SwayFX (Wayland).

## Preview
<img width="1921" height="1080" alt="image" src="https://github.com/user-attachments/assets/9df8dac6-f791-428c-ad1e-08b944296d46" />

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
| `Mod` + `w` |  | `Wallpaper Manager` | `waypaper` |
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
sudo pacman -S git swayfx autotiling swaybg waybar kitty rofi swaylock papirus-icon-theme ttf-fira-code ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols gsimplecal
yay -S waypaper
cd ~
git clone https://github.com/swpuzo/liquid-sway
cp -r ~/liquid-sway/* ~/.config/
rm -rf ~/liquid-sway
```
## Fedora 
```bash
sudo dnf install -y git autotiling swaybg waybar kitty rofi-wayland swaylock papirus-icon-theme fira-code-fonts jetbrains-mono-fonts google-noto-sans-symbols-fonts nerd-fonts-repo-fonts jetbrains-mono-nerd-fonts
sudo dnf copr enable swayfx/swayfx -y && sudo dnf install -y swayfx
sudo dnf install gsimplecal
sudo dnf copr enable solopasha/hyprland
sudo dnf install waypaper
cd ~
git clone https://github.com/swpuzo/liquid-sway
cp -r ~/liquid-sway/* ~/.config/
rm -rf ~/liquid-sway
```
## Debian 
```bash
sudo apt update && sudo apt install -y git autotiling swaybg waybar kitty rofi swaylock papirus-icon-theme fonts-firacode
sudo apt install -y meson pkg-config cmake git scdoc wayland-protocols \
libwayland-dev libpcre2-dev libjson-c-dev libpango1.0-dev libcairo2-dev \
libgdk-pixbuf-2.0-dev libpciaccess-dev libinput-dev libxkbcommon-dev \
libpixman-1-dev libudev-dev libgbm-dev libgles2-mesa-dev libseat-dev
mkdir -p ~/build && cd ~/build
git clone https://github.com/WillPower3309/swayfx.git
cd swayfx
meson setup build/
ninja -C build/
sudo ninja -C build/ install
mkdir -p ~/.local/share/fonts
sudo apt install -y fonts-font-awesome
fc-cache -fv
sudo apt install gsimplecal
sudo apt update
sudo apt install python3-pip pipx python3-gi python3-pil
pipx install waypaper
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
