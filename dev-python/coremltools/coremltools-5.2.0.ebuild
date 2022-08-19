# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9,10} )

inherit distutils-r1

DESCRIPTION="Community Tools for Core ML"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/apple/coremltools"

LICENSE="BSD"
SLOT="0"
KEYWORDS="arm64-macos"

IUSE=""
RDEPEND=">=dev-python/numpy-1.14.5[${PYTHON_USEDEP}]
	>=dev-python/protobuf-python-3.1.0[${PYTHON_USEDEP}]
	dev-python/sympy[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
