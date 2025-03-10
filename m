Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B92C7A593A0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:09:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE331446ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:09:12 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 9C89344AC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qP1HaEej;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 342E6A4599F;
	Mon, 10 Mar 2025 12:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 881E4C4CEF1;
	Mon, 10 Mar 2025 12:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608406;
	bh=NXKrlxOk8nYj3oekFD8GiKq9/u4PNdR9ojkDiIpqr8Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qP1HaEejl3XbM+OS0ZKFaaD86jNWg/27gajc0J541SsR7ZFPhKVTG3ZBJjpoQMliu
	 NOawWgEwaEwZ01wa9RTULuZgGivrBBZtKlDVAMzRxJDPnZAoKrNIUz/OMqTxQf68MV
	 oyaDfZg98cxeS9aToEfD74iRQdNbpy6aqcpqBlADSmFpsqUKq0cg/k6/MaH2vfGyKW
	 6HCbzZuIqVzOOtJXoG2bQpZofznzIf+76AEZdiodRQm3L1e2cymwgusOb2W1/8vrC2
	 M1i0C9qr6qkLBJrKtljZQ4kUeY/hyStMuDlAMt7Sh2OLM1pXA2nCBEzZQs2jdbpcFl
	 hz5IMtNseNp+g==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:16 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-10-2984c1bc9312@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
In-Reply-To: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2422; i=mripard@kernel.org;
 h=from:subject:message-id; bh=NXKrlxOk8nYj3oekFD8GiKq9/u4PNdR9ojkDiIpqr8Y=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm7790W4odtyuqKjtsCfpWvTZgqvnjx9dp4mw4Vnx
 om7O58YdpSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAi4sUM/+OM1uZ9mxg4/6n9
 j+bjKyIYp3zkEPha/IbRz9lBedkrhq0M/5Pe2ZUEOkbWVapK+j80WiT1S7Ppivsji5iFe/Z+XWB
 nwgEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9C89344AC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: L6GYPTCQYWBLYWGCWEW4Y3EE6H5J776X
X-Message-ID-Hash: L6GYPTCQYWBLYWGCWEW4Y3EE6H5J776X
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 10/12] dma-buf: cma: Account for allocations in dmem cgroup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L6GYPTCQYWBLYWGCWEW4Y3EE6H5J776X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now that we have a DMEM region per CMA region, we can track the
allocations of the CMA heap through DMEM.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/cma_heap.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 9512d050563a9ad0a735230c4870c3d3b3b01b25..4951c41db3ba0cbd903b6d62787f51b83f4a1e7e 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -7,10 +7,11 @@
  *
  * Also utilizing parts of Andrew Davis' SRAM heap:
  * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  */
+#include <linux/cgroup_dmem.h>
 #include <linux/cma.h>
 #include <linux/dma-buf.h>
 #include <linux/dma-heap.h>
 #include <linux/dma-map-ops.h>
 #include <linux/err.h>
@@ -276,23 +277,31 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 					 unsigned long len,
 					 u32 fd_flags,
 					 u64 heap_flags)
 {
 	struct cma_heap *cma_heap = dma_heap_get_drvdata(heap);
+	struct dmem_cgroup_pool_state *pool;
 	struct cma_heap_buffer *buffer;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 	size_t size = PAGE_ALIGN(len);
 	pgoff_t pagecount = size >> PAGE_SHIFT;
 	unsigned long align = get_order(size);
 	struct page *cma_pages;
 	struct dma_buf *dmabuf;
 	int ret = -ENOMEM;
 	pgoff_t pg;
 
+	ret = dmem_cgroup_try_charge(cma_get_dmem_cgroup_region(cma_heap->cma),
+				     size, &pool, NULL);
+	if (ret)
+		return ERR_PTR(ret);
+
 	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
-	if (!buffer)
-		return ERR_PTR(-ENOMEM);
+	if (!buffer) {
+		ret = -ENOMEM;
+		goto uncharge_cgroup;
+	}
 
 	INIT_LIST_HEAD(&buffer->attachments);
 	mutex_init(&buffer->lock);
 	buffer->len = size;
 
@@ -348,18 +357,23 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 	dmabuf = dma_buf_export(&exp_info);
 	if (IS_ERR(dmabuf)) {
 		ret = PTR_ERR(dmabuf);
 		goto free_pages;
 	}
+
+	dmabuf->cgroup_pool = pool;
+
 	return dmabuf;
 
 free_pages:
 	kfree(buffer->pages);
 free_cma:
 	cma_release(cma_heap->cma, cma_pages, pagecount);
 free_buffer:
 	kfree(buffer);
+uncharge_cgroup:
+	dmem_cgroup_uncharge(pool, len);
 
 	return ERR_PTR(ret);
 }
 
 static const struct dma_heap_ops cma_heap_ops = {

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
