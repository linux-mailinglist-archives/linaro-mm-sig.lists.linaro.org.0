Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3346C094B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 04:20:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72FEB3F48A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 03:20:19 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 4C5913E94D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 03:20:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=AuqHOWjJ;
	spf=pass (lists.linaro.org: domain of yongqiang.niu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yongqiang.niu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: fc70cf1ec6cb11edbd2e61cc88cc8f98-20230320
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=dhSguipfVuOwhnwPVARXbd5hUAv5jBoB9wW98IOJQHQ=;
	b=AuqHOWjJhMB4n+M+dhIR+jv/3dSjfWPpeeapOPeVOKiL+0t1mnz7DnWfDBNbnNx7S2D9ipRERMYRzTp9hjyG5Yj+9uA1WCZyNthRiD5prv6uEzhqj6TTJmsYyWK5AVlH2hSnAKi5IVvofpiG6yG7sE8FumaA9MKUL2JQdF65rsU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.21,REQID:4f3a2c95-c709-48c2-b03f-be931520ce17,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:47,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:47
X-CID-INFO: VERSION:1.1.21,REQID:4f3a2c95-c709-48c2-b03f-be931520ce17,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:47,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:47
X-CID-META: VersionHash:83295aa,CLOUDID:43f647f6-ddba-41c3-91d9-10eeade8eac7,B
	ulkID:230320110456R9X81ZPJ,BulkQuantity:0,Recheck:0,SF:38|29|28|100|17|19|
	48|101|102,TC:nil,Content:0,EDM:-3,IP:nil,URL:0,File:nil,Bulk:nil,QS:nil,B
	EC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: fc70cf1ec6cb11edbd2e61cc88cc8f98-20230320
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <yongqiang.niu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 631283772; Mon, 20 Mar 2023 11:04:53 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Mon, 20 Mar 2023 11:04:51 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Mon, 20 Mar 2023 11:04:51 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 20 Mar 2023 11:04:49 +0800
Message-ID: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-Rspamd-Queue-Id: 4C5913E94D
X-Spamd-Result: default: False [4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[210.61.82.184:from];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,collabora.com,linaro.org,cerno.tech,suse.de,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.com,chromium.org];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_SPAM(0.00)[0.406];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	DKIM_TRACE(0.00)[mediatek.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	GREYLIST(0.00)[pass,body]
X-Spamd-Bar: ++++
Message-ID-Hash: CZVRBF245JRH3LOKRVYHFYA4DQDW6TKE
X-Message-ID-Hash: CZVRBF245JRH3LOKRVYHFYA4DQDW6TKE
X-MailFrom: yongqiang.niu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, Hsin-Yi Wang <hsinyi@chromium.org>, Yongqiang Niu <yongqiang.niu@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [v3, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CZVRBF245JRH3LOKRVYHFYA4DQDW6TKE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

Fixes: 41016fe1028e4 (drm: Rename plane->state variables in atomic update and disable)
dma buffer release before overlay disable, that will cause
m4u translation fault warning.

add dma buffer control flow in mediatek driver:
get dma buffer when drm plane disable
put dma buffer when overlay really disable

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 25 ++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 17 ++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.h |  1 +
 3 files changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 5071f1263216..9cf1c1778868 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/dma-buf.h>
 #include <linux/dma-mapping.h>
 #include <linux/mailbox_controller.h>
 #include <linux/pm_runtime.h>
@@ -282,6 +283,23 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
 	return NULL;
 }
 
+static void mtk_drm_dma_buf_put(struct mtk_drm_crtc *mtk_crtc)
+{
+	unsigned int i;
+
+	for (i = 0; i < mtk_crtc->layer_nr; i++) {
+		struct drm_plane *plane = &mtk_crtc->planes[i];
+		struct mtk_plane_state *plane_state;
+
+		plane_state = to_mtk_plane_state(plane->state);
+
+		if (plane_state && plane_state->pending.dma_buf) {
+			dma_buf_put(plane_state->pending.dma_buf);
+			plane_state->pending.dma_buf = NULL;
+		}
+	}
+}
+
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 static void ddp_cmdq_cb(struct mbox_client *cl, void *mssg)
 {
@@ -322,6 +340,8 @@ static void ddp_cmdq_cb(struct mbox_client *cl, void *mssg)
 		mtk_crtc->pending_async_planes = false;
 	}
 
+	mtk_drm_dma_buf_put(mtk_crtc);
+
 	mtk_crtc->cmdq_vblank_cnt = 0;
 	wake_up(&mtk_crtc->cb_blocking_queue);
 }
@@ -614,9 +634,14 @@ static void mtk_crtc_ddp_irq(void *data)
 	else if (mtk_crtc->cmdq_vblank_cnt > 0 && --mtk_crtc->cmdq_vblank_cnt == 0)
 		DRM_ERROR("mtk_crtc %d CMDQ execute command timeout!\n",
 			  drm_crtc_index(&mtk_crtc->base));
+
+	if (!mtk_crtc->cmdq_client.chan)
+		mtk_drm_dma_buf_put(mtk_crtc);
 #else
 	if (!priv->data->shadow_register)
 		mtk_crtc_ddp_config(crtc, NULL);
+
+	mtk_drm_dma_buf_put(mtk_crtc);
 #endif
 	mtk_drm_finish_page_flip(mtk_crtc);
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index d54fbf34b000..c169ca49129c 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -12,6 +12,7 @@
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <linux/align.h>
+#include <linux/dma-buf.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -280,6 +281,22 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
 	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
 									   plane);
 	struct mtk_plane_state *mtk_plane_state = to_mtk_plane_state(new_state);
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
+
+	if (old_state && old_state->fb) {
+		struct drm_gem_object *gem = old_state->fb->obj[0];
+
+		if (mtk_plane_state->pending.dma_buf) {
+			dma_buf_put(mtk_plane_state->pending.dma_buf);
+			mtk_plane_state->pending.dma_buf = NULL;
+		}
+
+		if (gem && gem->dma_buf) {
+			get_dma_buf(gem->dma_buf);
+			mtk_plane_state->pending.dma_buf = gem->dma_buf;
+		}
+	}
 	mtk_plane_state->pending.enable = false;
 	wmb(); /* Make sure the above parameter is set before update */
 	mtk_plane_state->pending.dirty = true;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
index 8f39011cdbfc..b724e56b7283 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
@@ -33,6 +33,7 @@ struct mtk_plane_pending_state {
 	bool				async_dirty;
 	bool				async_config;
 	enum drm_color_encoding		color_encoding;
+	struct dma_buf			*dma_buf;
 };
 
 struct mtk_plane_state {
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
