# foot Terminal Configuration Documentation

Special mention to [Catppuccin](https://github.com/catppuccin/foot) for the styling.

## Table of Contents
1. [Main Settings](#main-settings)
2. [Mouse Bindings](#mouse-bindings)
3. [Color Scheme](#color-scheme)

## Main Settings

```ini
[main]
font=Monaspace Argon:size=12:features=calt
```

- `font`: Sets the terminal font to Monaspace Argon with a size of 12 points.
  - `features=calt`: Enables contextual alternates for the font, which can improve the appearance of certain character combinations.

## Mouse Bindings

```ini
[mouse-bindings]
# Right click to paste from primary selection
primary-paste=BTN_RIGHT
# Middle click to paste from clipboard
clipboard-paste=BTN_MIDDLE
```

This section configures custom mouse button behaviors:
- Right-click (`BTN_RIGHT`) pastes from the primary selection.
- Middle-click (`BTN_MIDDLE`) pastes from the clipboard.

## Color Scheme

```ini
[colors]
alpha=0.8
foreground=cdd6f4
background=1e1e2e
```

- `alpha`: Sets the terminal transparency to 80% (0.8).
- `foreground`: Sets the default text color (#cdd6f4, a light grayish blue).
- `background`: Sets the background color (#1e1e2e, a dark blue-gray).

### Regular Colors

```ini
regular0=45475a  # Black
regular1=f38ba8  # Red
regular2=a6e3a1  # Green
regular3=f9e2af  # Yellow
regular4=89b4fa  # Blue
regular5=f5c2e7  # Magenta
regular6=94e2d5  # Cyan
regular7=bac2de  # White
```

These define the normal color palette used by the terminal.

### Bright Colors

```ini
bright0=585b70  # Bright Black
bright1=f38ba8  # Bright Red
bright2=a6e3a1  # Bright Green
bright3=f9e2af  # Bright Yellow
bright4=89b4fa  # Bright Blue
bright5=f5c2e7  # Bright Magenta
bright6=94e2d5  # Bright Cyan
bright7=a6adc8  # Bright White
```

These define the bright color palette used by the terminal.

### Special Colors

```ini
selection-foreground=cdd6f4
selection-background=414356
search-box-no-match=11111b f38ba8
search-box-match=cdd6f4 313244
jump-labels=11111b fab387
urls=89b4fa
```

- `selection-foreground` and `selection-background`: Define the colors used for selected text.
- `search-box-no-match` and `search-box-match`: Define the colors used in the search box for non-matching and matching text, respectively.
- `jump-labels`: Defines the color used for jump labels (if the feature is supported).
- `urls`: Defines the color used for URL highlighting.
