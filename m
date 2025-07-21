Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BD4B0C297
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 13:18:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B671945984
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 11:18:22 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id ED585459B3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 11:17:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M5c43dVK;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 593646112C;
	Mon, 21 Jul 2025 11:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80451C4CEF4;
	Mon, 21 Jul 2025 11:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096666;
	bh=R7s2QbS4Azf34q7ntE4fERc43u45qADiAo0EY/vnlUc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=M5c43dVKRdS8yfXBHGPXTHwZQdKOKbCFNZAm8Z1ZiQQWHUHcJOyxs3hDAi5nsNuzD
	 4pujLp02qa77Lh/iVo05aA1Vu1GKyEtzrh95kRaKCIe6EAcwwaq/3dg3a51sBoaY3C
	 c9bLlqJ7ILNUpDzrI76xRnmXcWNOgKbwvS1KJTEVWJsdnS6e1ZJA628ust75UyxNDh
	 FYnu1ASU1HGhnlVNhR+MRNaHxrC0bkFzeQKw3b6XPqcBxrS3NwYC2RqZk795s3A10d
	 LUMAoYIj4a1fz36DOny0jMIymAHBUeFANuTR2jLPzRFAiwn/niBCtx2E4ewVtKu4Pb
	 FCEFCt80FewQQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 21 Jul 2025 13:17:31 +0200
MIME-Version: 1.0
Message-Id: <20250721-dma-buf-ecc-heap-v7-2-031836e1a942@kernel.org>
References: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
In-Reply-To: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Jonathan Corbet <corbet@lwn.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3200; i=mripard@kernel.org;
 h=from:subject:message-id; bh=R7s2QbS4Azf34q7ntE4fERc43u45qADiAo0EY/vnlUc=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBl1iueFmubE8sh4cE/n37Og4euG4K4e28ZYp+65v194C
 m6zEJ3cMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACbSuJmxPq0019SlcuZa3cK4
 VTzV+wK9zkf9OJWVNF/ty6yKjHk5HIzFz0zys/957zu3WO+hWw0bY8PkENvmvtg/TlxMfVU817w
 i+h3TDm3v9d3juIDfj/vSDZFz/P9/b7y+vmrvxbvnjVtnswIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ED585459B3
X-Spamd-Bar: ----
Message-ID-Hash: VJLT4DW7EIAL7PA2BUGZVE4KF3EGOZME
X-Message-ID-Hash: VJLT4DW7EIAL7PA2BUGZVE4KF3EGOZME
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 2/5] dma-buf: heaps: cma: Register list of CMA regions at boot
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VJLT4DW7EIAL7PA2BUGZVE4KF3EGOZME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to create a CMA heap instance for each CMA region found in the
system, we need to register each of these instances.

While it would appear trivial, the CMA regions are created super early
in the kernel boot process, before most of the subsystems are
initialized. Thus, we can't just create an exported function to create a
heap from the CMA region being initialized.

What we can do however is create a two-step process, where we collect
all the CMA regions into an array early on, and then when we initialize
the heaps we iterate over that array and create the heaps from the CMA
regions we collected.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 MAINTAINERS                       |  1 +
 drivers/dma-buf/heaps/cma_heap.c  | 14 ++++++++++++++
 include/linux/dma-buf/heaps/cma.h | 16 ++++++++++++++++
 3 files changed, 31 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fad6cb025a1918beec113b576cf28b76151745ef..deb6930f28c82a7257f1d4610b9bc010de62a0c9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7095,10 +7095,11 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/driver-api/dma-buf.rst
 F:	Documentation/userspace-api/dma-buf-alloc-exchange.rst
 F:	drivers/dma-buf/
 F:	include/linux/*fence.h
 F:	include/linux/dma-buf.h
+F:	include/linux/dma-buf/
 F:	include/linux/dma-resv.h
 K:	\bdma_(?:buf|fence|resv)\b
 
 DMA GENERIC OFFLOAD ENGINE SUBSYSTEM
 M:	Vinod Koul <vkoul@kernel.org>
diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 0df007111975447d555714d61ead9699287fd65a..2a901af635ed76cdb085915c03258c235e302792 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -12,10 +12,11 @@
 
 #define pr_fmt(fmt) "cma_heap: " fmt
 
 #include <linux/cma.h>
 #include <linux/dma-buf.h>
+#include <linux/dma-buf/heaps/cma.h>
 #include <linux/dma-heap.h>
 #include <linux/dma-map-ops.h>
 #include <linux/err.h>
 #include <linux/highmem.h>
 #include <linux/io.h>
@@ -25,10 +26,23 @@
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
 #define DEFAULT_CMA_NAME "default_cma_region"
 
+static struct cma *dma_areas[MAX_CMA_AREAS] __initdata;
+static unsigned int dma_areas_num __initdata;
+
+int __init dma_heap_cma_register_heap(struct cma *cma)
+{
+	if (dma_areas_num >= ARRAY_SIZE(dma_areas))
+		return -EINVAL;
+
+	dma_areas[dma_areas_num++] = cma;
+
+	return 0;
+}
+
 struct cma_heap {
 	struct dma_heap *heap;
 	struct cma *cma;
 };
 
diff --git a/include/linux/dma-buf/heaps/cma.h b/include/linux/dma-buf/heaps/cma.h
new file mode 100644
index 0000000000000000000000000000000000000000..e751479e21e703e24a5f799b4a7fc8bd0df3c1c4
--- /dev/null
+++ b/include/linux/dma-buf/heaps/cma.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef DMA_BUF_HEAP_CMA_H_
+#define DMA_BUF_HEAP_CMA_H_
+
+struct cma;
+
+#ifdef CONFIG_DMABUF_HEAPS_CMA
+int dma_heap_cma_register_heap(struct cma *cma);
+#else
+static inline int dma_heap_cma_register_heap(struct cma *cma)
+{
+	return 0;
+}
+#endif // CONFIG_DMABUF_HEAPS_CMA
+
+#endif // DMA_BUF_HEAP_CMA_H_

-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
