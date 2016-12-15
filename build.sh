#!/usr/bin/env bash

set -euf -o pipefail

mkdir /tmp/libkqueue
cd /tmp/libkqueue
curl https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=libkqueue > PKGBUILD
chown nobody .
pacman --noconfirm -S sudo base-devel # FIXME
sudo -u nobody makepkg
pacman --noconfirm -U libkqueue-2.1.0-1-x86_64.pkg.tar.xz

# cd /tmp
# curl https://aur.archlinux.org/cgit/aur.git/snapshot/swift-language.tar.gz > swift-language.tar.gz
# tar -xvzf swift-language.tar.gz
# cd swift-language
# chown nobody .
# sudo -u nobody makepkg
