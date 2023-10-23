Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9B67D2974
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 06:48:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EC8E40B58
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 04:48:35 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 3A88540B56
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Oct 2023 04:46:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=Tfswao19;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com
X-UUID: 0b8cceb0715f11eea33bb35ae8d461a2-20231023
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=X+tczk0/vmYvmSCEtwcnNPhlaGybKeOD9xZv9JHzkfU=;
	b=Tfswao19MNHrXLo93/PtUGpnA366sMRKXm1GamUQgmBJUUk7b4rSdNnxZbYSovgY45mNnqkAaGNPDOQhWc/QpNxgi2l2bjSrXnXMZmj4RmFR3VAg4NB8WIITQiWyp9h0cggfYGJ2SGq3zPnWOI0Lv3ysg5Uu8WFMjU02ETfQmLU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:b9fed86c-3723-486c-a85d-27b15647ab89,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:5f78ec9,CLOUDID:240e8294-10ce-4e4b-85c2-c9b5229ff92b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0b8cceb0715f11eea33bb35ae8d461a2-20231023
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1080033288; Mon, 23 Oct 2023 12:45:52 +0800
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
Date: Mon, 23 Oct 2023 12:45:45 +0800
Message-ID: <20231023044549.21412-9-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3A88540B56
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
Message-ID-Hash: EMMGVTGDW6AK4X3C3X7SYFTXOZ6KNK7S
X-Message-ID-Hash: EMMGVTGDW6AK4X3C3X7SYFTXOZ6KNK7S
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 08/11] drm/mediatek: Add secure layer config support for ovl_adaptor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EMMGVTGDW6AK4X3C3X7SYFTXOZ6KNK7S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add secure layer config support for ovl_adaptor and sub driver mdp_rdma.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c |  3 +++
 drivers/gpu/drm/mediatek/mtk_mdp_rdma.c         | 11 ++++++++---
 drivers/gpu/drm/mediatek/mtk_mdp_rdma.h         |  2 ++
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
index 28a0bccfb0b9..274961222672 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
@@ -153,6 +153,9 @@ void mtk_ovl_adaptor_layer_config(struct device *dev, unsigned int idx,
 	rdma_config.pitch = pending->pitch;
 	rdma_config.fmt = pending->format;
 	rdma_config.color_encoding = pending->color_encoding;
+	rdma_config.source_size = (pending->height - 1) * pending->pitch +
+				  pending->width * fmt_info->cpp[0];
+	rdma_config.is_sec = state->pending.is_sec;
 	mtk_mdp_rdma_config(rdma_l, &rdma_config, cmdq_pkt);
 
 	if (use_dual_pipe) {
diff --git a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
index c3adaeefd551..1c4798e3bbc3 100644
--- a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
+++ b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
@@ -94,6 +94,7 @@ struct mtk_mdp_rdma {
 	void __iomem		*regs;
 	struct clk		*clk;
 	struct cmdq_client_reg	cmdq_reg;
+	resource_size_t		regs_pa;
 };
 
 static unsigned int rdma_fmt_convert(unsigned int fmt)
@@ -198,9 +199,12 @@ void mtk_mdp_rdma_config(struct device *dev, struct mtk_mdp_rdma_cfg *cfg,
 	else
 		mtk_ddp_write_mask(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs,
 				   MDP_RDMA_SRC_CON, FLD_OUTPUT_ARGB);
-
-	mtk_ddp_write_mask(cmdq_pkt, cfg->addr0, &priv->cmdq_reg, priv->regs,
-			   MDP_RDMA_SRC_BASE_0, FLD_SRC_BASE_0);
+	if (cfg->is_sec)
+		mtk_ddp_sec_write(cmdq_pkt, priv->regs_pa + MDP_RDMA_SRC_BASE_0,
+				  cfg->addr0, CMDQ_IWC_H_2_MVA, 0, cfg->source_size, 0);
+	else
+		mtk_ddp_write_mask(cmdq_pkt, cfg->addr0, &priv->cmdq_reg, priv->regs,
+				   MDP_RDMA_SRC_BASE_0, FLD_SRC_BASE_0);
 
 	mtk_ddp_write_mask(cmdq_pkt, src_pitch_y, &priv->cmdq_reg, priv->regs,
 			   MDP_RDMA_MF_BKGD_SIZE_IN_BYTE, FLD_MF_BKGD_WB);
@@ -285,6 +289,7 @@ static int mtk_mdp_rdma_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	priv->regs_pa = res->start;
 	priv->regs = devm_ioremap_resource(dev, res);
 	if (IS_ERR(priv->regs)) {
 		dev_err(dev, "failed to ioremap rdma\n");
diff --git a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h
index 9943ee3aac31..9add18e96319 100644
--- a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h
+++ b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h
@@ -15,6 +15,8 @@ struct mtk_mdp_rdma_cfg {
 	unsigned int	y_top;
 	int		fmt;
 	int		color_encoding;
+	unsigned int	source_size;
+	unsigned int	is_sec;
 };
 
 #endif // __MTK_MDP_RDMA_H__
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
