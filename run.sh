#!/bin/bash
# run.sh - avvia il container Ubuntu-Zsh

# Pull the latest public image from GHCR (if not already downloaded)
docker pull ghcr.io/<your-username>/ubuntu-zsh:latest

# Run the container with Zsh
docker run -it ghcr.io/<your-username>/ubuntu-zsh:latest zsh
