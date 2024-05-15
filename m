Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A28C681F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 16:00:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 041244489F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 14:00:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B14AD40074
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 13:58:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TwfJbMJr;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 55F65614CC;
	Wed, 15 May 2024 13:58:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3B1C2BD11;
	Wed, 15 May 2024 13:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715781487;
	bh=N5UwfZ1hKMI6+ZrGSh9smBi+SvvW9VpZtds2AMuGHos=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TwfJbMJr2eudO50gB4jtqCfWmhQ4amIjE1zaF6WRdIcpHwO5rxvJbZJuVPBjUSigc
	 8TO0sFjBMWieujTeWTcuXI80s/WdCooRLCshP+Q/b0ITdjgasFFSNbNxExZovj+gwM
	 MqxQyWjQ9L4GKUH5za52rqgOSxbjtXji1bS6WDBU09KLKF6xXnGxBua7W8KBwKwYTv
	 kTyJG45a37w38lAwA6FHp1phbWKUmqeti4YPxDNtGMpGRIPOYhZd/GFlbyoIEyxavY
	 r47jnKx51PjUmobjfH+JRFKkFOOn0ocJkOqbql9gO5OBozz9g9Hmqn6m9vT+dk6kVi
	 oqdf60asXfERQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 15 May 2024 15:57:03 +0200
MIME-Version: 1.0
Message-Id: <20240515-dma-buf-ecc-heap-v1-8-54cbbd049511@kernel.org>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2094; i=mripard@kernel.org;
 h=from:subject:message-id; bh=N5UwfZ1hKMI6+ZrGSh9smBi+SvvW9VpZtds2AMuGHos=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGku+wOVf9vPYLP0PMqdtrWoJ7LZR7Lp+cNXh60Z5vbwa
 D3c2HqlYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAExkbh5jnYYCo0VUtc+Dd+uE
 2daUX+142sf9ZzNr7g5joTNPPvPvWLjxoFSLysFas91tCT8vZjzoYaxmSWWJajqzSnUrN69XyMV
 0Lukrn8/LlLqZ6FROnnTgt2SU9adC6ZaXZtJ3NbLWr572kQ0A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B14AD40074
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
Message-ID-Hash: PY4YJQC356M3E2J2PK7X3Z2XFCXSWCON
X-Message-ID-Hash: PY4YJQC356M3E2J2PK7X3Z2XFCXSWCON
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 8/8] dma-buf: heaps: carveout: Handle ECC flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PY4YJQC356M3E2J2PK7X3Z2XFCXSWCON/>
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
 drivers/dma-buf/heaps/carveout_heap.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/dma-buf/heaps/carveout_heap.c b/drivers/dma-buf/heaps/carveout_heap.c
index 896ca67e6bd9..81b167785999 100644
--- a/drivers/dma-buf/heaps/carveout_heap.c
+++ b/drivers/dma-buf/heaps/carveout_heap.c
@@ -6,10 +6,11 @@
 #include <linux/of_reserved_mem.h>
 
 struct carveout_heap_priv {
 	struct dma_heap *heap;
 	struct gen_pool *pool;
+	bool ecc_enabled;
 };
 
 struct carveout_heap_buffer_priv {
 	struct mutex lock;
 	struct list_head attachments;
@@ -182,10 +183,16 @@ static struct dma_buf *carveout_heap_allocate(struct dma_heap *heap,
 	struct dma_buf *buf;
 	dma_addr_t daddr;
 	void *buffer;
 	int ret;
 
+	if (!heap_priv->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_PROTECTED))
+		return ERR_PTR(-EINVAL);
+
+	if (heap_priv->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_UNPROTECTED))
+		return ERR_PTR(-EINVAL);
+
 	buffer_priv = kzalloc(sizeof(*buffer_priv), GFP_KERNEL);
 	if (!buffer_priv)
 		return ERR_PTR(-ENOMEM);
 
 	INIT_LIST_HEAD(&buffer_priv->attachments);
@@ -235,20 +242,29 @@ static int __init carveout_heap_setup(struct device_node *node)
 	const struct reserved_mem *rmem;
 	struct carveout_heap_priv *priv;
 	struct dma_heap *heap;
 	struct gen_pool *pool;
 	void *base;
+	u32 val = 0;
 	int ret;
 
 	rmem = of_reserved_mem_lookup(node);
 	if (!rmem)
 		return -EINVAL;
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
+	of_property_read_u32(node, "ecc-correction-bits", &val);
+	if (val <= 0) {
+		if (of_memory_get_ecc_correction_bits() > 0)
+			priv->ecc_enabled = true;
+	} else {
+		priv->ecc_enabled = true;
+	}
+
 	pool = gen_pool_create(PAGE_SHIFT, NUMA_NO_NODE);
 	if (!pool) {
 		ret = -ENOMEM;
 		goto err_cleanup_heap;
 	}

-- 
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
