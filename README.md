# Dotfiles

## Table of Contents

1. [Overview](#overview)
2. [Configurations](#configurations)
3. [Theme](#theme)
4. [Installation](#installation)

## Overview

This dotfiles repo has my config for:

- Sway window manager
- Waybar status bar
- Wofi application launcher
- Foot terminal emulator
- Bash shell
- Tmux terminal multiplexer
- Firefox web browser

The configurations are designed to work together, providing a consistent look and feel across the entire desktop environment.

## Configurations

Detailed documentation for each configuration can be found in the following files:

- [Bash Configuration](./docs/bash.md)
- [Firefox Configuration](./docs/firefox.md)
- [Foot Terminal Configuration](./docs/foot.md)
- [Sway Window Manager Configuration](./docs/sway.md)
- [Tmux Configuration](./docs/tmux.md)
- [Waybar Configuration](./docs/waybar.md)
- [Wofi Configuration](./docs/wofi.md)
- [WLSunset Configuration](./docs/wlsunset.md)

Each of these files contains information about the relevant configurations.

## Theme

The overall theme of this desktop environment is based on the Catppuccin Mocha colour palette.

## Installation

To use these dotfiles:

1. Clone this repository:
   ```
   git clone https://github.com/xKaimac/dotfiles.git
   ```
2. Navigate to the cloned directory:
   ```
   cd dotfiles
   ```
3. Symlink the configuration files to their appropriate locations. For example:
   ```
   ln -s ~/dotfiles/sway/config ~/.config/sway/config
   ```
   Repeat this process for each configuration file.
