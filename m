Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0627D2973
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 06:48:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C1CA40B67
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 04:48:17 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 93E4740B56
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Oct 2023 04:45:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=KnbMsRcv;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com
X-UUID: 0b8e55c8715f11eea33bb35ae8d461a2-20231023
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=/q6d6LVl8vdOeORtXqvTR6lwmVYLUII5N+V8CS7GY7s=;
	b=KnbMsRcvIWUgg6tU+Fi18t2F9Q717cc8Z8fiZ0OXBtko/8ILtDeIn2yzqLJYiJ2MNqg7neAwfzY1ayj+bsdd3WAdmdkL5RfAiQw8g/P0ndEoM4sENoxF/sxUojsIK1lXaOHGnlQ6Z6a9bxk9K63oYaZj9zWkbzyqtb2BFrL6FrI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:cad92330-5309-4d45-b377-30a63b159fa3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:a98531d7-04a0-4e50-8742-3543eab8cb8e,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: 0b8e55c8715f11eea33bb35ae8d461a2-20231023
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 504838010; Mon, 23 Oct 2023 12:45:52 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 23 Oct 2023 12:45:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 23 Oct 2023 12:45:51 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Mon, 23 Oct 2023 12:45:46 +0800
Message-ID: <20231023044549.21412-10-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 93E4740B56
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[60.244.123.138:from];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: XT6KJBI5DF6AFFHD3Y4XGKEL6UWYEBGB
X-Message-ID-Hash: XT6KJBI5DF6AFFHD3Y4XGKEL6UWYEBGB
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 09/11] drm/mediatek: Add secure flow support to mediatek-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XT6KJBI5DF6AFFHD3Y4XGKEL6UWYEBGB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To add secure flow support for mediatek-drm, each crtc have to
create a secure cmdq mailbox channel. Then cmdq packets with
display HW configuration will be sent to secure cmdq mailbox channel
and configured in the secure world.

Each crtc have to use secure cmdq interface to configure some secure
settings for display HW before sending cmdq packets to secure cmdq
mailbox channel.

If any of fb get from current drm_atomic_state is secure, then crtc
will switch to the secure flow to configure display HW.
If all fbs are not secure in current drm_atomic_state, then crtc will
switch to the normal flow.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 272 ++++++++++++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_plane.c |   7 +
 3 files changed, 269 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index b6fa4ad2f94d..6c2cf339b923 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -56,6 +56,11 @@ struct mtk_drm_crtc {
 	u32				cmdq_event;
 	u32				cmdq_vblank_cnt;
 	wait_queue_head_t		cb_blocking_queue;
+
+	struct cmdq_client		sec_cmdq_client;
+	struct cmdq_pkt			sec_cmdq_handle;
+	bool				sec_cmdq_working;
+	wait_queue_head_t		sec_cb_blocking_queue;
 #endif
 
 	struct device			*mmsys_dev;
@@ -67,6 +72,7 @@ struct mtk_drm_crtc {
 	/* lock for display hardware access */
 	struct mutex			hw_lock;
 	bool				config_updating;
+	bool				sec_on;
 };
 
 struct mtk_crtc_state {
@@ -109,6 +115,154 @@ static void mtk_drm_finish_page_flip(struct mtk_drm_crtc *mtk_crtc)
 	}
 }
 
+void mtk_crtc_disable_secure_state(struct drm_crtc *crtc)
+{
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	enum cmdq_sec_scenario sec_scn = CMDQ_MAX_SEC_COUNT;
+	int i;
+	struct mtk_ddp_comp *ddp_first_comp;
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	u64 sec_engine = 0; /* for hw engine write output secure fb */
+	u64 sec_port = 0; /* for larb port read input secure fb */
+
+	mutex_lock(&mtk_crtc->hw_lock);
+
+	if (!mtk_crtc->sec_cmdq_client.chan) {
+		pr_err("crtc-%d secure mbox channel is NULL\n", drm_crtc_index(crtc));
+		goto err;
+	}
+
+	if (!mtk_crtc->sec_on) {
+		pr_debug("crtc-%d is already disabled!\n", drm_crtc_index(crtc));
+		goto err;
+	}
+
+	mbox_flush(mtk_crtc->sec_cmdq_client.chan, 0);
+	mtk_crtc->sec_cmdq_handle.cmd_buf_size = 0;
+
+	if (mtk_crtc->sec_cmdq_handle.sec_data) {
+		struct cmdq_sec_data *sec_data;
+
+		sec_data = mtk_crtc->sec_cmdq_handle.sec_data;
+		sec_data->addrMetadataCount = 0;
+		sec_data->addrMetadatas = (uintptr_t)NULL;
+	}
+
+	/*
+	 * Secure path only support DL mode, so we just wait
+	 * the first path frame done here
+	 */
+	cmdq_pkt_wfe(&mtk_crtc->sec_cmdq_handle, mtk_crtc->cmdq_event, false);
+
+	ddp_first_comp = mtk_crtc->ddp_comp[0];
+	for (i = 0; i < mtk_crtc->layer_nr; i++) {
+		struct drm_plane *plane = &mtk_crtc->planes[i];
+
+		sec_port |= mtk_ddp_comp_layer_get_sec_port(ddp_first_comp, i);
+
+		/* make sure secure layer off before switching secure state */
+		if (!mtk_plane_fb_is_secure(plane->state->fb)) {
+			struct mtk_plane_state *plane_state = to_mtk_plane_state(plane->state);
+
+			plane_state->pending.enable = false;
+			mtk_ddp_comp_layer_config(ddp_first_comp, i, plane_state,
+						  &mtk_crtc->sec_cmdq_handle);
+		}
+	}
+
+	/* Disable secure path */
+	if (drm_crtc_index(crtc) == 0)
+		sec_scn = CMDQ_SEC_PRIMARY_DISP_DISABLE;
+	else if (drm_crtc_index(crtc) == 1)
+		sec_scn = CMDQ_SEC_SUB_DISP_DISABLE;
+
+	cmdq_sec_pkt_set_data(&mtk_crtc->sec_cmdq_handle, sec_engine, sec_engine, sec_scn);
+
+	cmdq_pkt_finalize(&mtk_crtc->sec_cmdq_handle);
+	dma_sync_single_for_device(mtk_crtc->sec_cmdq_client.chan->mbox->dev,
+				   mtk_crtc->sec_cmdq_handle.pa_base,
+				   mtk_crtc->sec_cmdq_handle.cmd_buf_size,
+				   DMA_TO_DEVICE);
+
+	mtk_crtc->sec_cmdq_working = true;
+	mbox_send_message(mtk_crtc->sec_cmdq_client.chan, &mtk_crtc->sec_cmdq_handle);
+	mbox_client_txdone(mtk_crtc->sec_cmdq_client.chan, 0);
+
+	// Wait for sec state to be disabled by cmdq
+	wait_event_timeout(mtk_crtc->sec_cb_blocking_queue,
+			   !mtk_crtc->sec_cmdq_working,
+			   msecs_to_jiffies(500));
+
+	mtk_crtc->sec_on = false;
+	pr_debug("crtc-%d disable secure plane!\n", drm_crtc_index(crtc));
+
+err:
+	mutex_unlock(&mtk_crtc->hw_lock);
+#endif
+}
+
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+static void mtk_crtc_enable_secure_state(struct drm_crtc *crtc)
+{
+	enum cmdq_sec_scenario sec_scn = CMDQ_MAX_SEC_COUNT;
+	int i;
+	struct mtk_ddp_comp *ddp_first_comp;
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	u64 sec_engine = 0; /* for hw engine write output secure fb */
+	u64 sec_port = 0; /* for larb port read input secure fb */
+
+	cmdq_pkt_wfe(&mtk_crtc->sec_cmdq_handle, mtk_crtc->cmdq_event, false);
+
+	ddp_first_comp = mtk_crtc->ddp_comp[0];
+	for (i = 0; i < mtk_crtc->layer_nr; i++)
+		if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_CURSOR)
+			sec_port |= mtk_ddp_comp_layer_get_sec_port(ddp_first_comp, i);
+
+	if (drm_crtc_index(crtc) == 0)
+		sec_scn = CMDQ_SEC_PRIMARY_DISP;
+	else if (drm_crtc_index(crtc) == 1)
+		sec_scn = CMDQ_SEC_SUB_DISP;
+
+	cmdq_sec_pkt_set_data(&mtk_crtc->sec_cmdq_handle, sec_engine, sec_port, sec_scn);
+
+	pr_debug("crtc-%d enable secure plane!\n", drm_crtc_index(crtc));
+}
+#endif
+
+static void mtk_drm_crtc_plane_switch_sec_state(struct drm_crtc *crtc,
+						struct drm_atomic_state *state)
+{
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	bool sec_on[MAX_CRTC] = {0};
+	int i;
+	struct drm_crtc_state *crtc_state;
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	struct drm_plane *plane;
+	struct drm_plane_state *old_plane_state;
+
+	for_each_old_plane_in_state(state, plane, old_plane_state, i) {
+		if (!plane->state->crtc)
+			continue;
+
+		if (plane->state->fb &&
+		    mtk_plane_fb_is_secure(plane->state->fb) &&
+		    mtk_crtc->sec_cmdq_client.chan)
+			sec_on[drm_crtc_index(plane->state->crtc)] = true;
+	}
+
+	for_each_old_crtc_in_state(state, crtc, crtc_state, i) {
+		mtk_crtc = to_mtk_crtc(crtc);
+
+		if (!sec_on[i])
+			mtk_crtc_disable_secure_state(crtc);
+
+		mutex_lock(&mtk_crtc->hw_lock);
+		mtk_crtc->sec_on = true;
+		mutex_unlock(&mtk_crtc->hw_lock);
+	}
+#endif
+}
+
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 static int mtk_drm_cmdq_pkt_create(struct cmdq_client *client, struct cmdq_pkt *pkt,
 				   size_t size)
@@ -144,22 +298,33 @@ static void mtk_drm_cmdq_pkt_destroy(struct cmdq_pkt *pkt)
 	dma_unmap_single(client->chan->mbox->dev, pkt->pa_base, pkt->buf_size,
 			 DMA_TO_DEVICE);
 	kfree(pkt->va_base);
+	kfree(pkt->sec_data);
 }
 #endif
 
 static void mtk_drm_crtc_destroy(struct drm_crtc *crtc)
 {
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	struct mtk_drm_private *priv = crtc->dev->dev_private;
 	int i;
 
+	priv = priv->all_drm_private[drm_crtc_index(crtc)];
+
 	mtk_mutex_put(mtk_crtc->mutex);
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	mtk_drm_cmdq_pkt_destroy(&mtk_crtc->cmdq_handle);
+	mtk_drm_cmdq_pkt_destroy(&mtk_crtc->sec_cmdq_handle);
 
 	if (mtk_crtc->cmdq_client.chan) {
 		mbox_free_channel(mtk_crtc->cmdq_client.chan);
 		mtk_crtc->cmdq_client.chan = NULL;
 	}
+
+	if (mtk_crtc->sec_cmdq_client.chan) {
+		device_link_remove(priv->dev, mtk_crtc->sec_cmdq_client.chan->mbox->dev);
+		mbox_free_channel(mtk_crtc->sec_cmdq_client.chan);
+		mtk_crtc->sec_cmdq_client.chan = NULL;
+	}
 #endif
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
@@ -286,13 +451,18 @@ static void ddp_cmdq_cb(struct mbox_client *cl, void *mssg)
 {
 	struct cmdq_cb_data *data = mssg;
 	struct cmdq_client *cmdq_cl = container_of(cl, struct cmdq_client, client);
-	struct mtk_drm_crtc *mtk_crtc = container_of(cmdq_cl, struct mtk_drm_crtc, cmdq_client);
+	struct mtk_drm_crtc *mtk_crtc;
 	struct mtk_crtc_state *state;
 	unsigned int i;
 
 	if (data->sta < 0)
 		return;
 
+	if (!data->pkt || !data->pkt->sec_data)
+		mtk_crtc = container_of(cmdq_cl, struct mtk_drm_crtc, cmdq_client);
+	else
+		mtk_crtc = container_of(cmdq_cl, struct mtk_drm_crtc, sec_cmdq_client);
+
 	state = to_mtk_crtc_state(mtk_crtc->base.state);
 
 	state->pending_config = false;
@@ -321,6 +491,11 @@ static void ddp_cmdq_cb(struct mbox_client *cl, void *mssg)
 		mtk_crtc->pending_async_planes = false;
 	}
 
+	if (mtk_crtc->sec_cmdq_working) {
+		mtk_crtc->sec_cmdq_working = false;
+		wake_up(&mtk_crtc->sec_cb_blocking_queue);
+	}
+
 	mtk_crtc->cmdq_vblank_cnt = 0;
 	wake_up(&mtk_crtc->cb_blocking_queue);
 }
@@ -544,7 +719,8 @@ static void mtk_drm_crtc_update_config(struct mtk_drm_crtc *mtk_crtc,
 				       bool needs_vblank)
 {
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
-	struct cmdq_pkt *cmdq_handle = &mtk_crtc->cmdq_handle;
+	struct cmdq_client cmdq_client;
+	struct cmdq_pkt *cmdq_handle;
 #endif
 	struct drm_crtc *crtc = &mtk_crtc->base;
 	struct mtk_drm_private *priv = crtc->dev->dev_private;
@@ -582,14 +758,36 @@ static void mtk_drm_crtc_update_config(struct mtk_drm_crtc *mtk_crtc,
 		mtk_mutex_release(mtk_crtc->mutex);
 	}
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
-	if (mtk_crtc->cmdq_client.chan) {
+	if (mtk_crtc->sec_on) {
+		mbox_flush(mtk_crtc->sec_cmdq_client.chan, 0);
+		mtk_crtc->sec_cmdq_handle.cmd_buf_size = 0;
+
+		if (mtk_crtc->sec_cmdq_handle.sec_data) {
+			struct cmdq_sec_data *sec_data;
+
+			sec_data = mtk_crtc->sec_cmdq_handle.sec_data;
+			sec_data->addrMetadataCount = 0;
+			sec_data->addrMetadatas = (uintptr_t)NULL;
+		}
+
+		mtk_crtc_enable_secure_state(crtc);
+
+		cmdq_client = mtk_crtc->sec_cmdq_client;
+		cmdq_handle = &mtk_crtc->sec_cmdq_handle;
+	} else if (mtk_crtc->cmdq_client.chan) {
 		mbox_flush(mtk_crtc->cmdq_client.chan, 2000);
-		cmdq_handle->cmd_buf_size = 0;
+		mtk_crtc->cmdq_handle.cmd_buf_size = 0;
+
+		cmdq_client =  mtk_crtc->cmdq_client;
+		cmdq_handle = &mtk_crtc->cmdq_handle;
+	}
+
+	if (cmdq_client.chan) {
 		cmdq_pkt_clear_event(cmdq_handle, mtk_crtc->cmdq_event);
 		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event, false);
 		mtk_crtc_ddp_config(crtc, cmdq_handle);
 		cmdq_pkt_finalize(cmdq_handle);
-		dma_sync_single_for_device(mtk_crtc->cmdq_client.chan->mbox->dev,
+		dma_sync_single_for_device(cmdq_client.chan->mbox->dev,
 					   cmdq_handle->pa_base,
 					   cmdq_handle->cmd_buf_size,
 					   DMA_TO_DEVICE);
@@ -602,8 +800,8 @@ static void mtk_drm_crtc_update_config(struct mtk_drm_crtc *mtk_crtc,
 		 */
 		mtk_crtc->cmdq_vblank_cnt = 3;
 
-		mbox_send_message(mtk_crtc->cmdq_client.chan, cmdq_handle);
-		mbox_client_txdone(mtk_crtc->cmdq_client.chan, 0);
+		mbox_send_message(cmdq_client.chan, cmdq_handle);
+		mbox_client_txdone(cmdq_client.chan, 0);
 	}
 #endif
 	mtk_crtc->config_updating = false;
@@ -706,6 +904,8 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
 	if (!mtk_crtc->enabled)
 		return;
 
+	mtk_crtc_disable_secure_state(crtc);
+
 	/* Set all pending plane state to disabled */
 	for (i = 0; i < mtk_crtc->layer_nr; i++) {
 		struct drm_plane *plane = &mtk_crtc->planes[i];
@@ -745,6 +945,8 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 	struct mtk_crtc_state *mtk_crtc_state = to_mtk_crtc_state(crtc_state);
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 
+	mtk_drm_crtc_plane_switch_sec_state(crtc, state);
+
 	if (mtk_crtc->event && mtk_crtc_state->base.event)
 		DRM_ERROR("new event while there is still a pending event\n");
 
@@ -1020,8 +1222,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 		if (ret) {
 			dev_dbg(dev, "mtk_crtc %d failed to get mediatek,gce-events property\n",
 				drm_crtc_index(&mtk_crtc->base));
-			mbox_free_channel(mtk_crtc->cmdq_client.chan);
-			mtk_crtc->cmdq_client.chan = NULL;
+			goto cmdq_err;
 		} else {
 			ret = mtk_drm_cmdq_pkt_create(&mtk_crtc->cmdq_client,
 						      &mtk_crtc->cmdq_handle,
@@ -1029,14 +1230,63 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			if (ret) {
 				dev_dbg(dev, "mtk_crtc %d failed to create cmdq packet\n",
 					drm_crtc_index(&mtk_crtc->base));
-				mbox_free_channel(mtk_crtc->cmdq_client.chan);
-				mtk_crtc->cmdq_client.chan = NULL;
+				goto cmdq_err;
 			}
 		}
 
 		/* for sending blocking cmd in crtc disable */
 		init_waitqueue_head(&mtk_crtc->cb_blocking_queue);
 	}
+
+	mtk_crtc->sec_cmdq_client.client.dev = mtk_crtc->mmsys_dev;
+	mtk_crtc->sec_cmdq_client.client.tx_block = false;
+	mtk_crtc->sec_cmdq_client.client.knows_txdone = true;
+	mtk_crtc->sec_cmdq_client.client.rx_callback = ddp_cmdq_cb;
+	mtk_crtc->sec_cmdq_client.chan =
+			mbox_request_channel(&mtk_crtc->sec_cmdq_client.client, i + 1);
+	if (IS_ERR(mtk_crtc->sec_cmdq_client.chan)) {
+		dev_err(dev, "mtk_crtc %d failed to create sec mailbox client\n",
+			drm_crtc_index(&mtk_crtc->base));
+		mtk_crtc->sec_cmdq_client.chan = NULL;
+	}
+
+	if (mtk_crtc->sec_cmdq_client.chan) {
+		struct device_link *link;
+
+		/* add devlink to cmdq dev to make sure suspend/resume order is correct */
+		link = device_link_add(priv->dev, mtk_crtc->sec_cmdq_client.chan->mbox->dev,
+				       DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
+		if (!link) {
+			dev_err(priv->dev, "Unable to link dev=%s\n",
+				dev_name(mtk_crtc->sec_cmdq_client.chan->mbox->dev));
+			ret = -ENODEV;
+			goto cmdq_err;
+		}
+
+		ret = mtk_drm_cmdq_pkt_create(&mtk_crtc->sec_cmdq_client,
+					      &mtk_crtc->sec_cmdq_handle,
+					      PAGE_SIZE);
+		if (ret) {
+			dev_dbg(dev, "mtk_crtc %d failed to create cmdq secure packet\n",
+				drm_crtc_index(&mtk_crtc->base));
+			goto cmdq_err;
+		}
+
+		/* for sending blocking cmd in crtc disable */
+		init_waitqueue_head(&mtk_crtc->sec_cb_blocking_queue);
+	}
+
+cmdq_err:
+	if (ret) {
+		if (mtk_crtc->cmdq_client.chan) {
+			mbox_free_channel(mtk_crtc->cmdq_client.chan);
+			mtk_crtc->cmdq_client.chan = NULL;
+		}
+		if (mtk_crtc->sec_cmdq_client.chan) {
+			mbox_free_channel(mtk_crtc->sec_cmdq_client.chan);
+			mtk_crtc->sec_cmdq_client.chan = NULL;
+		}
+	}
 #endif
 	return 0;
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index 3e9046993d09..ff7f81fa6184 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -19,6 +19,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const unsigned int *path,
 			unsigned int path_len,
 			int priv_data_index);
+void mtk_crtc_disable_secure_state(struct drm_crtc *crtc);
 int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 			     struct mtk_plane_state *state);
 void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index db2f70ae060d..89b5a4e87548 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -265,6 +265,13 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
 	mtk_plane_state->pending.enable = false;
 	wmb(); /* Make sure the above parameter is set before update */
 	mtk_plane_state->pending.dirty = true;
+
+	if (mtk_plane_state->pending.is_sec) {
+		struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state, plane);
+
+		if (old_state->crtc)
+			mtk_crtc_disable_secure_state(old_state->crtc);
+	}
 }
 
 static void mtk_plane_atomic_update(struct drm_plane *plane,
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
