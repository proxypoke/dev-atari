# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A set of tools for manipulating the MiNT executables"
HOMEPAGE="http://vincent.riviere.free.fr/soft/m68k-atari-mint/"
SRC_URI="http://vincent.riviere.free.fr/soft/m68k-atari-mint/archives/mintbin-CVS-20110527.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

MY_P="${PN}-CVS-${PV}"
S="${WORKDIR}/${MY_P}"

src_configure () {
	econf --target=m68k-atari-mint --disable-nls
}

src_install () {
	emake DESTDIR="${D}" install
	mkdir -p "${D}"/usr/bin
	mv "${D}"/m68k-atari-mint-* "${D}"/usr/bin/
}
