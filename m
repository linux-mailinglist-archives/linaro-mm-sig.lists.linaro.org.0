Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CF6746CBC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jul 2023 11:05:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB1D03EF9E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jul 2023 09:05:00 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 160223EF9E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jul 2023 09:04:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=qxx8YWwI;
	spf=pass (lists.linaro.org: domain of yongqiang.niu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yongqiang.niu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: cd32611e1a4911eeb20a276fd37b9834-20230704
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=EeeCzi6ljX+yHjCEA1XGs6HbrLUAR9Zd/iDelBuY6Do=;
	b=qxx8YWwIyVDvcQqj3f1TtEd3KIYIeIob9K8lR6lolMhSy4eGiIqS7hzq1v/S425IcDxNJIKLh60ll3I6H3Alknkr4ReZmetwngzzG7pu0mOGw6qdL+i+R6zfzOxr6sVbMVeLevaNifBGM5R/1jlW9IXmBKtKhqfHSp2dXj9tDNs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.27,REQID:b02294c7-33cf-4eb9-82f4-3ec83946058d,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:01c9525,CLOUDID:d4ded70d-c22b-45ab-8a43-3004e9216b56,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: cd32611e1a4911eeb20a276fd37b9834-20230704
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <yongqiang.niu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1522435105; Tue, 04 Jul 2023 17:04:37 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.186) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 4 Jul 2023 17:04:35 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 4 Jul 2023 17:04:33 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 4 Jul 2023 17:04:32 +0800
Message-ID: <20230704090432.5844-1-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-Spamd-Result: default: False [1.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[mediatek.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[210.61.82.184:from];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,collabora.com,linaro.org,cerno.tech,suse.de,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.com,chromium.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Spam-Level: *
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 160223EF9E
X-Spamd-Bar: +
Message-ID-Hash: WPZNHQJ6QUPZ5AL6VHY6FZLOCAQ2TGNS
X-Message-ID-Hash: WPZNHQJ6QUPZ5AL6VHY6FZLOCAQ2TGNS
X-MailFrom: yongqiang.niu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, Hsin-Yi Wang <hsinyi@chromium.org>, Yongqiang Niu <yongqiang.niu@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [v4, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WPZNHQJ6QUPZ5AL6VHY6FZLOCAQ2TGNS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

dma buffer release before overlay disable, that will cause
m4u translation fault warning.

add dma buffer control flow in mediatek driver:
get dma buffer when drm plane disable
put dma buffer when overlay really disable

Fixes: 41016fe1028e4 ("drm: Rename plane->state variables in atomic update and disable")
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 25 ++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 12 ++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.h |  1 +
 3 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index d40142842f85..49d671100785 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/dma-buf.h>
 #include <linux/dma-mapping.h>
 #include <linux/mailbox_controller.h>
 #include <linux/pm_runtime.h>
@@ -283,6 +284,23 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
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
@@ -323,6 +341,8 @@ static void ddp_cmdq_cb(struct mbox_client *cl, void *mssg)
 		mtk_crtc->pending_async_planes = false;
 	}
 
+	mtk_drm_dma_buf_put(mtk_crtc);
+
 	mtk_crtc->cmdq_vblank_cnt = 0;
 	wake_up(&mtk_crtc->cb_blocking_queue);
 }
@@ -624,9 +644,14 @@ static void mtk_crtc_ddp_irq(void *data)
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
index 31f9420aff6f..66e6393e45ee 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -12,6 +12,7 @@
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <linux/align.h>
+#include <linux/dma-buf.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -266,6 +267,17 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
 	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
 									   plane);
 	struct mtk_plane_state *mtk_plane_state = to_mtk_plane_state(new_state);
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
+
+	if (old_state && old_state->fb) {
+		struct drm_gem_object *gem = old_state->fb->obj[0];
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
index 99aff7da0831..3aba0b58ef3c 100644
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
