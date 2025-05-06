Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E715AACAA7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 18:15:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 127B641014
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 16:15:04 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id EEB1E3F5C6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 May 2025 16:14:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=fwDG+IVO;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250506161422euoutp02de88c829755e20aec2a36d097ec190cd~8-DWBxd5b1174411744euoutp02Z
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 May 2025 16:14:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250506161422euoutp02de88c829755e20aec2a36d097ec190cd~8-DWBxd5b1174411744euoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1746548062;
	bh=OE2cRkTkOYpXuv15aHxMbiUvH5dQCxlOg8WtuJAV98g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fwDG+IVOUQuksj/nnZ5kfvb8hJFr3/FJGwAi5D1Yy0RZ18P29wk5DM4ph/mU3B6ac
	 sMHCyuo4Jn0Zneq/ulIIwoSIK1jmEreJXmrbsM9DOz1j9Co62dSZnsoRbet5eIlvHE
	 aK1e85TSHOGvWns7zeVnENHS3Lm24S9VgwuuA9Uc=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250506161421eucas1p1e51a0891fe56863c1e927609b842d6de~8-DVkn8Am1862718627eucas1p1v;
	Tue,  6 May 2025 16:14:21 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250506161421eusmtip2f63d10d07d7f41de33bdffeecaa72288~8-DVEAWPM0367703677eusmtip2C;
	Tue,  6 May 2025 16:14:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
Date: Tue,  6 May 2025 18:13:45 +0200
Message-Id: <20250506161346.1211105-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250506161346.1211105-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250506161421eucas1p1e51a0891fe56863c1e927609b842d6de
X-Msg-Generator: CA
X-RootMTR: 20250506161421eucas1p1e51a0891fe56863c1e927609b842d6de
X-EPHeader: CA
X-CMS-RootMailID: 20250506161421eucas1p1e51a0891fe56863c1e927609b842d6de
References: <20250506161346.1211105-1-m.szyprowski@samsung.com>
	<CGME20250506161421eucas1p1e51a0891fe56863c1e927609b842d6de@eucas1p1.samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EEB1E3F5C6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[210.118.77.12:from];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[samsung.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[106.120.51.32:received,203.254.199.222:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: DQMSPLV6ZQYQ26GXV2QE5ATZ6ZM6353M
X-Message-ID-Hash: DQMSPLV6ZQYQ26GXV2QE5ATZ6ZM6353M
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Robin Murphy <robin.murphy@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] udmabuf: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DQMSPLV6ZQYQ26GXV2QE5ATZ6ZM6353M/>
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
to dma_map_sg_*() function, not the one returned in sgtable's nents.

Fixes: 1ffe09590121 ("udmabuf: fix dma-buf cpu access")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/dma-buf/udmabuf.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 7eee3eb47a8e..c9d0c68d2fcb 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -264,8 +264,7 @@ static int begin_cpu_udmabuf(struct dma_buf *buf,
 			ubuf->sg = NULL;
 		}
 	} else {
-		dma_sync_sg_for_cpu(dev, ubuf->sg->sgl, ubuf->sg->nents,
-				    direction);
+		dma_sync_sgtable_for_cpu(dev, ubuf->sg, direction);
 	}
 
 	return ret;
@@ -280,7 +279,7 @@ static int end_cpu_udmabuf(struct dma_buf *buf,
 	if (!ubuf->sg)
 		return -EINVAL;
 
-	dma_sync_sg_for_device(dev, ubuf->sg->sgl, ubuf->sg->nents, direction);
+	dma_sync_sgtable_for_device(dev, ubuf->sg, direction);
 	return 0;
 }
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
