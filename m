Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F00A59378
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:06:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75B1343C89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:06:52 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 2053843C89
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=c80JmNrl;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A8CD1A45A9B;
	Mon, 10 Mar 2025 12:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 298F9C4CEE5;
	Mon, 10 Mar 2025 12:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608381;
	bh=puYqO1ssZSB45zTuCROfUk1S84tNyfEdp3lei2L6VhM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c80JmNrlsGJu+gfhNVupnj0VWlns+4/pVC3RM86KgB8KiTDIDjyOrmWfyN7yFImN8
	 D6sLjtXhwC8KZTSCgFwwOxxJ3hNFK/jbduYa9iB4I8Q1aOwbZS04rJqv3dxTRkO2BQ
	 dMT3I6EpHbyEVI0Fkp/ZotA5TSglVBTxOyiMnerpv4wvuscaQ8bxgw2WZiDIMI6KAB
	 bDvqXJZI26oybrcgKHJNt+Tgvn6Yy2rVurTL0ZzCKW+hPmFZX6lh6XWrbyj2UyBxWW
	 Q5TZ9vZ5QecLw/zLuCdRP1IiehVa/M0mFyHsQ0iWaoQkz+1O32/BHyZnOnVMuniHI8
	 Gvw70tpiJo1hw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:07 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-1-2984c1bc9312@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2737; i=mripard@kernel.org;
 h=from:subject:message-id; bh=puYqO1ssZSB45zTuCROfUk1S84tNyfEdp3lei2L6VhM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm6QcLoZ+FMqrfl2ctqrL9OmXf+s871rqqPODINHk
 U8ldk/k6ChlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBErN8x/Hd9+sB2ccFetYu7
 5+yPf/TV+aFc2Z/Zq+583HJu8v6FJzxmMzJsY3/16NtzE+Nb2dtWXe3Yb3b/v2PZ5QiZFqXqziO
 PK9/xAwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2053843C89
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
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
Message-ID-Hash: XF63C3W62R7F57HAVEP464NKE7IDIFXI
X-Message-ID-Hash: XF63C3W62R7F57HAVEP464NKE7IDIFXI
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 01/12] cma: Register dmem region for each cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XF63C3W62R7F57HAVEP464NKE7IDIFXI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now that the dmem cgroup has been merged, we need to create memory
regions for each allocator devices might allocate DMA memory from.

Since CMA is one of these allocators, we need to create such a region.
CMA can deal with multiple regions though, so we'll need to create a
dmem region per CMA region.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 mm/cma.c | 14 +++++++++++++-
 mm/cma.h |  3 +++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/mm/cma.c b/mm/cma.c
index de5bc0c81fc232bf82cd7ef22f6097059ab605e2..41a9ae907dcf69a73e963830d2c5f589dfc44f22 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -21,10 +21,11 @@
 #include <linux/mm.h>
 #include <linux/sizes.h>
 #include <linux/slab.h>
 #include <linux/log2.h>
 #include <linux/cma.h>
+#include <linux/cgroup_dmem.h>
 #include <linux/highmem.h>
 #include <linux/io.h>
 #include <linux/kmemleak.h>
 #include <trace/events/cma.h>
 
@@ -89,16 +90,25 @@ static void cma_clear_bitmap(struct cma *cma, unsigned long pfn,
 	spin_unlock_irqrestore(&cma->lock, flags);
 }
 
 static void __init cma_activate_area(struct cma *cma)
 {
+	struct dmem_cgroup_region *region;
 	unsigned long base_pfn = cma->base_pfn, pfn;
 	struct zone *zone;
 
+	region = dmem_cgroup_register_region(cma_get_size(cma), "cma/%s", cma->name);
+	if (IS_ERR(region))
+		goto out_error;
+
+#ifdef CONFIG_CGROUP_DMEM
+	cma->dmem_cgrp_region = region;
+#endif
+
 	cma->bitmap = bitmap_zalloc(cma_bitmap_maxno(cma), GFP_KERNEL);
 	if (!cma->bitmap)
-		goto out_error;
+		goto unreg_dmem;
 
 	/*
 	 * alloc_contig_range() requires the pfn range specified to be in the
 	 * same zone. Simplify by forcing the entire CMA resv range to be in the
 	 * same zone.
@@ -124,10 +134,12 @@ static void __init cma_activate_area(struct cma *cma)
 
 	return;
 
 not_in_zone:
 	bitmap_free(cma->bitmap);
+unreg_dmem:
+	dmem_cgroup_unregister_region(region);
 out_error:
 	/* Expose all pages to the buddy, they are useless for CMA. */
 	if (!cma->reserve_pages_on_error) {
 		for (pfn = base_pfn; pfn < base_pfn + cma->count; pfn++)
 			free_reserved_page(pfn_to_page(pfn));
diff --git a/mm/cma.h b/mm/cma.h
index 8485ef893e99d8da5ee41eb03194b5b00ff088ba..e05d3eb7c173f3fe75ad7808968925c77d190c80 100644
--- a/mm/cma.h
+++ b/mm/cma.h
@@ -29,10 +29,13 @@ struct cma {
 	atomic64_t nr_pages_failed;
 	/* the number of CMA page released */
 	atomic64_t nr_pages_released;
 	/* kobject requires dynamic object */
 	struct cma_kobject *cma_kobj;
+#endif
+#ifdef CONFIG_CGROUP_DMEM
+	struct dmem_cgroup_region *dmem_cgrp_region;
 #endif
 	bool reserve_pages_on_error;
 };
 
 extern struct cma cma_areas[MAX_CMA_AREAS];

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
