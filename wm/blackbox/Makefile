# $NetBSD: Makefile,v 1.35 2019/01/19 20:53:54 gutteridge Exp $

DISTNAME=	blackbox-0.65.0
PKGREVISION=	7
CATEGORIES=	wm x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/bradleythughes/blackbox
COMMENT=	Small and fast X11R6 window manager
LICENSE=	mit

DEPENDS+=	bsetroot>=0.1nb1:../../wm/bsetroot

CONFLICTS+=	blackbox70>=0.70.1

USE_LANGUAGES=	c c++
GNU_CONFIGURE=	YES

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
