Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 891E6A59389
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:07:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC48D43C89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:07:54 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8149A4474C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=D51WTw1v;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2F23F5C5FD8;
	Mon, 10 Mar 2025 12:04:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D876C4CEF2;
	Mon, 10 Mar 2025 12:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608392;
	bh=Qro4bxDwIqe16ab1F2sB7BE0N7tDo7mzmoJ4I8TRdJo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=D51WTw1vtvstBl3vA6JvF9mJlq8j1sR8WR9qqmKOGz+7DJOVHwT2Kyu8P57f2urTP
	 CcYglBYtnuHm740POtZsbS+c/avUeR+UJF6Dm89rG4q/w96U7nc3KllbLk3dYYAbcm
	 7aVwrst/8lH5sL1VUq7gavKQxdqv4Mk/P5S/KKkTbQ2XeEY6Cf7iqmRIp8G7/jsn1G
	 e2aM8hRmquBs3cACUrGaYZkeX0oqiLvQqGDvMp5TTuJpMfP1ECtFpniPlTgDzMm9da
	 30WiRVu14OryQa/TWUpQxatBX+kELTV279o/nPrT/8j5qdqoMbFDSDO8ckXUVJZGDO
	 LopwJfsypVydw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:11 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-5-2984c1bc9312@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1928; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Qro4bxDwIqe16ab1F2sB7BE0N7tDo7mzmoJ4I8TRdJo=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm6qvuS1X/e7kHRZT3uA1u0ltrJ7v62s3zidrfnc4
 uvXokTKO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCR1EhGht8NTNPURafMNOm7
 kfjSL08gJ6V+/YO0W5df7s09yXj3x1SG/xXZzw7vC5rw1We/aXFph+FWnjcK3376mE4Ly39l8N1
 SlhkA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8149A4474C
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
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
Message-ID-Hash: TFCB7Q7WI3KJLBQRR4TF3ALJOJCD6TFZ
X-Message-ID-Hash: TFCB7Q7WI3KJLBQRR4TF3ALJOJCD6TFZ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 05/12] dma: contiguous: Provide accessor to dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TFCB7Q7WI3KJLBQRR4TF3ALJOJCD6TFZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Consumers of the DMA contiguous API will have to know which region their
device allocates from in order for them to charge the memory allocation
in the right one.

Let's provide an accessor for that region.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-map-ops.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index a2c10ed186efb6e08f64df0954b4d389589b6e35..bfc928d3bac37f3eece93d152abd57da513a1cc8 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -4,10 +4,11 @@
  * It should not be included in drivers just using the DMA API.
  */
 #ifndef _LINUX_DMA_MAP_OPS_H
 #define _LINUX_DMA_MAP_OPS_H
 
+#include <linux/cma.h>
 #include <linux/dma-mapping.h>
 #include <linux/pgtable.h>
 #include <linux/slab.h>
 
 struct cma;
@@ -153,10 +154,30 @@ static inline void dma_free_contiguous(struct device *dev, struct page *page,
 {
 	__free_pages(page, get_order(size));
 }
 #endif /* CONFIG_DMA_CMA*/
 
+#if IS_ENABLED(CONFIG_DMA_CMA) && IS_ENABLED(CONFIG_CGROUP_DMEM)
+
+static inline struct dmem_cgroup_region *
+dma_contiguous_get_dmem_cgroup_region(struct device *dev)
+{
+	struct cma *cma = dev_get_cma_area(dev);
+
+	return cma_get_dmem_cgroup_region(cma);
+}
+
+#else /* IS_ENABLED(CONFIG_DMA_CMA) && IS_ENABLED(CONFIG_CGROUP_DMEM) */
+
+static inline struct dmem_cgroup_region *
+dma_contiguous_get_dmem_cgroup_region(struct device *dev)
+{
+	return NULL;
+}
+
+#endif /* IS_ENABLED(CONFIG_DMA_CMA) && IS_ENABLED(CONFIG_CGROUP_DMEM) */
+
 #ifdef CONFIG_DMA_DECLARE_COHERENT
 int dma_declare_coherent_memory(struct device *dev, phys_addr_t phys_addr,
 		dma_addr_t device_addr, size_t size);
 void dma_release_coherent_memory(struct device *dev);
 int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
