TERMUX_PKG_HOMEPAGE=https://gstreamer.freedesktop.org/
TERMUX_PKG_DESCRIPTION="GStreamer Good Plug-ins"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.16.1
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=9fbabe69018fcec707df0b71150168776040cde6c1a26bb5a82a136755fa8f1f
TERMUX_PKG_DEPENDS="gst-plugins-base, libcaca, libsoup, libjpeg-turbo, libpng, libflac, libbz2, libvpx, pulseaudio, libmp3lame, gstreamer, libogg, zlib"
TERMUX_PKG_BUILD_IN_SRC=true
# pcre needed by glib. libxml2 needed by libsoup
TERMUX_PKG_BUILD_DEPENDS="glib, pcre, libxml2"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-android_media
--disable-cairo
--disable-examples
--disable-gdk_pixbuf
--disable-oss
--disable-oss4
--disable-tests
--disable-gst_v4l2
--disable-aalib
"
TERMUX_PKG_RM_AFTER_INSTALL="share/gtk-doc/"
