# Project Dotfiles

## Description

This repository contains my personal configuration files for tmux, nvim and zsh. These dotfiles are designed to enhance productivity and provide a customized terminal experience. The setup includes personalized themes, plugins, and key bindings to streamline workflows and improve efficiency.

## Installation Instructions

To install the configuration files, follow these steps:

1. Clone the repository:

   ```sh
   git clone https://github.com/mrsamiofficial9/dotfiles.git
   ```

2. Make the install script executable:

   ```sh
   chmod +x install.sh
   ```

3. Run the install script:
   ```sh
   ./install.sh
   ```

## Dependencies

### oh-my-zsh

oh-my-zsh is a delightful, open source, community-driven framework for managing your zsh configuration. To install oh-my-zsh, run:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Fira Code Font

#### On macOS:

```sh
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code
```

#### On Ubuntu/Debian:

```sh
    sudo add-apt-repository universe
    sudo apt update
    sudo apt install fonts-firacode
```

## Features

- Customized zsh: Enhanced zsh configuration with custom themes and plugins.
- tmux Configuration: Personalized tmux settings for improved session management.
- nvim Configuration: Custom nvim setup with plugins and key bindings for an optimized coding experience.
- Efficient Key Bindings: Streamlined key bindings for faster navigation and operation.
- Theme and Font Integration: Seamless integration with Fira Code font for better code readability.

## Demos:

![nvim1](https://github.com/mrsamiofficial9/dotfiles/blob/main/img/nvim-conf-1.png) |
| ![nvim2](https://github.com/mrsamiofficial9/dotfiles/blob/main/img/nvim-conf-2.png) |
| ![zsh](https://github.com/mrsamiofficial9/dotfiles/blob/main/img/zsh-conf.png) |
|----------|----------|
