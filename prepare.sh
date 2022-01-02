#!/bin/bash
sudo pacman --noconfirm --needed -S archiso wget
cd firmware
makepkg -s
cp *.pkg.* ../archiso/airootfs/t2kern/
cd ../archiso/airootfs/t2kern/
wget https://github.com/Redecorating/mbp-16.1-linux-wifi/releases/download/v5.15.11-3/linux-t2-5.15.11-3-x86_64.pkg.tar.zst
wget https://github.com/Redecorating/mbp-16.1-linux-wifi/releases/download/v5.15.11-3/linux-t2-docs-5.15.11-3-x86_64.pkg.tar.zst
wget https://github.com/Redecorating/mbp-16.1-linux-wifi/releases/download/v5.15.11-3/linux-t2-headers-5.15.11-3-x86_64.pkg.tar.zst
repo-add t2kern.db.tar.zst *.pkg.*
cd ../../..
