#!/bin/bash

SCRIPT_REPO="https://github.com/adah1972/libunibreak.git"
SCRIPT_COMMIT="304585d8e2d63187507368d612c3d5fff1486368"

ffbuild_enabled() {
    return 0
}

ffbuild_dockerbuild() {
    ./configure
    make -j$(nproc)
    make install
}

ffbuild_configure() {
    echo --enable-libass
}

ffbuild_unconfigure() {
    echo --disable-libass
}
