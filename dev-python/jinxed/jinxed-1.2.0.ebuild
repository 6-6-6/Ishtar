# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9,10} )

inherit distutils-r1

DESCRIPTION="Jinxed Terminal Library"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/Rockhopper-Technologies/jinxed"

LICENSE="MPLv2.0"
SLOT="0"
KEYWORDS="arm64-macos"

IUSE=""
RDEPEND="dev-python/ansicon[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
