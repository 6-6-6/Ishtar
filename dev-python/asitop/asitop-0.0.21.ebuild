# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9,10} )

inherit distutils-r1

DESCRIPTION="Performance monitoring CLI tool for Apple Silicon"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/tlkh/asitop"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x64-macos arm64-macos"

IUSE=""
RDEPEND="dev-python/dashing[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
