# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_12 pypy )

inherit meson python-r1

DESCRIPTION="Improve focus and increase your productivity by listening to different sounds. Or allows you to fall asleep in a noisy environment."

HOMEPAGE="https://github.com/rafaelmardojai/blanket"

SRC_URI="https://github.com/rafaelmardojai/blanket/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="~amd64"

RDEPEND="gui-libs/gtk:4
>=gui-libs/libadwaita-1.5.0
>=dev-python/pygobject-3.46.0
media-libs/gstreamer:1.0
>=dev-build/meson-1.4.0-r1
>=dev-util/blueprint-compiler-0.12.0
${PYTHON_DEPS}"

DEPEND="${RDEPEND}"


src_configure() {
        meson_src_configure
}

src_compile() {
	meson_src_compile
}

