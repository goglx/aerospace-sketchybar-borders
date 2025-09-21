# Aerospace Sketchybar Borders

This repository contains a personalized configuration for Sketchybar, tailored for use with the Aerospace window manager and the `borders` utility. It's a direct 1:1 export of the setup I use on my own Mac, designed to provide a clean, informative, and aesthetically pleasing desktop experience.

![Sketchybar with black background](https://github.com/user-attachments/assets/ad2bada4-05a7-4dd2-858d-5e28eac60f99)
![Sketchybar with black background](https://github.com/user-attachments/assets/388c42bb-ba86-4caa-879b-4b0daa3b7e22)
![Sketchybar with color background](https://github.com/user-attachments/assets/641971b9-a4e1-409d-9442-c8906a80f4d4)

## Features

This configuration brings together Aerospace, Sketchybar, and `borders` to create a cohesive and functional desktop environment.

### Aerospace

*   **Custom App Bindings:** Includes pre-configured application bindings for a streamlined workflow.
*   **Floating Window Rules:** Contains rules to automatically float specific applications upon detection.

### Sketchybar

*   **Dynamic Workspaces:** Displays active and inactive workspaces, with specific configurations for workspaces 1-5.
*   **Application Icons:** Shows the icons of running applications within each workspace.
*   **Catppuccin Color Scheme:** Utilizes the popular Catppuccin color palette for a consistent and visually appealing look.

### Borders

*   **Catppuccin Pink:** The window borders are styled with the Catppuccin pink color, complementing the overall theme.

## Installation

To use this configuration, you'll need to have Aerospace, Sketchybar, and `borders` installed on your system. Once you have these dependencies, you can clone this repository and link the configuration files to your home directory.

```bash
# Clone the repository
git clone https://github.com/your-username/aerospace-sketchybar-borders.git ~/.config/aerospace-sketchybar-borders

# Create symbolic links
ln -s ~/.config/aerospace-sketchybar-borders/.aerospace.toml ~/.aerospace.toml
ln -s ~/.config/aerospace-sketchybar-borders/.config/borders ~/.config/borders
ln -s ~/.config/aerospace-sketchybar-borders/.config/sketchybar ~/.config/sketchybar
```

## Customization

You can customize this configuration to your liking by editing the files in the `.config` directory.

*   **Colors:** The colors can be changed in the `.config/sketchybar/colors.sh` file.
*   **Icons:** The icons can be changed in the `.config/sketchybar/icons.sh` file.
*   **Borders:** The border color can be changed in the `.config/borders/bordersrc` file.

