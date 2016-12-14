pacman -S base-devel
# swift dependencies
pacman -U --noconfirm http://archive.archlinux.org/packages/l/llvm-libs/llvm-libs-3.8.1-1-x86_64.pkg.tar.xz http://archive.archlinux.org/packages/c/clang/clang-3.8.1-1-x86_64.pkg.tar.xz
pacman -S python2 \
    icu \
    libbsd \
    git \
    cmake \
    ninja \
    swig \
    python2-six \
    python2-sphinx

# build
cd /tmp
mkdir libkqueue
cd libkqueue
curl https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=libkqueue > PKGBUILD
chown nobody .
sudo -u nobody makepkg
cd ..
mkdir swift
curl https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=swift-language > PKGBUILD
chown nobody .
sudo -u nobody makepkg
