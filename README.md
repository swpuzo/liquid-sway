# liquid-sway
Minimalist configuration for SwayFX (Wayland).

## Preview
<img width="1923" height="1080" alt="image" src="https://github.com/user-attachments/assets/4d55e59b-ff34-469c-b0b8-cbc777a4c378" />
<p align="center">
<a href="https://liquid-sway.netlify.app/" target="_blank">
  <img src="https://shields.io" alt="WebSite">
</a>
</p>


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
| **Navigation & Workspaces** | | |
| `Mod` + `Tab` | Visual Window List | `rofi -show window` |
| **System** | | |
| `Mod` + `Shift` + `q` | Kill Focused Window | `kill` |
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
sudo pacman -S git sway swayfx autotiling swaybg waybar kitty rofi swaylock papirus-icon-theme ttf-fira-code ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols gsimplecal
cd ~/.config
git clone https://github.com/swpuzo/liquid-sway
cp ~/.config/liquid-sway ~/.config/
```
## Fedora Linux
```bash
sudo dnf install -y git sway autotiling swaybg waybar kitty rofi-wayland swaylock papirus-icon-theme fira-code-fonts jetbrains-mono-fonts google-noto-sans-symbols-fonts nerd-fonts-repo-fonts jetbrains-mono-nerd-fonts
sudo dnf copr enable swayfx/swayfx -y && sudo dnf install -y swayfx
sudo dnf install gsimplecal
cd ~/.config
git clone https://github.com/swpuzo/liquid-sway
cp ~/.config/liquid-sway ~/.config/
```
## Debian 
```bash
sudo apt update && sudo apt install -y git sway autotiling swaybg waybar kitty rofi swaylock papirus-icon-theme fonts-firacode
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
cd ~/.config
git clone https://github.com/swpuzo/liquid-sway
cp ~/.config/liquid-sway ~/.config/
```

# Once installed, do this
Open the terminal and enter the command
```bash
nano ~/.config/waybar/config
```
Press Ctrl + W and find "timezone" 
Replace London with your city.
In the "Pictures" directory, paste the wallpaper file in the format and name wallpaper.jpg
