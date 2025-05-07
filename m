Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB35AAE364
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 16:43:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6470445531
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 14:43:39 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id E8042446ED
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 14:42:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=d9Evnz9V;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250507144244euoutp01a25f3063670dda7217ef7d69d19a6e9e~9Rcn3wtPS0094500945euoutp015
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 14:42:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250507144244euoutp01a25f3063670dda7217ef7d69d19a6e9e~9Rcn3wtPS0094500945euoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1746628964;
	bh=mdz+cXEDZljQjj2QHVAL79wyw6IZ/e07fNnVY+iBXtw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d9Evnz9VsLfmbn0AKxp+0qI5a3c1Rj/fY+g81UV/Jo6OCwbj/aftq/2NjRGsRtc9J
	 Am3pdiZqSXjG8av2hmZ0LKAcJePbcyxFLgk8IILY2gQ0wtGqD4W22tMQwqB1PHJqRZ
	 PWxRbZ8go7ktkhJpRijPlJIFLpJzPZeR55+9Wn84=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250507144243eucas1p223283ee32d1675125dc77c2457253443~9RcnYuNDg1729917299eucas1p2Z;
	Wed,  7 May 2025 14:42:43 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250507144242eusmtip25a0a7410ff09476124e2b33381e9f69a~9RcmtVAvp0180601806eusmtip2E;
	Wed,  7 May 2025 14:42:42 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev
Date: Wed,  7 May 2025 16:42:03 +0200
Message-Id: <20250507144203.2081756-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507144203.2081756-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250507144243eucas1p223283ee32d1675125dc77c2457253443
X-Msg-Generator: CA
X-RootMTR: 20250507144243eucas1p223283ee32d1675125dc77c2457253443
X-EPHeader: CA
X-CMS-RootMailID: 20250507144243eucas1p223283ee32d1675125dc77c2457253443
References: <20250507144203.2081756-1-m.szyprowski@samsung.com>
	<CGME20250507144243eucas1p223283ee32d1675125dc77c2457253443@eucas1p2.samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E8042446ED
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24:c];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.11:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	URIBL_BLOCKED(0.00)[samsung.com:dkim,samsung.com:mid,samsung.com:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	DWL_DNSWL_BLOCKED(0.00)[samsung.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[samsung.com,ideasonboard.com,linux.intel.com,kernel.org,xs4all.nl,arm.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[203.254.199.222:received,210.118.77.11:from,106.120.51.32:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: H7F5NTWR7VGUB343GQWCUVKHNI23BHYC
X-Message-ID-Hash: H7F5NTWR7VGUB343GQWCUVKHNI23BHYC
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/3] media: omap3isp: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7F5NTWR7VGUB343GQWCUVKHNI23BHYC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use common wrappers operating directly on the struct sg_table objects to
fix incorrect use of scatterlists sync calls. dma_sync_sg_for_*()
functions have to be called with the number of elements originally passed
to dma_map_sg_*() function, not the one returned in sgtable's nents.

Fixes: d33186d0be18 ("[media] omap3isp: ccdc: Use the DMA API for LSC")
Fixes: 0e24e90f2ca7 ("[media] omap3isp: stat: Use the DMA API")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/media/platform/ti/omap3isp/ispccdc.c | 8 ++++----
 drivers/media/platform/ti/omap3isp/ispstat.c | 6 ++----
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/ti/omap3isp/ispccdc.c b/drivers/media/platform/ti/omap3isp/ispccdc.c
index dd375c4e180d..7d0c723dcd11 100644
--- a/drivers/media/platform/ti/omap3isp/ispccdc.c
+++ b/drivers/media/platform/ti/omap3isp/ispccdc.c
@@ -446,8 +446,8 @@ static int ccdc_lsc_config(struct isp_ccdc_device *ccdc,
 		if (ret < 0)
 			goto done;
 
-		dma_sync_sg_for_cpu(isp->dev, req->table.sgt.sgl,
-				    req->table.sgt.nents, DMA_TO_DEVICE);
+		dma_sync_sgtable_for_cpu(isp->dev, &req->table.sgt,
+					 DMA_TO_DEVICE);
 
 		if (copy_from_user(req->table.addr, config->lsc,
 				   req->config.size)) {
@@ -455,8 +455,8 @@ static int ccdc_lsc_config(struct isp_ccdc_device *ccdc,
 			goto done;
 		}
 
-		dma_sync_sg_for_device(isp->dev, req->table.sgt.sgl,
-				       req->table.sgt.nents, DMA_TO_DEVICE);
+		dma_sync_sgtable_for_device(isp->dev, &req->table.sgt,
+					    DMA_TO_DEVICE);
 	}
 
 	spin_lock_irqsave(&ccdc->lsc.req_lock, flags);
diff --git a/drivers/media/platform/ti/omap3isp/ispstat.c b/drivers/media/platform/ti/omap3isp/ispstat.c
index 359a846205b0..d3da68408ecb 100644
--- a/drivers/media/platform/ti/omap3isp/ispstat.c
+++ b/drivers/media/platform/ti/omap3isp/ispstat.c
@@ -161,8 +161,7 @@ static void isp_stat_buf_sync_for_device(struct ispstat *stat,
 	if (ISP_STAT_USES_DMAENGINE(stat))
 		return;
 
-	dma_sync_sg_for_device(stat->isp->dev, buf->sgt.sgl,
-			       buf->sgt.nents, DMA_FROM_DEVICE);
+	dma_sync_sgtable_for_device(stat->isp->dev, &buf->sgt, DMA_FROM_DEVICE);
 }
 
 static void isp_stat_buf_sync_for_cpu(struct ispstat *stat,
@@ -171,8 +170,7 @@ static void isp_stat_buf_sync_for_cpu(struct ispstat *stat,
 	if (ISP_STAT_USES_DMAENGINE(stat))
 		return;
 
-	dma_sync_sg_for_cpu(stat->isp->dev, buf->sgt.sgl,
-			    buf->sgt.nents, DMA_FROM_DEVICE);
+	dma_sync_sgtable_for_cpu(stat->isp->dev, &buf->sgt, DMA_FROM_DEVICE);
 }
 
 static void isp_stat_buf_clear(struct ispstat *stat)
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
