Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C3E965807
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 09:05:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2E6F41126
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 07:05:49 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id 323CE44602
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 07:04:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=j0VNUCu2;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.51 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a8682bb5e79so186791566b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 00:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725001483; x=1725606283; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tldNdGEbq2JT8UwGW+1a5h0B/fw6VCiuTMNVKqNaJKU=;
        b=j0VNUCu2gRkkFS1gYkitP1Sj0MaPQP75o/DXWXtyPqfz9lW8PpzxLIo/Oqip08/2wn
         l32ssT6JGmILr2ApN2FSbaqfybDrWGMjzqRB8KDBmL2UcqEAMB1C53RJFO2oICM9wfAr
         Ew2dviUbwjAgMffX5uhE4sT1uYENNfvh3SyYNZ0bFv+Xt0THO+joMEHhrKs2GYVvJWVk
         wekhysfF02Y5Sleq/XWFvTddmQZwlH5V3fR60gEx0/K2XBWBp7+8DqteYRZdHvJgJlQS
         7VVOXY9R6FOyqMHiD4ERFgA92Evr7pmDk8inHSs2Svs3Zbt/UsDNAszuBtWNBPlkYnEj
         BxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725001483; x=1725606283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tldNdGEbq2JT8UwGW+1a5h0B/fw6VCiuTMNVKqNaJKU=;
        b=Et42z8r9Axa9GYuvAlxBSLd5Z1dODL5Bf8AVkWRO850ctxhsE32A696Y5Fg+SS2l0J
         Q1uN/nxIvy8+u7gH61F9kR7nqJBYDI1QXsAnqtekFtS1nQHm//C4HZSFtoCnB20Zr0lt
         viOumeHUkOl/77OLb2rZ4UAevRUmOe3yAk1tFKhavm0yzSbAYQU5LB6H36zAGLbE1zA9
         Bx49MUOhae7jMrYDhXcJ/B8XC+IoDHk4Sk2n3VSeYWrFug07PhwYV+cIDODTM9HjiHiX
         znCpGkXpAqdej6JVW7D3D1bVNXI6IXk/Q8VKQH63MOgugb6nnVIObBIGNrwLlwWEN5V/
         qcyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUubhm+mIkUVXz2O1j0hwNfYHI4OGLeNMk7H3LIwWqocjCUNOvuLBzNl/H/FmCHwCq0sIQ62viuN7uLb0b4@lists.linaro.org
X-Gm-Message-State: AOJu0Yx1zbA+Emf1uglylF21qx62dEM1nSPJQa/wTTiRZElG2gwCXLCn
	YuCCft48G/WjdL88gx/8+Rzp8vaYLPZkaptBH3iv9FgvAFlFALC8CEz9H5F9UUDkWw==
X-Google-Smtp-Source: AGHT+IEjl8tdNQ8jnRsKsySyLyIRKzAgwSRLlK6Mh9bwxDbOAC7WmuH6DFlPs4IQfyp+DQUGhLPnww==
X-Received: by 2002:a17:907:2d25:b0:a86:80a8:cee7 with SMTP id a640c23a62f3a-a897f836ce9mr393312366b.27.1725001482962;
        Fri, 30 Aug 2024 00:04:42 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89892232c7sm178026866b.222.2024.08.30.00.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:04:42 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Date: Fri, 30 Aug 2024 09:03:51 +0200
Message-Id: <20240830070351.2855919-5-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240830070351.2855919-1-jens.wiklander@linaro.org>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Bar: -----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 323CE44602
X-Spamd-Result: default: False [-5.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.51:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: BGBWALYJKSFBD4K5G3NUXQUHN5NWH6Q4
X-Message-ID-Hash: BGBWALYJKSFBD4K5G3NUXQUHN5NWH6Q4
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BGBWALYJKSFBD4K5G3NUXQUHN5NWH6Q4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add a Linaro restricted heap using the linaro,restricted-heap bindings
implemented based on the generic restricted heap.

The bindings defines a range of physical restricted memory. The heap
manages this address range using genalloc. The allocated dma-buf file
descriptor can later be registered with the TEE subsystem for later use
via Trusted Applications in the secure world.

Co-developed-by: Olivier Masse <olivier.masse@nxp.com>
Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/dma-buf/heaps/Kconfig                 |  10 ++
 drivers/dma-buf/heaps/Makefile                |   1 +
 .../dma-buf/heaps/restricted_heap_linaro.c    | 165 ++++++++++++++++++
 3 files changed, 176 insertions(+)
 create mode 100644 drivers/dma-buf/heaps/restricted_heap_linaro.c

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index 58903bc62ac8..82e2c5d09242 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -28,3 +28,13 @@ config DMABUF_HEAPS_RESTRICTED_MTK
 	help
 	  Enable restricted dma-buf heaps for MediaTek platform. This heap is backed by
 	  TEE client interfaces. If in doubt, say N.
+
+config DMABUF_HEAPS_RESTRICTED_LINARO
+	bool "Linaro DMA-BUF Restricted Heap"
+	depends on DMABUF_HEAPS_RESTRICTED
+	help
+	  Choose this option to enable the Linaro restricted dma-buf heap.
+	  The restricted heap pools are defined according to the DT. Heaps
+	  are allocated in the pools using gen allocater.
+	  If in doubt, say N.
+
diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
index 0028aa9d875f..66b2f67c47b5 100644
--- a/drivers/dma-buf/heaps/Makefile
+++ b/drivers/dma-buf/heaps/Makefile
@@ -2,4 +2,5 @@
 obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED)	+= restricted_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED_MTK)	+= restricted_heap_mtk.o
+obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED_LINARO)	+= restricted_heap_linaro.o
 obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
diff --git a/drivers/dma-buf/heaps/restricted_heap_linaro.c b/drivers/dma-buf/heaps/restricted_heap_linaro.c
new file mode 100644
index 000000000000..4b08ed514023
--- /dev/null
+++ b/drivers/dma-buf/heaps/restricted_heap_linaro.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * DMABUF secure heap exporter
+ *
+ * Copyright 2021 NXP.
+ * Copyright 2024 Linaro Limited.
+ */
+
+#define pr_fmt(fmt)     "rheap_linaro: " fmt
+
+#include <linux/dma-buf.h>
+#include <linux/err.h>
+#include <linux/genalloc.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_fdt.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/scatterlist.h>
+#include <linux/slab.h>
+
+#include "restricted_heap.h"
+
+#define MAX_HEAP_COUNT	2
+#define HEAP_NAME_LEN	32
+
+struct resmem_restricted {
+	phys_addr_t base;
+	phys_addr_t size;
+
+	char name[HEAP_NAME_LEN];
+
+	bool no_map;
+};
+
+static struct resmem_restricted restricted_data[MAX_HEAP_COUNT] = {0};
+static unsigned int restricted_data_count;
+
+static int linaro_restricted_memory_allocate(struct restricted_heap *heap,
+					     struct restricted_buffer *buf)
+{
+	struct gen_pool *pool = heap->priv_data;
+	unsigned long pa;
+	int ret;
+
+	buf->size = ALIGN(buf->size, PAGE_SIZE);
+	pa = gen_pool_alloc(pool, buf->size);
+	if (!pa)
+		return -ENOMEM;
+
+	ret = sg_alloc_table(&buf->sg_table, 1, GFP_KERNEL);
+	if (ret) {
+		gen_pool_free(pool, pa, buf->size);
+		return ret;
+	}
+
+	sg_set_page(buf->sg_table.sgl, phys_to_page(pa), buf->size, 0);
+
+	return 0;
+}
+
+static void linaro_restricted_memory_free(struct restricted_heap *heap,
+					  struct restricted_buffer *buf)
+{
+	struct gen_pool *pool = heap->priv_data;
+	struct scatterlist *sg;
+	unsigned int i;
+
+	for_each_sg(buf->sg_table.sgl, sg, buf->sg_table.nents, i)
+		gen_pool_free(pool, page_to_phys(sg_page(sg)), sg->length);
+	sg_free_table(&buf->sg_table);
+}
+
+static const struct restricted_heap_ops linaro_restricted_heap_ops = {
+	.alloc = linaro_restricted_memory_allocate,
+	.free = linaro_restricted_memory_free,
+};
+
+static int add_heap(struct resmem_restricted *mem)
+{
+	struct restricted_heap *heap;
+	struct gen_pool *pool;
+	int ret;
+
+	if (mem->base == 0 || mem->size == 0) {
+		pr_err("restricted_data base or size is not correct\n");
+		return -EINVAL;
+	}
+
+	heap = kzalloc(sizeof(*heap), GFP_KERNEL);
+	if (!heap)
+		return -ENOMEM;
+
+	pool = gen_pool_create(PAGE_SHIFT, -1);
+	if (!pool) {
+		ret = -ENOMEM;
+		goto err_free_heap;
+	}
+
+	ret = gen_pool_add(pool, mem->base, mem->size, -1);
+	if (ret)
+		goto err_free_pool;
+
+	heap->no_map = mem->no_map;
+	heap->priv_data = pool;
+	heap->name = mem->name;
+	heap->ops = &linaro_restricted_heap_ops;
+
+	ret = restricted_heap_add(heap);
+	if (ret)
+		goto err_free_pool;
+
+	return 0;
+
+err_free_pool:
+	gen_pool_destroy(pool);
+err_free_heap:
+	kfree(heap);
+
+	return ret;
+}
+
+static int __init rmem_restricted_heap_setup(struct reserved_mem *rmem)
+{
+	size_t len = HEAP_NAME_LEN;
+	const char *s;
+	bool no_map;
+
+	if (WARN_ONCE(restricted_data_count >= MAX_HEAP_COUNT,
+		      "Cannot handle more than %u restricted heaps\n",
+		      MAX_HEAP_COUNT))
+		return -EINVAL;
+
+	no_map = of_get_flat_dt_prop(rmem->fdt_node, "no-map", NULL);
+	s = strchr(rmem->name, '@');
+	if (s)
+		len = umin(s - rmem->name + 1, len);
+
+	restricted_data[restricted_data_count].base = rmem->base;
+	restricted_data[restricted_data_count].size = rmem->size;
+	restricted_data[restricted_data_count].no_map = no_map;
+	strscpy(restricted_data[restricted_data_count].name, rmem->name, len);
+
+	restricted_data_count++;
+	return 0;
+}
+
+RESERVEDMEM_OF_DECLARE(linaro_restricted_heap, "linaro,restricted-heap",
+		       rmem_restricted_heap_setup);
+
+static int linaro_restricted_heap_init(void)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < restricted_data_count; i++) {
+		ret = add_heap(&restricted_data[i]);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+module_init(linaro_restricted_heap_init);
+MODULE_DESCRIPTION("Linaro Restricted Heap Driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
