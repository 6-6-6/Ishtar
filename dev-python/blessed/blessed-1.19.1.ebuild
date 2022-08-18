# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9,10} )

inherit distutils-r1

DESCRIPTION="Easy, practical library for making terminal apps, by providing an elegant, well-documented interface to Colors, Keyboard input, and screen Positioning capabilities."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/jquast/blessed"

LICENSE="MIT"
SLOT="0"
KEYWORDS="arm64-macos"

IUSE=""
RDEPEND=">=dev-python/wcwidth-0.1.4[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/jinxed-1.1.0[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
