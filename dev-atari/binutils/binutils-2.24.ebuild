# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Tools necessary to build programs for the Atari ST"
HOMEPAGE="http://sourceware.org/binutils/"
SRC_URI="ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2
		 http://vincent.riviere.free.fr/soft/m68k-atari-mint/archives/binutils-2.24-mint-20131217.patch.bz2"
RESTRICT="mirror"

LICENSE="|| ( GPL-3 LGPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare () {
	epatch "${WORKDIR}/${P}-mint-20131217.patch"
}

src_configure () {
	econf --target=m68k-atari-mint --disable-nls
}

src_install () {
	emake DESTDIR="${D}" install
	# clean up some things in the image before installing
	rm -rd "${D}"/usr/share/info
}
