# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit eutils

MY_P="Natch-${PV}"
DESCRIPTION="A program to solve chess proof games"
HOMEPAGE="http://natch.free.fr/Natch.html"
SRC_URI="http://natch.free.fr/Natch/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-libs/ncurses:0"
RDEPEND=${DEPEND}

S=${WORKDIR}/${MY_P}

PATCHES=(
	"${FILESDIR}"/${P}-format.patch
)

src_install() {
	newbin src/Natch natch
	dodoc AUTHORS ChangeLog NEWS README THANKS example.txt
}
