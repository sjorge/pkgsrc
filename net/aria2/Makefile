# $NetBSD: Makefile,v 1.83 2020/04/12 08:29:03 adam Exp $

DISTNAME=	aria2-1.35.0
PKGREVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=aria2/}
GITHUB_RELEASE=	release-${PKGVERSION_NOREV}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://aria2.github.io/
COMMENT=	Multi-threaded, multi-protocol, flexible download accelerator
LICENSE=	gnu-gpl-v2

# Minimum requirement is 4.8.3
GCC_REQD+=	4.8

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		bison msgfmt msgmerge xgettext
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-bittorrent
CONFIGURE_ARGS+=	--enable-metalink
CONFIGURE_ARGS+=	--with-included-gettext=no
CONFIGURE_ARGS+=	--with-libexpat
CONFIGURE_ARGS+=	--without-libxml2
CONFIGURE_ARGS.SunOS+=	--disable-epoll
CONFIGURE_ENV.SunOS+=	ac_cv_func_getaddrinfo=yes

TEST_TARGET=		check
USE_FEATURES=		getopt_long snprintf

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_RUN_TEST:M[Yy][Ee][Ss])
BUILDLINK_DEPMETHOD.cppunit=	build
BUILDLINK_API_DEPENDS.cppunit+=	cppunit>=1.10.2
.  include "../../devel/cppunit/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-xmltest
.endif

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../net/libcares/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
