# Waybar Configuration and Styling Documentation

Special thanks to [Catppuccin](https://github.com/catppuccin/waybar/tree/main) for most of the styling.

## Table of Contents
1. [Waybar Configuration](#waybar-configuration)
2. [CSS Styling](#css-styling)
   - [Mocha Color Palette](#mocha-color-palette)
   - [Main Styling](#main-styling)

## Waybar Configuration

The Waybar configuration is defined in JSON format:

```json
{
    "layer": "top",
    "position": "top",
    "modules-left": ["sway/workspaces", "sway/mode"],
    "modules-center": ["custom/music"],
    "modules-right": ["pulseaudio", "battery", "clock", "tray", "custom/lock", "custom/power"],
    // ... (other configurations)
}
```

Key features:
- Positioned at the top of the screen
- Left side: Workspaces and Sway mode
- Center: Custom music module
- Right side: Audio, battery, clock, system tray, lock, and power menu

### Module Configurations

1. **Workspaces**
   - Disable scroll
   - Sort by name
   - Custom icon for default workspace

2. **System Tray**
   - Icon size: 21px
   - Spacing: 10px

3. **Custom Music Module**
   - Uses `playerctl` to display current track
   - Click to play/pause
   - Updates every 5 seconds

4. **Clock**
   - Timezone: Australia/Adelaide
   - Alternate format for date display

5. **Battery**
   - Custom icons for different battery levels
   - Warning state at 30%, critical at 15%

6. **PulseAudio**
   - Click to open pavucontrol

7. **Custom Lock**
   - Triggers swaylock with a 0.5s delay

8. **Custom Power**
   - Triggers the power menu script

## CSS Styling

The styling is split into two files: `mocha.css` for color definitions and `style.css` for layout and design.

### Mocha Color Palette

`mocha.css` defines the Catppuccin Mocha color palette:

```css
@define-color base   #1e1e2e;
@define-color mantle #181825;
@define-color crust  #11111b;
// ... (other color definitions)
```

### Main Styling

`style.css` imports the Mocha palette and defines the overall look of the Waybar:

```css
@import "mocha.css";

* {
  font-family: FantasqueSansMono Nerd Font;
  font-size: 14px;
  min-height: 0;
}

#waybar {
  background-color: shade(@base, 0.9);
  opacity: 0.8;
  color: @text;
  margin: 4px 4px;
}

// ... (other style definitions)
```
