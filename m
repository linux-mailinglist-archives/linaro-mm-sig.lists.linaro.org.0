Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDY4M2qby2lBJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:01:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAEF367829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:01:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 466B6402FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 10:01:13 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id AACB240303
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 10:00:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Up1CxMKO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 213C24099A;
	Tue, 31 Mar 2026 10:00:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6FDDC19423;
	Tue, 31 Mar 2026 10:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774951242;
	bh=XD1ohQhO9zZA1+h5cJdCf8noqsv9utcIYdzdurGWIrY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Up1CxMKOAyN1rLwyQza8/sAk+vuTStw21qVWIaeT0nv7/i2FS4hW1rDu2o22IyXEN
	 KKa5Vg1LLUbpLbvjhb8zh9awLQxhplAE1M+xTJ8L4nCdl3cjQ2uhrO36q6X6Buto1Y
	 tfUcsp3l4j89be0q9tm1gQnuH5PromlrCiPR4/nrg67weWLfiN0M+uaYpQNacjCkh+
	 g+G29chbogcDCTSGyLBYn2A0b5DGmhrxkNzYIfWxzmKDL0c96m5+Ia5YlCSC/kw39e
	 C+SDDZTbdOUeTGc95q0Rbc2mPncZYH6jGbvfdwKsAke6Qi0IxqrllwEc+J1jHuMPBs
	 vpQqXEfrI7rgw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Mar 2026 12:00:16 +0200
MIME-Version: 1.0
Message-Id: <20260331-dma-buf-heaps-as-modules-v4-7-e18fda504419@kernel.org>
References: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
In-Reply-To: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1869; i=mripard@kernel.org;
 h=from:subject:message-id; bh=XD1ohQhO9zZA1+h5cJdCf8noqsv9utcIYdzdurGWIrY=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmnZxt2/QrhDmEWnJyuEZ53bFn8sXkc/fdfaT1zvGv9R
 LA4sj+hYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAExkoTZjw5nbW9wPGX2XvzCp
 NnIfb9ta1a19Tar+HziFhd6HPjo/df3qyE3LS7byVlas//HX8DaHKmN9uOtdhR0Ge1ts2rp1L+r
 Psrpy+l3A5P2zWGvPxGWffLW7YLeUjuTjde96utSmCZ7/spcJAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: R7U7N3HZP66Q4OAKVI5ZKHBZPBSFGQZA
X-Message-ID-Hash: R7U7N3HZP66Q4OAKVI5ZKHBZPBSFGQZA
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 7/8] dma-buf: heaps: cma: Turn the heap into a module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R7U7N3HZP66Q4OAKVI5ZKHBZPBSFGQZA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
	NEURAL_HAM(-0.00)[-0.702];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 5AAEF367829
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that all the symbols used by the CMA heap are exported, turning the
CMA heap into a module becomes pretty easy: we just need to add the
usual MODULE_* macros, import the proper namespaces and change the
Kconfig symbol to a tristate.

This heap won't be able to unload though, since we're missing a lot of
infrastructure to make it safe.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/Kconfig    | 2 +-
 drivers/dma-buf/heaps/cma_heap.c | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index a5eef06c422644e8aadaf5aff2bd9a33c49c1ba3..aed0b9b4febf388376cfc41be9843980d010c4e8 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -4,11 +4,11 @@ config DMABUF_HEAPS_SYSTEM
 	help
 	  Choose this option to enable the system dmabuf heap. The system heap
 	  is backed by pages from the buddy allocator. If in doubt, say Y.
 
 config DMABUF_HEAPS_CMA
-	bool "DMA-BUF CMA Heap"
+	tristate "DMA-BUF CMA Heap"
 	depends on DMABUF_HEAPS && DMA_CMA
 	help
 	  Choose this option to enable dma-buf CMA heap. This heap is backed
 	  by the Contiguous Memory Allocator (CMA). If your system has these
 	  regions, you should say Y here.
diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 33cac626da1198e3c4a1cdcd562223c1924b6ceb..0ed519a19da455df7441396c96934a107fd72ffb 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -421,5 +421,8 @@ static int __init add_cma_heaps(void)
 
 	return 0;
 }
 module_init(add_cma_heaps);
 MODULE_DESCRIPTION("DMA-BUF CMA Heap");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("DMA_BUF");
+MODULE_IMPORT_NS("DMA_BUF_HEAP");

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
