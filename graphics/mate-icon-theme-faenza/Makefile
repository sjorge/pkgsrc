# $NetBSD: Makefile,v 1.14 2020/03/10 22:10:11 wiz Exp $

.include "../../meta-pkgs/mate/Makefile.common"

PKGREVISION=	6
DISTNAME=	mate-icon-theme-faenza-1.20.0
CATEGORIES=	graphics
MASTER_SITES+=	http://pub.mate-desktop.org/releases/1.20/

COMMENT=	Faenza and Faience icon themes for MATE desktop

NO_CONFIGURE=	yes
NO_BUILD=	yes

USE_TOOLS+=	pax

INSTALLATION_DIRS+=	share/icons

EXTRACT_USING=	gtar

ICON_FILES=	matefaenza matefaenzadark matefaenzagray

post-extract:
	cd ${WRKSRC} && ${FIND} ${ICON_FILES} -type f -exec ${CHMOD} -x \{\} \;

do-install:
	cd ${WRKSRC} && ${PAX} -rw -pm ${ICON_FILES} ${DESTDIR}${PREFIX}/share/icons/

.include "../../mk/bsd.pkg.mk"
