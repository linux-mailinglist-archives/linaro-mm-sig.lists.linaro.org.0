Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B85F0AACAA2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 18:14:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4DA644630
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 16:14:49 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 4A5193F5C6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 May 2025 16:14:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=QAY9W9XL;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250506161421euoutp02b36f9edf5fad3ea79d2f816a56491449~8-DVMU6gG1083010830euoutp02z
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 May 2025 16:14:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250506161421euoutp02b36f9edf5fad3ea79d2f816a56491449~8-DVMU6gG1083010830euoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1746548061;
	bh=38gsLZDZw+0ZNz2g5WlLXi2RATEcYA0mxjT1byT2J3k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QAY9W9XL3FlVR/fXhpvgJn4hlo8RvOUYGfj8HZmAttsk482hkmKSqVjV/z2bUhJTS
	 AbjVpzGUmdnIxjj/XnqgWgdnWRGgSZ5lBPhxzZpZm7x0ySMciS5LAHzqYaATRUUhvZ
	 dBwRyZyWO0HTmqyBwfKFTikE9pHii8LgPrp+YPT0=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250506161421eucas1p295fd08ced0f914e5f77d61ff28305681~8-DU_iaB62492624926eucas1p2N;
	Tue,  6 May 2025 16:14:21 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250506161420eusmtip2cc26fd1272a1c3b881edbd680c4dd705~8-DUjjfkt0053200532eusmtip2-;
	Tue,  6 May 2025 16:14:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev
Date: Tue,  6 May 2025 18:13:44 +0200
Message-Id: <20250506161346.1211105-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250506161346.1211105-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250506161421eucas1p295fd08ced0f914e5f77d61ff28305681
X-Msg-Generator: CA
X-RootMTR: 20250506161421eucas1p295fd08ced0f914e5f77d61ff28305681
X-EPHeader: CA
X-CMS-RootMailID: 20250506161421eucas1p295fd08ced0f914e5f77d61ff28305681
References: <20250506161346.1211105-1-m.szyprowski@samsung.com>
	<CGME20250506161421eucas1p295fd08ced0f914e5f77d61ff28305681@eucas1p2.samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4A5193F5C6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[210.118.77.12:from];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[samsung.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[samsung.com,chromium.org,kernel.org,xs4all.nl,arm.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	DNSWL_BLOCKED(0.00)[203.254.199.222:received,106.120.51.32:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[samsung.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: AUSYCPAQWY6MVHPSJOPZSGMJDQL6I6XG
X-Message-ID-Hash: AUSYCPAQWY6MVHPSJOPZSGMJDQL6I6XG
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <senozhatsky@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/3] media: videobuf2: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUSYCPAQWY6MVHPSJOPZSGMJDQL6I6XG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use common wrappers operating directly on the struct sg_table objects to
fix incorrect use of statterlists sync calls. dma_sync_sg_for_*()
functions have to be called with the number of elements originally passed
to dma_map_sg_*() function, not the one returned in sgt->nents.

Fixes: d4db5eb57cab ("media: videobuf2: add begin/end cpu_access callbacks to dma-sg")
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
