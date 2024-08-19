# Wofi Configuration and Styling Documentation

There's no official Catppuccin theme for Wofi but this uses all the same colours and inspiration from the [Rofi](https://github.com/catppuccin/rofi) one.

## Table of Contents
1. [Color Palette](#color-palette)
2. [Styling](#styling)

## Color Palette

```css
@define-color rosewater rgb(245, 224, 220);
@define-color text      rgb(205, 214, 244);
@define-color subtext1  rgb(186, 194, 222);
@define-color subtext0  rgb(166, 173, 200);
@define-color overlay2  rgb(147, 153, 178);
@define-color overlay1  rgb(127, 132, 156);
@define-color overlay0  rgb(108, 112, 134);
@define-color surface2  rgb(88, 91, 112);
@define-color surface1  rgb(69, 71, 90);
@define-color surface0  rgb(49, 50, 68);
@define-color base      rgb(30, 30, 46);
@define-color mantle    rgb(24, 24, 37);
@define-color crust     rgb(17, 17, 27);
```

This palette provides a range of colors from light to dark, allowing for a cohesive and visually appealing design.

## Styling

The styling is applied to various elements of the Wofi window:

### Main Window

```css
window {
  background-color: @base;
  opacity: 0.9;
  color: @text;
  border: 2px solid @rosewater;
}
```

- Uses the `base` color as background
- Sets opacity to 90%
- Uses `text` color for text
- Adds a 2px solid border in `rosewater` color

### Input Box

```css
#input {
  background-color: @surface0;
  color: @rosewater;
  border: 1px solid @overlay0;
}
```

- Uses `surface0` as background
- Sets text color to `rosewater`
- Adds a 1px solid border in `overlay0` color

### Inner and Outer Boxes

```css
#inner-box {
  background-color: @base;
}
#outer-box {
  background-color: @base;
}
```

Both inner and outer boxes use the `base` color as background.

### Scroll Area

```css
#scroll {
  background-color: @base;
}
```

The scroll area also uses the `base` color as background.

### Text

```css
#text {
  color: @text;
}
```

General text color is set to `text`.

### Selected Entry

```css
#entry:selected {
  background-color: @rosewater;
}
#text:selected {
  color: @base;
}
```

- Selected entries have a `rosewater` background
- Text in selected entries uses the `base` color, providing contrast
