Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 129098C681A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 16:00:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25C0840072
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 14:00:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 4BCED44849
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 13:58:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YcvfAYs4;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ED372614A8;
	Wed, 15 May 2024 13:58:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A7AEC116B1;
	Wed, 15 May 2024 13:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715781483;
	bh=YUErc85/2hAb52W29W1xwDRHgxBJ9b98hEp6JztRUTU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YcvfAYs4MQ/iPuLlDRw7jerxbsdvqmH1YeUKSESyTVc25nYwLnn998MVTf8yNGoPt
	 CyPLk+6ErqwaAA51LtcDUbMLO6TFCHeN4Or/PCPvWSlwVVX2cTUoGxhQFra104sMzM
	 /7xjmWYePVTITzjvZL/qnMttRS1kPOKZ2kIFAYA1Gigux2Mb4B/du15eP2gq81Yl56
	 ZK3cXYmhs1Evg2FaP+ud6/SgQ3wtav4CxWHQ7NakmSB6rriIF3A37c1e7X3fPkenBG
	 6l85/xnA0Gyc4AqpRauj3YgokQ6ZvDilnyQaA5Gnd+gdBT2SMHIyr8G96gShdeoWmg
	 LCbVU0tNoLIWg==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 15 May 2024 15:57:02 +0200
MIME-Version: 1.0
Message-Id: <20240515-dma-buf-ecc-heap-v1-7-54cbbd049511@kernel.org>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1665; i=mripard@kernel.org;
 h=from:subject:message-id; bh=YUErc85/2hAb52W29W1xwDRHgxBJ9b98hEp6JztRUTU=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGku+wN1TUXfl925deTd7NccCpoPdkYUelmaHTfbsyOfP
 3CzlKhDx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZjIj8+MtaI9fU+M9Ka2bpzl
 /X6HxNXHXQWLmC+06wTFNtyf2hLyfKKRZZLul5cJzAmVcU/ZLbfvYGz4pXzj6bz5vcs7rdg8QoM
 NN0cLCe15IqKW25RYvCJyztwXz7J31R3Q/H5bwcduyeWo93YA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4BCED44849
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
Message-ID-Hash: TEWQQACV74PNFZJJM5JPG2Q7S4DEU32J
X-Message-ID-Hash: TEWQQACV74PNFZJJM5JPG2Q7S4DEU32J
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/8] dma-buf: heaps: cma: Handle ECC flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TEWQQACV74PNFZJJM5JPG2Q7S4DEU32J/>
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
 drivers/dma-buf/heaps/cma_heap.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 4a63567e93ba..1e6babbd8eb5 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -24,10 +24,11 @@
 
 
 struct cma_heap {
 	struct dma_heap *heap;
 	struct cma *cma;
+	bool ecc_enabled;
 };
 
 struct cma_heap_buffer {
 	struct cma_heap *heap;
 	struct list_head attachments;
@@ -286,10 +287,16 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 	struct page *cma_pages;
 	struct dma_buf *dmabuf;
 	int ret = -ENOMEM;
 	pgoff_t pg;
 
+	if (!cma_heap->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_PROTECTED))
+		return -EINVAL;
+
+	if (cma_heap->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_UNPROTECTED))
+		return -EINVAL;
+
 	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 	if (!buffer)
 		return ERR_PTR(-ENOMEM);
 
 	INIT_LIST_HEAD(&buffer->attachments);
@@ -374,10 +381,13 @@ static int __add_cma_heap(struct cma *cma, void *data)
 	cma_heap = kzalloc(sizeof(*cma_heap), GFP_KERNEL);
 	if (!cma_heap)
 		return -ENOMEM;
 	cma_heap->cma = cma;
 
+	if (of_memory_get_ecc_correction_bits() > 0)
+		cma_heap->ecc_enabled = true;
+
 	exp_info.name = cma_get_name(cma);
 	exp_info.ops = &cma_heap_ops;
 	exp_info.priv = cma_heap;
 
 	cma_heap->heap = dma_heap_add(&exp_info);

-- 
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
