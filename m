Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I4PC/cM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:23:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8D4411A96
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:23:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D733840F82
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:23:17 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 2F2154014A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 16:10:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=AhuSUxYL;
	spf=pass (lists.linaro.org: domain of thierry.reding@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=thierry.reding@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D55B560053;
	Thu, 22 Jan 2026 16:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E164C116D0;
	Thu, 22 Jan 2026 16:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769098227;
	bh=fhA28hJZqYEclyp962dN2t0k/AxOFjqwGOPpNmxvUEg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AhuSUxYLxMSW84QPBYOMn3SJRy0TuFZtjd+ApdXuljJHOQSPJXsQ7DDvOIkaJ0lsl
	 aSI7Jj++2YY5LaWyVzKSmorh67tWa/aOiEjorYPDyEG9V2I1qhYSBGhBEBvUha0ZtK
	 oZwqFOyx7/bCzn6ADIGsOFoYL3ImRO5Ljam2xa//KGV6AiteTvkSlpua0JMRBu4/MQ
	 gkgW8j/bBbyi3WfpgXf//K+mPPivs/SZq1u4uQxSNbcQ/7dvFDe7dLk93E4o4tF8G/
	 xN9fdwiwH6RCOlMd1+2fwArhpWf5cdZCIQajFMHr0oq2RBmPCx2/TripIEhf6iyUXe
	 MacLQdvdX1Z+w==
From: Thierry Reding <thierry.reding@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 22 Jan 2026 17:10:03 +0100
Message-ID: <20260122161009.3865888-5-thierry.reding@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260122161009.3865888-1-thierry.reding@kernel.org>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3T34AK42H2OG2GZ5EO7I4LFLPJEBOX3Z
X-Message-ID-Hash: 3T34AK42H2OG2GZ5EO7I4LFLPJEBOX3Z
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:24 +0000
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3T34AK42H2OG2GZ5EO7I4LFLPJEBOX3Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[2016];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.474];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CD8D4411A96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Thierry Reding <treding@nvidia.com>

There is no technical reason why there should be a limited number of CMA
regions, so extract some code into helpers and use them to create extra
functions (cma_create() and cma_free()) that allow creating and freeing,
respectively, CMA regions dynamically at runtime.

The static array of CMA areas cannot be replaced by dynamically created
areas because for many of them, allocation must not fail and some cases
may need to initialize them before the slab allocator is even available.
To account for this, keep these "early" areas in a separate list and
track the dynamic areas in a separate list.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- rename fixed number of CMA areas to reflect their main use
- account for pages in dynamically allocated regions
---
 arch/arm/mm/dma-mapping.c        |   2 +-
 arch/s390/mm/init.c              |   2 +-
 drivers/dma-buf/heaps/cma_heap.c |   2 +-
 include/linux/cma.h              |   7 +-
 mm/cma.c                         | 187 +++++++++++++++++++++++++------
 mm/cma.h                         |   5 +-
 6 files changed, 164 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index a4c765d24692..88768dbd9cd6 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -254,7 +254,7 @@ struct dma_contig_early_reserve {
 	unsigned long size;
 };
 
-static struct dma_contig_early_reserve dma_mmu_remap[MAX_CMA_AREAS] __initdata;
+static struct dma_contig_early_reserve dma_mmu_remap[MAX_EARLY_CMA_AREAS] __initdata;
 
 static int dma_mmu_remap_num __initdata;
 
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index 3c20475cbee2..de420ebdfd23 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -241,7 +241,7 @@ static int s390_cma_mem_notifier(struct notifier_block *nb,
 	mem_data.start = arg->start_pfn << PAGE_SHIFT;
 	mem_data.end = mem_data.start + (arg->nr_pages << PAGE_SHIFT);
 	if (action == MEM_GOING_OFFLINE)
-		rc = cma_for_each_area(s390_cma_check_range, &mem_data);
+		rc = cma_for_each_early_area(s390_cma_check_range, &mem_data);
 	return notifier_from_errno(rc);
 }
 
diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 49cc45fb42dd..4c20e11dd286 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -30,7 +30,7 @@
 
 #define DEFAULT_CMA_NAME "default_cma_region"
 
-static struct cma *dma_areas[MAX_CMA_AREAS] __initdata;
+static struct cma *dma_areas[MAX_EARLY_CMA_AREAS] __initdata;
 static unsigned int dma_areas_num __initdata;
 
 int __init dma_heap_cma_register_heap(struct cma *cma)
diff --git a/include/linux/cma.h b/include/linux/cma.h
index e2a690f7e77e..763c9ad0c556 100644
--- a/include/linux/cma.h
+++ b/include/linux/cma.h
@@ -7,7 +7,7 @@
 #include <linux/numa.h>
 
 #ifdef CONFIG_CMA_AREAS
-#define MAX_CMA_AREAS	CONFIG_CMA_AREAS
+#define MAX_EARLY_CMA_AREAS	CONFIG_CMA_AREAS
 #endif
 
 #define CMA_MAX_NAME 64
@@ -57,9 +57,14 @@ struct page *cma_alloc_frozen_compound(struct cma *cma, unsigned int order);
 bool cma_release_frozen(struct cma *cma, const struct page *pages,
 		unsigned long count);
 
+extern int cma_for_each_early_area(int (*it)(struct cma *cma, void *data), void *data);
 extern int cma_for_each_area(int (*it)(struct cma *cma, void *data), void *data);
 extern bool cma_intersects(struct cma *cma, unsigned long start, unsigned long end);
 
 extern void cma_reserve_pages_on_error(struct cma *cma);
 
+struct cma *cma_create(phys_addr_t base, phys_addr_t size,
+		       unsigned int order_per_bit, const char *name);
+void cma_free(struct cma *cma);
+
 #endif
diff --git a/mm/cma.c b/mm/cma.c
index b80b60ed4927..da32eb565f24 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -33,7 +33,12 @@
 #include "internal.h"
 #include "cma.h"
 
-struct cma cma_areas[MAX_CMA_AREAS];
+static DEFINE_MUTEX(cma_lock);
+
+struct cma cma_early_areas[MAX_EARLY_CMA_AREAS];
+unsigned int cma_early_area_count;
+
+static LIST_HEAD(cma_areas);
 unsigned int cma_area_count;
 
 phys_addr_t cma_get_base(const struct cma *cma)
@@ -193,7 +198,6 @@ static void __init cma_activate_area(struct cma *cma)
 				free_reserved_page(pfn_to_page(pfn));
 		}
 	}
-	totalcma_pages -= cma->count;
 	cma->available_count = cma->count = 0;
 	pr_err("CMA area %s could not be activated\n", cma->name);
 }
@@ -202,8 +206,8 @@ static int __init cma_init_reserved_areas(void)
 {
 	int i;
 
-	for (i = 0; i < cma_area_count; i++)
-		cma_activate_area(&cma_areas[i]);
+	for (i = 0; i < cma_early_area_count; i++)
+		cma_activate_area(&cma_early_areas[i]);
 
 	return 0;
 }
@@ -214,41 +218,77 @@ void __init cma_reserve_pages_on_error(struct cma *cma)
 	set_bit(CMA_RESERVE_PAGES_ON_ERROR, &cma->flags);
 }
 
+static void __init cma_init_area(struct cma *cma, const char *name,
+				 phys_addr_t size, unsigned int order_per_bit)
+{
+	if (name)
+		snprintf(cma->name, CMA_MAX_NAME, "%s", name);
+	else
+		snprintf(cma->name, CMA_MAX_NAME,  "cma%d\n", cma_area_count);
+
+	cma->available_count = cma->count = size >> PAGE_SHIFT;
+	cma->order_per_bit = order_per_bit;
+
+	INIT_LIST_HEAD(&cma->node);
+}
+
 static int __init cma_new_area(const char *name, phys_addr_t size,
 			       unsigned int order_per_bit,
 			       struct cma **res_cma)
 {
 	struct cma *cma;
 
-	if (cma_area_count == ARRAY_SIZE(cma_areas)) {
+	if (cma_early_area_count == ARRAY_SIZE(cma_early_areas)) {
 		pr_err("Not enough slots for CMA reserved regions!\n");
 		return -ENOSPC;
 	}
 
+	mutex_lock(&cma_lock);
+
 	/*
 	 * Each reserved area must be initialised later, when more kernel
 	 * subsystems (like slab allocator) are available.
 	 */
-	cma = &cma_areas[cma_area_count];
-	cma_area_count++;
+	cma = &cma_early_areas[cma_early_area_count];
+	cma_early_area_count++;
 
-	if (name)
-		snprintf(cma->name, CMA_MAX_NAME, "%s", name);
-	else
-		snprintf(cma->name, CMA_MAX_NAME,  "cma%d\n", cma_area_count);
+	cma_init_area(cma, name, size, order_per_bit);
 
-	cma->available_count = cma->count = size >> PAGE_SHIFT;
-	cma->order_per_bit = order_per_bit;
-	*res_cma = cma;
 	totalcma_pages += cma->count;
+	*res_cma = cma;
+
+	mutex_unlock(&cma_lock);
 
 	return 0;
 }
 
 static void __init cma_drop_area(struct cma *cma)
 {
+	mutex_lock(&cma_lock);
 	totalcma_pages -= cma->count;
-	cma_area_count--;
+	cma_early_area_count--;
+	mutex_unlock(&cma_lock);
+}
+
+static int __init cma_check_memory(phys_addr_t base, phys_addr_t size)
+{
+	if (!size || !memblock_is_region_reserved(base, size))
+		return -EINVAL;
+
+	/*
+	 * CMA uses CMA_MIN_ALIGNMENT_BYTES as alignment requirement which
+	 * needs pageblock_order to be initialized. Let's enforce it.
+	 */
+	if (!pageblock_order) {
+		pr_err("pageblock_order not yet initialized. Called during early boot?\n");
+		return -EINVAL;
+	}
+
+	/* ensure minimal alignment required by mm core */
+	if (!IS_ALIGNED(base | size, CMA_MIN_ALIGNMENT_BYTES))
+		return -EINVAL;
+
+	return 0;
 }
 
 /**
@@ -271,22 +311,9 @@ int __init cma_init_reserved_mem(phys_addr_t base, phys_addr_t size,
 	struct cma *cma;
 	int ret;
 
-	/* Sanity checks */
-	if (!size || !memblock_is_region_reserved(base, size))
-		return -EINVAL;
-
-	/*
-	 * CMA uses CMA_MIN_ALIGNMENT_BYTES as alignment requirement which
-	 * needs pageblock_order to be initialized. Let's enforce it.
-	 */
-	if (!pageblock_order) {
-		pr_err("pageblock_order not yet initialized. Called during early boot?\n");
-		return -EINVAL;
-	}
-
-	/* ensure minimal alignment required by mm core */
-	if (!IS_ALIGNED(base | size, CMA_MIN_ALIGNMENT_BYTES))
-		return -EINVAL;
+	ret = cma_check_memory(base, size);
+	if (ret < 0)
+		return ret;
 
 	ret = cma_new_area(name, size, order_per_bit, &cma);
 	if (ret != 0)
@@ -439,7 +466,7 @@ static int __init __cma_declare_contiguous_nid(phys_addr_t *basep,
 	pr_debug("%s(size %pa, base %pa, limit %pa alignment %pa)\n",
 		__func__, &size, &base, &limit, &alignment);
 
-	if (cma_area_count == ARRAY_SIZE(cma_areas)) {
+	if (cma_early_area_count == ARRAY_SIZE(cma_early_areas)) {
 		pr_err("Not enough slots for CMA reserved regions!\n");
 		return -ENOSPC;
 	}
@@ -1041,12 +1068,12 @@ bool cma_release_frozen(struct cma *cma, const struct page *pages,
 	return true;
 }
 
-int cma_for_each_area(int (*it)(struct cma *cma, void *data), void *data)
+int cma_for_each_early_area(int (*it)(struct cma *cma, void *data), void *data)
 {
 	int i;
 
-	for (i = 0; i < cma_area_count; i++) {
-		int ret = it(&cma_areas[i], data);
+	for (i = 0; i < cma_early_area_count; i++) {
+		int ret = it(&cma_early_areas[i], data);
 
 		if (ret)
 			return ret;
@@ -1055,6 +1082,25 @@ int cma_for_each_area(int (*it)(struct cma *cma, void *data), void *data)
 	return 0;
 }
 
+int cma_for_each_area(int (*it)(struct cma *cma, void *data), void *data)
+{
+	struct cma *cma;
+
+	mutex_lock(&cma_lock);
+
+	list_for_each_entry(cma, &cma_areas, node) {
+		int ret = it(cma, data);
+
+		if (ret) {
+			mutex_unlock(&cma_lock);
+			return ret;
+		}
+	}
+
+	mutex_unlock(&cma_lock);
+	return 0;
+}
+
 bool cma_intersects(struct cma *cma, unsigned long start, unsigned long end)
 {
 	int r;
@@ -1137,3 +1183,74 @@ void __init *cma_reserve_early(struct cma *cma, unsigned long size)
 
 	return ret;
 }
+
+struct cma *__init cma_create(phys_addr_t base, phys_addr_t size,
+			      unsigned int order_per_bit, const char *name)
+{
+	struct cma *cma;
+	int ret;
+
+	ret = cma_check_memory(base, size);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
+	cma = kzalloc(sizeof(*cma), GFP_KERNEL);
+	if (!cma)
+		return ERR_PTR(-ENOMEM);
+
+	cma_init_area(cma, name, size, order_per_bit);
+	cma->ranges[0].base_pfn = PFN_DOWN(base);
+	cma->ranges[0].early_pfn = PFN_DOWN(base);
+	cma->ranges[0].count = cma->count;
+	cma->nranges = 1;
+
+	cma_activate_area(cma);
+
+	mutex_lock(&cma_lock);
+	list_add_tail(&cma->node, &cma_areas);
+	totalcma_pages += cma->count;
+	cma_area_count++;
+	mutex_unlock(&cma_lock);
+
+	return cma;
+}
+
+void cma_free(struct cma *cma)
+{
+	unsigned int i;
+
+	/*
+	 * Safety check to prevent a CMA with active allocations from being
+	 * released.
+	 */
+	for (i = 0; i < cma->nranges; i++) {
+		unsigned long nbits = cma_bitmap_maxno(cma, &cma->ranges[i]);
+
+		if (!bitmap_empty(cma->ranges[i].bitmap, nbits)) {
+			WARN(1, "%s: range %u not empty\n", cma->name, i);
+			return;
+		}
+	}
+
+	/* free reserved pages and the bitmap */
+	for (i = 0; i < cma->nranges; i++) {
+		struct cma_memrange *cmr = &cma->ranges[i];
+		unsigned long end_pfn, pfn;
+
+		end_pfn = cmr->base_pfn + cmr->count;
+		for (pfn = cmr->base_pfn; pfn < end_pfn; pfn++)
+			free_reserved_page(pfn_to_page(pfn));
+
+		bitmap_free(cmr->bitmap);
+	}
+
+	mutex_destroy(&cma->alloc_mutex);
+
+	mutex_lock(&cma_lock);
+	totalcma_pages -= cma->count;
+	list_del(&cma->node);
+	cma_area_count--;
+	mutex_unlock(&cma_lock);
+
+	kfree(cma);
+}
diff --git a/mm/cma.h b/mm/cma.h
index c70180c36559..ae4db9819e38 100644
--- a/mm/cma.h
+++ b/mm/cma.h
@@ -41,6 +41,7 @@ struct cma {
 	unsigned long	available_count;
 	unsigned int order_per_bit; /* Order of pages represented by one bit */
 	spinlock_t	lock;
+	struct list_head node;
 	struct mutex alloc_mutex;
 #ifdef CONFIG_CMA_DEBUGFS
 	struct hlist_head mem_head;
@@ -71,8 +72,8 @@ enum cma_flags {
 	CMA_ACTIVATED,
 };
 
-extern struct cma cma_areas[MAX_CMA_AREAS];
-extern unsigned int cma_area_count;
+extern struct cma cma_early_areas[MAX_EARLY_CMA_AREAS];
+extern unsigned int cma_early_area_count;
 
 static inline unsigned long cma_bitmap_maxno(struct cma *cma,
 		struct cma_memrange *cmr)
-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
