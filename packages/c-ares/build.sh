TERMUX_PKG_HOMEPAGE=http://c-ares.haxx.se/
TERMUX_PKG_DESCRIPTION="C library for asynchronous DNS requests (including name resolves)"
TERMUX_PKG_VERSION=1.10.0
TERMUX_PKG_SRCURL=http://c-ares.haxx.se/download/c-ares-${TERMUX_PKG_VERSION}.tar.gz

termux_step_post_make_install () {
	# Install the nameser.h compatibility header used by node.js
	cp $TERMUX_PKG_SRCDIR/nameser.h $TERMUX_PREFIX/include
}
