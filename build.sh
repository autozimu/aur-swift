#!/usr/bin/env bash

set -euf -o pipefail

cd /tmp
mkdir libkqueue
cd libkqueue
curl https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=libkqueue > PKGBUILD
chown nobody .
sudo -u nobody makepkg
pacman --noconfirm -U libkqueue

# cd /tmp
# curl https://aur.archlinux.org/cgit/aur.git/snapshot/swift-language.tar.gz > swift-language.tar.gz
# tar -xvzf swift-language.tar.gz
# cd swift-language
# chown nobody .
# sudo -u nobody makepkg
