# $NetBSD: Makefile,v 1.58 2020/05/06 14:05:05 adam Exp $

DISTNAME=	mod_auth_mellon-0.14.2
PKGNAME=	${APACHE_PKG_PREFIX}-${DISTNAME:S/mod_//:S/_/-/g}
PKGREVISION=	7
#PKGREVISION=	1
CATEGORIES=	www security
MASTER_SITES=	${MASTER_SITE_GITHUB:=UNINETT/}
GITHUB_PROJECT=	mod_auth_mellon
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	manu@NetBSD.org
HOMEPAGE=	https://github.com/UNINETT/mod_auth_mellon
COMMENT=	SAML 2.0 authentication for Apache
LICENSE=	gnu-gpl-v2 # or later

GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES
USE_TOOLS+=	pkg-config

APACHE_MODULE=	YES
.include "../../mk/apache.mk"

SUBST_CLASSES+=		pthflags
SUBST_STAGE.pthflags=	post-configure
SUBST_FILES.pthflags=	Makefile
SUBST_SED.pthflags=	-e 's| -pthread | |g'
SUBST_NOOP_OK.pthflags=	yes

INSTALLATION_DIRS+=	lib/httpd

do-install:
	cd ${WRKSRC} &&							\
	    libexecdir=`${APXS} -q LIBEXECDIR` &&			\
	    ${APXS} -i -S LIBEXECDIR=${DESTDIR}"$${libexecdir}" 	\
	      -n auth_mellon  mod_auth_mellon.la

BUILDLINK_ABI_DEPENDS.lasso+=	lasso>=2.1.0

.include "../../security/lasso/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../www/curl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
