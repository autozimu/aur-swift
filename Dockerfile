# base greyltc/docker-archlinux
pacman -S base-devel
# swift dependencies
pacman --noconfirm -U http://archive.archlinux.org/packages/l/llvm-libs/llvm-libs-3.8.1-1-x86_64.pkg.tar.xz http://archive.archlinux.org/packages/c/clang/clang-3.8.1-1-x86_64.pkg.tar.xz
pacman -S python2 \
    icu \
    libbsd \
    git \
    cmake \
    ninja \
    swig \
    python2-six \
    python2-sphinx

