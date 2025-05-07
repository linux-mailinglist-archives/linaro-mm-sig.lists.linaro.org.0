Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D5AAE612
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 18:09:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71533459E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 16:09:36 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id A22213F57F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 16:09:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b="cF/OcUnr";
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250507160921euoutp028ec292afffed844883cd52a68d10adbf~9SoQnDTdC0381703817euoutp02m
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 16:09:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250507160921euoutp028ec292afffed844883cd52a68d10adbf~9SoQnDTdC0381703817euoutp02m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1746634161;
	bh=M3SqDjMH2OEj84bPabFMQ0Loj/zISCk3BQwUb/ZH58w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cF/OcUnrl4yzXM7L+iSJ8SQRpqHFzPEm3+RhMrm57Vgsgda0mkIxhGYdRhMLovUbN
	 D94/VS/Ea9/Mvx0VwpFoH618h/GCkr9hcHieJ+ztdIhhUNj1M9xHbe9Huq8N+savje
	 n6Vq/jEz81wUXPStQyClJ8N3p0ElQezjXSyDvlGM=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73~9SoQbt7wG1792117921eucas1p2C;
	Wed,  7 May 2025 16:09:21 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250507160921eusmtip14167cae9141d9bd450c3182711e4dec3~9SoP_b54S3077630776eusmtip1-;
	Wed,  7 May 2025 16:09:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev
Date: Wed,  7 May 2025 18:09:11 +0200
Message-Id: <20250507160913.2084079-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507160913.2084079-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73
X-Msg-Generator: CA
X-RootMTR: 20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73
X-EPHeader: CA
X-CMS-RootMailID: 20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73
References: <20250507160913.2084079-1-m.szyprowski@samsung.com>
	<CGME20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73@eucas1p2.samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A22213F57F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[samsung.com:dkim,samsung.com:mid,samsung.com:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[samsung.com,chromium.org,kernel.org,xs4all.nl,arm.com,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[203.254.199.221:received,210.118.77.12:from,106.120.51.32:received,182.198.249.207:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BZ3XM3EMEJBW7IRA25FPSOB2CTSKSZRO
X-Message-ID-Hash: BZ3XM3EMEJBW7IRA25FPSOB2CTSKSZRO
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <senozhatsky@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/3] media: videobuf2: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BZ3XM3EMEJBW7IRA25FPSOB2CTSKSZRO/>
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
to dma_map_sg_*() function, not the one returned in sgt->nents.

Fixes: d4db5eb57cab ("media: videobuf2: add begin/end cpu_access callbacks to dma-sg")
CC: stable@vger.kernel.org
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/media/common/videobuf2/videobuf2-dma-sg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
index c6ddf2357c58..b3bf2173c14e 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-sg.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
@@ -469,7 +469,7 @@ vb2_dma_sg_dmabuf_ops_begin_cpu_access(struct dma_buf *dbuf,
 	struct vb2_dma_sg_buf *buf = dbuf->priv;
 	struct sg_table *sgt = buf->dma_sgt;
 
-	dma_sync_sg_for_cpu(buf->dev, sgt->sgl, sgt->nents, buf->dma_dir);
+	dma_sync_sgtable_for_cpu(buf->dev, sgt, buf->dma_dir);
 	return 0;
 }
 
@@ -480,7 +480,7 @@ vb2_dma_sg_dmabuf_ops_end_cpu_access(struct dma_buf *dbuf,
 	struct vb2_dma_sg_buf *buf = dbuf->priv;
 	struct sg_table *sgt = buf->dma_sgt;
 
-	dma_sync_sg_for_device(buf->dev, sgt->sgl, sgt->nents, buf->dma_dir);
+	dma_sync_sgtable_for_device(buf->dev, sgt, buf->dma_dir);
 	return 0;
 }
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
