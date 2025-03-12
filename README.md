# Dotfiles 

## What is GNU Stow?
GNU Stow is a symlink manager. It allows you to organize your dotfiles in a clean and modular way by creating symlinks from your dotfiles directory to your home directory (~). This avoids cluttering your home directory and makes it easy to manage and version-control your configurations.

---

## Prerequisites
Before using this repository, ensure you have the following installed:

1. **GNU Stow**: Install it using your package manager:

- On macOS (with Homebrew): `brew install stow`

- On Ubuntu/Debian: `sudo apt install stow`

- On Fedora: `sudo dnf install stow`

- On Arch: `sudo pacman -S stow`

2. **Git**: To clone this repository.

---

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```
2. **Use Stow to symlink configurations**:
To symlink the configuration for a specific program (e.g., zsh), run:
    ```bash
        stow zsh
    ```
This will create symlinks in your home directory for all files inside the zsh/ directory.

3. **Symlink multiple programs**:
To symlink configurations for multiple programs at once, run:
    ```bash
        stow zsh git vim
    ```