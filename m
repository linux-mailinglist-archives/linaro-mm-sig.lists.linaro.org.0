Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A987CF76A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:50:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 230BA40C4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:50:34 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 922D33F5A5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 03:18:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=GEYUr9DQ;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 274dda1c569911ee8051498923ad61e6-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=d5MlvkBOun6FfjPliC7+sTwbdNNZN1HjblJeo2dEYRE=;
	b=GEYUr9DQ7BQLgCRhwn1BcK5VTdXALYpdYd5NocsLcKcx7iqMDrsT51pPuyxACPQ0U1tKJiF2AHgar8+I1kzxrp68ICJ/xJWABPYfBVcIzKP4AFZijoI84pOPD2VDOLnCBx7ERM0POQl0kHoVKnqb03pA35q3GUqtseGJ/GnxCFM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:bcbd4e7f-2e59-4c38-a426-6fbb65791bdd,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:f61d2fc3-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 274dda1c569911ee8051498923ad61e6-20230919
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1511052402; Tue, 19 Sep 2023 11:03:48 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 19 Sep 2023 11:03:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 19 Sep 2023 11:03:46 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Tue, 19 Sep 2023 11:03:36 +0800
Message-ID: <20230919030345.8629-2-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Spamd-Bar: ++++
X-Spamd-Result: default: False [4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32:c];
	FROM_EQ_ENVFROM(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-Rspamd-Queue-Id: 922D33F5A5
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RWHASCZAVC43LTKAPJ6WMLXUUYOQTTC3
X-Message-ID-Hash: RWHASCZAVC43LTKAPJ6WMLXUUYOQTTC3
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:50 +0000
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, CK Hu <ck.hu@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 01/10] drm/mediatek: Add interface to allocate MediaTek GEM buffer.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RWHASCZAVC43LTKAPJ6WMLXUUYOQTTC3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: CK Hu <ck.hu@mediatek.com>

Add an interface to allocate MediaTek GEM buffers, allow the IOCTLs
to be used by render nodes.
This patch also sets the RENDER driver feature.

Signed-off-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
Tested-by: Daniel Kurtz <djkurtz@chromium.org>
Tested-by: Pi-Hsun Shih <pihsun@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 16 ++++++-
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 39 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_gem.h | 12 ++++++
 include/uapi/drm/mediatek_drm.h        | 58 ++++++++++++++++++++++++++
 4 files changed, 124 insertions(+), 1 deletion(-)
 create mode 100644 include/uapi/drm/mediatek_drm.h

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 93552d76b6e7..31f462603461 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -24,6 +24,7 @@
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
+#include <drm/mediatek_drm.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -541,6 +542,14 @@ static void mtk_drm_kms_deinit(struct drm_device *drm)
 	component_unbind_all(drm->dev, drm);
 }
 
+static const struct drm_ioctl_desc mtk_ioctls[] = {
+	DRM_IOCTL_DEF_DRV(MTK_GEM_CREATE, mtk_gem_create_ioctl,
+			  DRM_UNLOCKED | DRM_AUTH | DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(MTK_GEM_MAP_OFFSET,
+			  mtk_gem_map_offset_ioctl,
+			  DRM_UNLOCKED | DRM_AUTH | DRM_RENDER_ALLOW),
+};
+
 DEFINE_DRM_GEM_FOPS(mtk_drm_fops);
 
 /*
@@ -556,12 +565,17 @@ static struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
 }
 
 static const struct drm_driver mtk_drm_driver = {
-	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
+	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC |
+			   DRIVER_RENDER,
 
 	.dumb_create = mtk_drm_gem_dumb_create,
 
 	.gem_prime_import = mtk_drm_gem_prime_import,
 	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
+
+	.ioctls = mtk_ioctls,
+	.num_ioctls = ARRAY_SIZE(mtk_ioctls),
+
 	.fops = &mtk_drm_fops,
 
 	.name = DRIVER_NAME,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index 9f364df52478..bcce723f257d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/dma-buf.h>
+#include <drm/mediatek_drm.h>
 
 #include <drm/drm.h>
 #include <drm/drm_device.h>
@@ -272,3 +273,41 @@ void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj,
 	mtk_gem->kvaddr = NULL;
 	kfree(mtk_gem->pages);
 }
+
+int mtk_gem_map_offset_ioctl(struct drm_device *drm, void *data,
+			     struct drm_file *file_priv)
+{
+	struct drm_mtk_gem_map_off *args = data;
+
+	return drm_gem_dumb_map_offset(file_priv, drm, args->handle,
+				       &args->offset);
+}
+
+int mtk_gem_create_ioctl(struct drm_device *dev, void *data,
+			 struct drm_file *file_priv)
+{
+	struct mtk_drm_gem_obj *mtk_gem;
+	struct drm_mtk_gem_create *args = data;
+	int ret;
+
+	mtk_gem = mtk_drm_gem_create(dev, args->size, false);
+	if (IS_ERR(mtk_gem))
+		return PTR_ERR(mtk_gem);
+
+	/*
+	 * allocate a id of idr table where the obj is registered
+	 * and handle has the id what user can see.
+	 */
+	ret = drm_gem_handle_create(file_priv, &mtk_gem->base, &args->handle);
+	if (ret)
+		goto err_handle_create;
+
+	/* drop reference from allocate - handle holds it now. */
+	drm_gem_object_put(&mtk_gem->base);
+
+	return 0;
+
+err_handle_create:
+	mtk_drm_gem_free_object(&mtk_gem->base);
+	return ret;
+}
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.h b/drivers/gpu/drm/mediatek/mtk_drm_gem.h
index 78f23b07a02e..90f3d2916ec5 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.h
@@ -46,4 +46,16 @@ int mtk_drm_gem_prime_vmap(struct drm_gem_object *obj, struct iosys_map *map);
 void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj,
 			      struct iosys_map *map);
 
+/*
+ * request gem object creation and buffer allocation as the size
+ * that it is calculated with framebuffer information such as width,
+ * height and bpp.
+ */
+int mtk_gem_create_ioctl(struct drm_device *dev, void *data,
+			 struct drm_file *file_priv);
+
+/* get buffer offset to map to user space. */
+int mtk_gem_map_offset_ioctl(struct drm_device *dev, void *data,
+			     struct drm_file *file_priv);
+
 #endif
diff --git a/include/uapi/drm/mediatek_drm.h b/include/uapi/drm/mediatek_drm.h
new file mode 100644
index 000000000000..c050de320a84
--- /dev/null
+++ b/include/uapi/drm/mediatek_drm.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
+/*
+ * Copyright (c) 2015 MediaTek Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _UAPI_MEDIATEK_DRM_H
+#define _UAPI_MEDIATEK_DRM_H
+
+#include <drm/drm.h>
+
+/**
+ * User-desired buffer creation information structure.
+ *
+ * @size: user-desired memory allocation size.
+ *	- this size value would be page-aligned internally.
+ * @flags: user request for setting memory type or cache attributes.
+ * @handle: returned a handle to created gem object.
+ *	- this handle will be set by gem module of kernel side.
+ */
+struct drm_mtk_gem_create {
+	uint64_t size;
+	uint32_t flags;
+	uint32_t handle;
+};
+
+/**
+ * A structure for getting buffer offset.
+ *
+ * @handle: a pointer to gem object created.
+ * @pad: just padding to be 64-bit aligned.
+ * @offset: relatived offset value of the memory region allocated.
+ *     - this value should be set by user.
+ */
+struct drm_mtk_gem_map_off {
+	uint32_t handle;
+	uint32_t pad;
+	uint64_t offset;
+};
+
+#define DRM_MTK_GEM_CREATE		0x00
+#define DRM_MTK_GEM_MAP_OFFSET		0x01
+
+#define DRM_IOCTL_MTK_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + \
+		DRM_MTK_GEM_CREATE, struct drm_mtk_gem_create)
+
+#define DRM_IOCTL_MTK_GEM_MAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + \
+		DRM_MTK_GEM_MAP_OFFSET, struct drm_mtk_gem_map_off)
+
+#endif /* _UAPI_MEDIATEK_DRM_H */
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
