Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD776AFE945
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 14:45:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB7AF454D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 12:45:34 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id D036A44916
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 12:45:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sL1zhxns;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A2C243898;
	Wed,  9 Jul 2025 12:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4D9AC4CEF5;
	Wed,  9 Jul 2025 12:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752065107;
	bh=j+rGaVFrKh/wTsIEN6Y/GVKJC3e6Fd+LYTBCSBZnuHw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=sL1zhxnslztVR22EPFjnTP6BdUV5LwKMHzA3KxXOgOvl/b6YkoPfXPm8aysatlzru
	 NrY5V62cE/KFyEZBYQnKluajc/VbrV6xEfVN50Rr+THqg0a1rk+P3M+yiEMnrLJnXt
	 egMjis+tIKukv4U4z/7sDF9mQUteQGv2JvkLC66LiP8ggXOMMy3pY8vbkItOviitPC
	 Ge4SbRIx0xV886Gqcl7Dr0DshooNtOPMQij6rs1pWCWQkLISbJ9SDWpL23XRXsJufg
	 ie0FdGcuWkV6/JoCrlU1bo6BLlaG2KHTBSmEj2KaDLzCPV3y+Z3SxB0OcTEMqjrPnn
	 KQ8Gc/GBZgatQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 09 Jul 2025 14:44:51 +0200
MIME-Version: 1.0
Message-Id: <20250709-dma-buf-ecc-heap-v6-1-dac9bf80f35d@kernel.org>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
In-Reply-To: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2383; i=mripard@kernel.org;
 h=from:subject:message-id; bh=j+rGaVFrKh/wTsIEN6Y/GVKJC3e6Fd+LYTBCSBZnuHw=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBl5KT4HohnkJMt+6Nb9K714wOrC4+ebL4qcKzJMCZN74
 LfVMXVCx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZiI1zTGhgNi7EItlyQL2mL0
 7Lf8smE4lOX7Zur/3KVHN06+vqJ8Qez8gnvzXlqo1a9apzT/1Ju4uYz1wUmqAZsvSvFpcXVNVL+
 3wov5hs/EfbmNuwVuVjJ9+q4575hJFs+NYz9Wls1wcjwdknIQAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D036A44916
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: VJU2E3PZMYW3SBMHYFQM4CQVPVJH4GVW
X-Message-ID-Hash: VJU2E3PZMYW3SBMHYFQM4CQVPVJH4GVW
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 1/2] dma/contiguous: Add helper to test reserved memory type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VJU2E3PZMYW3SBMHYFQM4CQVPVJH4GVW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A given reserved-memory region can be of multiple types.

We have currently four types defined in the tree: contiguous, backed by
CMA, coherent and swiotlb, backed by their respective allocators, and a
platform-specific one for tegra.

However, some users, like dma-buf heaps, might be interested in the
exact type of a reserved memory region they are getting. It would thus
be useful to have helpers to test if a given region is of a given type.

Since we only care about CMA for now though, let's create one for CMA
only.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-map-ops.h | 13 +++++++++++++
 kernel/dma/contiguous.c     |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index f48e5fb88bd5dd346094bbf2ce1b79e5f5bfe1a6..ea646acb6367bd062619b337013db221749f85ab 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -153,10 +153,23 @@ static inline void dma_free_contiguous(struct device *dev, struct page *page,
 {
 	__free_pages(page, get_order(size));
 }
 #endif /* CONFIG_DMA_CMA*/
 
+#if defined(CONFIG_DMA_CMA) && defined(CONFIG_OF_RESERVED_MEM)
+struct reserved_mem;
+
+bool of_reserved_mem_is_contiguous(const struct reserved_mem *rmem);
+#else
+struct reserved_mem;
+
+static inline bool of_reserved_mem_is_contiguous(const struct reserved_mem *rmem)
+{
+	return false;
+}
+#endif
+
 #ifdef CONFIG_DMA_DECLARE_COHERENT
 int dma_declare_coherent_memory(struct device *dev, phys_addr_t phys_addr,
 		dma_addr_t device_addr, size_t size);
 void dma_release_coherent_memory(struct device *dev);
 int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 8df0dfaaca18eeb0a20145512ba64425d2e7601e..ace4982e928e404315cf38551e1596f7ed445156 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -493,6 +493,13 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
 		&rmem->base, (unsigned long)rmem->size / SZ_1M);
 
 	return 0;
 }
 RESERVEDMEM_OF_DECLARE(cma, "shared-dma-pool", rmem_cma_setup);
+
+bool of_reserved_mem_is_contiguous(const struct reserved_mem *rmem)
+{
+	return rmem->ops == &rmem_cma_ops;
+}
+EXPORT_SYMBOL_GPL(of_reserved_mem_is_contiguous);
+
 #endif

-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
