Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AGlOEu0pmk7TAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 11:13:31 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C52A51EC7A7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 11:13:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAD6140149
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Mar 2026 10:13:30 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3BF333F962
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 10:13:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=o1cu0ZT4;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EF11460053;
	Tue,  3 Mar 2026 10:13:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EC49C2BCAF;
	Tue,  3 Mar 2026 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772532802;
	bh=OLrC2gz6cLkaWEzaVtzoFaeIC7TEtGhHt07Be27ESoM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=o1cu0ZT4hcrgCfksFQXo7DCXOAmNf2Tt9Lpoh6xYfc8a2tjyThaqi38HLj7O9YwT1
	 juij3uofr3x8zToKvc1OmsGKoFhwvBzunGjqMnUfn4gyeWQuGgs2TLCfQyOkfMLPpu
	 PHUu4BFeOoTgnd6wh9HtTYtgDT0npYK8fszA7P2BF+r1mHzuaKHSNGVo/qIHt8ylOy
	 qYmpLwr+9hslq6i+/KGvI6xibAFY9b8jSl1NOf+UyExyfSRklRYWP2H2mddaVRok+F
	 WvdUhGt9b7YxWWD9i8mT8VevxMijEpSZ6lju+f5f9oVg1fqCDdvXnYstZxoMPAfrDX
	 KAemO7cMvNPew==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 03 Mar 2026 11:13:05 +0100
MIME-Version: 1.0
Message-Id: <20260303-dma-buf-heaps-as-modules-v3-2-24344812c707@kernel.org>
References: <20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
In-Reply-To: <20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3660; i=mripard@kernel.org;
 h=from:subject:message-id; bh=OLrC2gz6cLkaWEzaVtzoFaeIC7TEtGhHt07Be27ESoM=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnLtpiclLx3kGf/5vRYa76ZT/++XXtwl4ClullX0jTzC
 zl9jnE8HVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAiZ6czNhzRX7oyU8B/peFN
 C5E76zj7fy11eThPiytk/8yn0ytlZF1V8865P/tgt/GgyAXtcIGrkxnrtDkPTDmzIy5g+b3PnTw
 5Tbutf/FGFWYbXrMrkJ1y+fakExrzq0TethjsTOKQnNxgI7YNAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: XZNJ7RKLZ7P5CW5G7SQUYHD5RR3WJPJO
X-Message-ID-Hash: XZNJ7RKLZ7P5CW5G7SQUYHD5RR3WJPJO
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/8] dma: contiguous: Make dev_get_cma_area() a proper function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XZNJ7RKLZ7P5CW5G7SQUYHD5RR3WJPJO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C52A51EC7A7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

As we try to enable dma-buf heaps, and the CMA one in particular, to
compile as modules, we need to export dev_get_cma_area(). It's currently
implemented as an inline function that returns either the content of
device->cma_area or dma_contiguous_default_area.

Thus, it means we need to export dma_contiguous_default_area, which
isn't really something we want any module to have access to.

Instead, let's make dev_get_cma_area() a proper function we will be able
to export so we can avoid exporting dma_contiguous_default_area.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-map-ops.h | 15 +++++++--------
 kernel/dma/contiguous.c     |  8 ++++++++
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index 3007c68a8ec5b85990d1938d04a2f05c1a71acdb..6b8e6a2a08e2cb380de764bd6cacb2cb24c22871 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -91,16 +91,11 @@ static inline void set_dma_ops(struct device *dev,
 #endif /* CONFIG_ARCH_HAS_DMA_OPS */
 
 #ifdef CONFIG_DMA_CMA
 extern struct cma *dma_contiguous_default_area;
 
-static inline struct cma *dev_get_cma_area(struct device *dev)
-{
-	if (dev && dev->cma_area)
-		return dev->cma_area;
-	return dma_contiguous_default_area;
-}
+struct cma *dev_get_cma_area(struct device *dev);
 
 void dma_contiguous_reserve(phys_addr_t addr_limit);
 int __init dma_contiguous_reserve_area(phys_addr_t size, phys_addr_t base,
 		phys_addr_t limit, struct cma **res_cma, bool fixed);
 
@@ -110,11 +105,10 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 				 int count);
 struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp);
 void dma_free_contiguous(struct device *dev, struct page *page, size_t size);
 
 void dma_contiguous_early_fixup(phys_addr_t base, unsigned long size);
-struct cma *dma_contiguous_get_reserved_region(unsigned int idx);
 #else /* CONFIG_DMA_CMA */
 static inline struct cma *dev_get_cma_area(struct device *dev)
 {
 	return NULL;
 }
@@ -149,15 +143,20 @@ static inline void dma_free_contiguous(struct device *dev, struct page *page,
 	__free_pages(page, get_order(size));
 }
 static inline void dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)
 {
 }
+#endif /* CONFIG_DMA_CMA*/
+
+#if defined(CONFIG_DMA_CMA) && defined(CONFIG_OF_RESERVED_MEM)
+struct cma *dma_contiguous_get_reserved_region(unsigned int idx);
+#else
 static inline struct cma *dma_contiguous_get_reserved_region(unsigned int idx)
 {
 	return NULL;
 }
-#endif /* CONFIG_DMA_CMA*/
+#endif
 
 #ifdef CONFIG_DMA_DECLARE_COHERENT
 int dma_declare_coherent_memory(struct device *dev, phys_addr_t phys_addr,
 		dma_addr_t device_addr, size_t size);
 void dma_release_coherent_memory(struct device *dev);
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 14bd54fb758537f01a6fe27318e7b683964e20b1..9a9ed7248fb823105609c5db5a51113e54a40192 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -99,10 +99,18 @@ early_param("cma", early_cma);
 bool __init cma_skip_dt_default_reserved_mem(void)
 {
 	return size_cmdline != -1;
 }
 
+struct cma *dev_get_cma_area(struct device *dev)
+{
+	if (dev && dev->cma_area)
+		return dev->cma_area;
+
+	return dma_contiguous_default_area;
+}
+
 #ifdef CONFIG_DMA_NUMA_CMA
 
 static struct cma *dma_contiguous_numa_area[MAX_NUMNODES];
 static phys_addr_t numa_cma_size[MAX_NUMNODES] __initdata;
 static struct cma *dma_contiguous_pernuma_area[MAX_NUMNODES];

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
