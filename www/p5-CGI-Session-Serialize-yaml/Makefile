# $NetBSD: Makefile,v 1.14 2019/08/11 13:24:27 wiz Exp $

DISTNAME=	CGI-Session-Serialize-yaml-4.26
EXTRACT_SUFX=	.tgz
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	9
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/CGI-Session-Serialize-yaml
COMMENT=	Serializer for CGI::Session
LICENSE=	artistic

DEPENDS+=	p5-CGI-Session>=4.30:../../www/p5-CGI-Session

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/CGI/Session/Serialize/yaml/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
