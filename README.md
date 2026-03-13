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
  - `pstree`, `htop`
  - `curl`, `man`, `less`, `tree`
- Ready for exploring Linux systems and processes
- Customizable `.zshrc` for an enhanced terminal experience
- Works on both **arm64** (M1/M2/M3 Macs) and **amd64** (Intel/Windows/Linux)
---
## Requirements
- [Docker](https://docs.docker.com/get-docker/) installed and running

---
## Usage
### Pull the image
```bash
docker pull ghcr.io/lucatam05/ubuntu-zsh:latest
```
---
### Run the container
```bash
docker run -it ghcr.io/lucatam05/ubuntu-zsh:latest
```

---
## Build from source
```bash
git clone https://github.com/lucatam05/ubuntu-zsh.git
cd ubuntu-zsh
docker build -t ubuntu-zsh .
docker run -it ubuntu-zsh
```

---
## Possible improvements
The Dockerfile is intentionally kept simple for didactic purposes. If you want to extend it, here are some ideas:

- **Non-root user** — create a dedicated user with `useradd` and switch to it with `USER`, instead of running everything as `root`
- **`SHELL ["zsh", "-c"]`** — make Docker use Zsh instead of `sh` for all subsequent `RUN` instructions
- **Oh My Zsh without `curl | sh`** — replace the install script with a direct `git clone` of the Oh My Zsh repository for better reproducibility and security

---
## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
