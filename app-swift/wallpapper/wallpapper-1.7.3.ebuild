# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="💻 Console application for creating dynamic wallpapers for macOS Mojave and newer"
SRC_URI="https://github.com/mczachurski/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/mczachurski/wallpapper"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x64-macos arm64-macos"

IUSE=""

src_compile() {
	./build.sh
}

src_install() {
	dobin output/wallpapper
	dobin output/wallpapper-exif
}
