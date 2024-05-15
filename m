Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FD58C6816
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 15:59:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6FD540074
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:59:43 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 47E3E44845
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 13:58:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nIEWiQt3;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E21A6614D5;
	Wed, 15 May 2024 13:58:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40576C32786;
	Wed, 15 May 2024 13:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715781480;
	bh=5mlKKVq2eJW/2EfLe5DfEKj2I4ZhUMzP6qbNsK6waI0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nIEWiQt3XuLSsZQZbWwRK/SZdLBw0yS/Z0FGjHBgaacZPjdEhuvlesyZ8P2aS0pKQ
	 srv93C5wQVlqvWYipTMZJtZkgbHq/VwWSyr800bzc1x5redx59NQJdYgwBXAAOXVp3
	 bd/xYluu06uM4adros5GaK5yunJRLnzDWy3zsrWOlhAz4ooJ7GaW7Refb43pAaAke+
	 pD4dZONJjf5kqS7QGfLgjzNkk8J9bmYLNCnLz4HFQBSobuX9Ph5jn4qfMdiIkcX4Fa
	 sMtVnTiOpr2gkKTD8v9lNzqDJXZ5ixtZSVg6BTB/p1gmSmVvl0HWAyEOChq5jbIPfh
	 dJB3NWSekMMSg==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 15 May 2024 15:57:01 +0200
MIME-Version: 1.0
Message-Id: <20240515-dma-buf-ecc-heap-v1-6-54cbbd049511@kernel.org>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2333; i=mripard@kernel.org;
 h=from:subject:message-id; bh=5mlKKVq2eJW/2EfLe5DfEKj2I4ZhUMzP6qbNsK6waI0=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGku+wMqyhNdctYvMNP72vKxoNKqpU9Xykhq7o8rXG6Tn
 j5n3OvTMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACai9oKxviBz/06PH5mvm05b
 6tktPvglcFHO/COB24oK7X9dO274mbmNbaropF3il/T3vueOYvK4zlhnOz+6QcGIT+jg7wdWG/p
 ro9hjbR7cPlj0R+6uyrtsn7LCnum7/dcYenOmb/x/NPNHRxkA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 47E3E44845
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 6NDUAK2KOHMMHPJYXZQKHJ3JIRA7VIO5
X-Message-ID-Hash: 6NDUAK2KOHMMHPJYXZQKHJ3JIRA7VIO5
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/8] dma-buf: heaps: system: Handle ECC flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6NDUAK2KOHMMHPJYXZQKHJ3JIRA7VIO5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now that we have introduced ECC-related flags for the dma-heaps buffer
allocations, let's honour these flags depending on the memory setup.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/system_heap.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 8b5e6344eea4..dd7c8b6f9cf6 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -18,13 +18,15 @@
 #include <linux/mm.h>
 #include <linux/module.h>
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/of.h>
 
 struct system_heap {
 	struct dma_heap *heap;
+	bool ecc_enabled;
 };
 
 struct system_heap_buffer {
 	struct dma_heap *heap;
 	struct list_head attachments;
@@ -336,10 +338,11 @@ static struct page *alloc_largest_available(unsigned long size,
 static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 					    unsigned long len,
 					    unsigned long fd_flags,
 					    unsigned long heap_flags)
 {
+	struct system_heap *sys_heap = dma_heap_get_drvdata(heap);
 	struct system_heap_buffer *buffer;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 	unsigned long size_remaining = len;
 	unsigned int max_order = orders[0];
 	struct dma_buf *dmabuf;
@@ -347,10 +350,16 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	struct scatterlist *sg;
 	struct list_head pages;
 	struct page *page, *tmp_page;
 	int i, ret = -ENOMEM;
 
+	if (!sys_heap->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_PROTECTED))
+		return ERR_PTR(-EINVAL);
+
+	if (sys_heap->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_UNPROTECTED))
+		return ERR_PTR(-EINVAL);
+
 	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 	if (!buffer)
 		return ERR_PTR(-ENOMEM);
 
 	INIT_LIST_HEAD(&buffer->attachments);
@@ -430,10 +439,13 @@ static int system_heap_create(void)
 
 	sys_heap = kzalloc(sizeof(*sys_heap), GFP_KERNEL);
 	if (!sys_heap)
 		return -ENOMEM;
 
+	if (of_memory_get_ecc_correction_bits() > 0)
+		sys_heap->ecc_enabled = true;
+
 	exp_info.name = "system";
 	exp_info.ops = &system_heap_ops;
 	exp_info.priv = sys_heap;
 
 	sys_heap->heap = dma_heap_add(&exp_info);

-- 
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
