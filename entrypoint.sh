#!/bin/bash
# On first run (volume is empty), copy default config into the volume
if [ ! -f /root/.zshrc ]; then
    cp -r /root-default/. /root/
fi

exec "$@"
