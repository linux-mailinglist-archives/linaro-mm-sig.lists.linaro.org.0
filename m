Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C78E581D5F3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 Dec 2023 19:32:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFB243EF61
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 Dec 2023 18:32:41 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 153C13F98C
	for <linaro-mm-sig@lists.linaro.org>; Sat, 23 Dec 2023 18:29:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=pXCUiTZ3;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 39d91052a1c111eeba30773df0976c77-20231224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=SzoPn8uxMb6pfB9NNf9fBM1vsuCNX8c3U3b+FwXjf1I=;
	b=pXCUiTZ3fEBE0FqbxoNlwT/7hUImXfQ2HwkiF6/WPffyXnVBH9szGT6f6HaKIZSnz9cGN91u3BCQSMZ1jZH0uCUF9kA3RVjAAyIhKUr+jiiUua/bF8BD7fLX50cYcMqmOPLjdyFNhWRfUDLX9jk3dA+rG69+dTOie7fZA+DPAE8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:8b69b4ca-9b54-4a5a-947a-a5c807fc8279,IP:0,U
	RL:0,TC:0,Content:-25,EDM:-30,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACT
	ION:release,TS:-55
X-CID-META: VersionHash:5d391d7,CLOUDID:b55d7f8d-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:2,IP:nil,UR
	L:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,D
	KR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 39d91052a1c111eeba30773df0976c77-20231224
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1385279366; Sun, 24 Dec 2023 02:29:36 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 24 Dec 2023 02:29:35 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 24 Dec 2023 02:29:35 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Sun, 24 Dec 2023 02:29:28 +0800
Message-ID: <20231223182932.27683-8-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
References: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[210.61.82.184:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw02.mediatek.com:rdns,mailgw02.mediatek.com:helo,mediatek.com:email,mediatek.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 153C13F98C
X-Spamd-Bar: /
Message-ID-Hash: MFIXNIA5LUAAHXLKXP72PWXJMQDEL66S
X-Message-ID-Hash: MFIXNIA5LUAAHXLKXP72PWXJMQDEL66S
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 07/11] drm/mediatek: Add secure layer config support for ovl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MFIXNIA5LUAAHXLKXP72PWXJMQDEL66S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add secure layer config support for ovl.

TODO:
1. Move DISP_REG_OVL_SECURE setting to secure world.
2. Change the parameter register address in mtk_ddp_sec_write()
   from "u32 addr" to "struct cmdq_client_reg *cmdq_reg".

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_drv.h     |  2 ++
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     | 31 +++++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 29 +++++++++++++++++++
 3 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 1311562d25cc..77054adcd9cf 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -9,6 +9,7 @@
 #include <linux/soc/mediatek/mtk-cmdq.h>
 #include <linux/soc/mediatek/mtk-mmsys.h>
 #include <linux/soc/mediatek/mtk-mutex.h>
+#include "mtk_drm_ddp_comp.h"
 #include "mtk_drm_plane.h"
 #include "mtk_mdp_rdma.h"
 
@@ -82,6 +83,7 @@ void mtk_ovl_clk_disable(struct device *dev);
 void mtk_ovl_config(struct device *dev, unsigned int w,
 		    unsigned int h, unsigned int vrefresh,
 		    unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
+u64 mtk_ovl_get_sec_port(struct mtk_ddp_comp *comp, unsigned int idx);
 int mtk_ovl_layer_check(struct device *dev, unsigned int idx,
 			struct mtk_plane_state *mtk_state);
 void mtk_ovl_layer_config(struct device *dev, unsigned int idx,
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 2bffe4245466..c18f76412a2e 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -46,6 +46,7 @@
 #define DISP_REG_OVL_ADDR(ovl, n)		((ovl)->data->addr + 0x20 * (n))
 #define DISP_REG_OVL_HDR_ADDR(ovl, n)		((ovl)->data->addr + 0x20 * (n) + 0x04)
 #define DISP_REG_OVL_HDR_PITCH(ovl, n)		((ovl)->data->addr + 0x20 * (n) + 0x08)
+#define DISP_REG_OVL_SECURE			0x0fc0
 
 #define GMC_THRESHOLD_BITS	16
 #define GMC_THRESHOLD_HIGH	((1 << GMC_THRESHOLD_BITS) / 4)
@@ -126,8 +127,19 @@ struct mtk_disp_ovl {
 	const struct mtk_disp_ovl_data	*data;
 	void				(*vblank_cb)(void *data);
 	void				*vblank_cb_data;
+	resource_size_t			regs_pa;
 };
 
+u64 mtk_ovl_get_sec_port(struct mtk_ddp_comp *comp, unsigned int idx)
+{
+	if (comp->id == DDP_COMPONENT_OVL0)
+		return BIT_ULL(CMDQ_SEC_DISP_OVL0);
+	else if (comp->id == DDP_COMPONENT_OVL1)
+		return BIT_ULL(CMDQ_SEC_DISP_OVL1);
+
+	return 0;
+}
+
 static irqreturn_t mtk_disp_ovl_irq_handler(int irq, void *dev_id)
 {
 	struct mtk_disp_ovl *priv = dev_id;
@@ -449,8 +461,22 @@ void mtk_ovl_layer_config(struct device *dev, unsigned int idx,
 			      DISP_REG_OVL_SRC_SIZE(idx));
 	mtk_ddp_write_relaxed(cmdq_pkt, offset, &ovl->cmdq_reg, ovl->regs,
 			      DISP_REG_OVL_OFFSET(idx));
-	mtk_ddp_write_relaxed(cmdq_pkt, addr, &ovl->cmdq_reg, ovl->regs,
-			      DISP_REG_OVL_ADDR(ovl, idx));
+
+	if (state->pending.is_secure) {
+		const struct drm_format_info *fmt_info = drm_format_info(fmt);
+		unsigned int buf_size = (pending->height - 1) * pending->pitch +
+					pending->width * fmt_info->cpp[0];
+
+		mtk_ddp_write_mask(cmdq_pkt, BIT(idx), &ovl->cmdq_reg, ovl->regs,
+				   DISP_REG_OVL_SECURE, BIT(idx));
+		mtk_ddp_sec_write(cmdq_pkt, ovl->regs_pa + DISP_REG_OVL_ADDR(ovl, idx),
+				  pending->addr, CMDQ_IWC_H_2_MVA, 0, buf_size, 0);
+	} else {
+		mtk_ddp_write_mask(cmdq_pkt, 0, &ovl->cmdq_reg, ovl->regs,
+				   DISP_REG_OVL_SECURE, BIT(idx));
+		mtk_ddp_write_relaxed(cmdq_pkt, addr, &ovl->cmdq_reg, ovl->regs,
+				      DISP_REG_OVL_ADDR(ovl, idx));
+	}
 
 	if (is_afbc) {
 		mtk_ddp_write_relaxed(cmdq_pkt, hdr_addr, &ovl->cmdq_reg, ovl->regs,
@@ -529,6 +555,7 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
 	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	priv->regs_pa = res->start;
 	priv->regs = devm_ioremap_resource(dev, res);
 	if (IS_ERR(priv->regs)) {
 		dev_err(dev, "failed to ioremap ovl\n");
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 3046c0409353..6aed7647dfc0 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -111,6 +111,34 @@ void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
 #endif
 }
 
+void mtk_ddp_sec_write(struct cmdq_pkt *cmdq_pkt, u32 addr, u64 base,
+		       const enum cmdq_iwc_addr_metadata_type type,
+		       const u32 offset, const u32 size, const u32 port)
+{
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	if (!cmdq_pkt)
+		return;
+
+	/* secure buffer will be 4K alignment */
+	cmdq_sec_pkt_write(cmdq_pkt, addr, base, type,
+			   offset, ALIGN(size, PAGE_SIZE), port);
+#endif
+}
+
+void mtk_ddp_sec_write(struct cmdq_pkt *cmdq_pkt, u32 addr, u64 base,
+		       const enum cmdq_iwc_addr_metadata_type type,
+		       const u32 offset, const u32 size, const u32 port)
+{
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	if (!cmdq_pkt)
+		return;
+
+	/* secure buffer will be 4K alignment */
+	cmdq_sec_pkt_write(cmdq_pkt, addr, base, type,
+			   offset, ALIGN(size, PAGE_SIZE), port);
+#endif
+}
+
 static int mtk_ddp_clk_enable(struct device *dev)
 {
 	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
@@ -365,6 +393,7 @@ static const struct mtk_ddp_comp_funcs ddp_ovl = {
 	.bgclr_in_off = mtk_ovl_bgclr_in_off,
 	.get_formats = mtk_ovl_get_formats,
 	.get_num_formats = mtk_ovl_get_num_formats,
+	.get_sec_port = mtk_ovl_get_sec_port,
 };
 
 static const struct mtk_ddp_comp_funcs ddp_postmask = {
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
