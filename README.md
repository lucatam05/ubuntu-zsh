# Ubuntu-Zsh Docker Container

A ready-to-use Ubuntu Docker container preconfigured with **Zsh**, **Oh My Zsh**, popular plugins, and essential CLI tools for development.

---

## Features

- **Ubuntu base** (24.04)
- **Zsh** with:
  - **Oh My Zsh** framework
  - **Syntax Highlighting** plugin
  - **Autosuggestions** plugin
  - **Powerlevel10k** theme
- Essential CLI tools:
  - `nano`, `vim`, `git`
  - `pstree`, `htop`, `bash-completion`
  - `curl`, `man`, `less`, `tree`
- Ready for exploring Linux systems and processes
- Customizable `.zshrc` for an enhanced terminal experience
- Works on both **arm64** (M1/M2/M3 Macs) and **amd64** (Intel/Windows/Linux)

---

## Usage

### Pull the image

```bash
docker pull ghcr.io/lucatam05/ubuntu-zsh:latest

### Run the container

```bash
docker run -it ghcr.io/lucatam05/ubuntu-zsh:latest
