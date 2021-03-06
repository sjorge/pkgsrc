# $NetBSD: buildlink3.mk,v 1.7 2018/09/30 22:29:07 schmonz Exp $

BUILDLINK_TREE+=	libmp3splt

.if !defined(LIBMP3SPLT_BUILDLINK3_MK)
LIBMP3SPLT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmp3splt+=	libmp3splt>=0.9.2
BUILDLINK_ABI_DEPENDS.libmp3splt+=	libmp3splt>=0.9.2
BUILDLINK_PKGSRCDIR.libmp3splt?=	../../audio/libmp3splt
###
### XXX libmad and libvorbis are needed only for headers.
###
BUILDLINK_DEPMETHOD.libmad?=	build
.include "../../audio/libmad/buildlink3.mk"

BUILDLINK_DEPMETHOD.libvorbis?= build
.include "../../audio/libvorbis/buildlink3.mk"

.include "../../multimedia/libogg/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.endif # LIBMP3SPLT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmp3splt
