Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDgkGCk3ymlf6gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 10:41:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B267C357592
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 10:41:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E182402EF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 08:41:11 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id EA8AE3F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 08:41:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fgV3DSs0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 46B3C43EA9;
	Mon, 30 Mar 2026 08:41:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F95EC4CEF7;
	Mon, 30 Mar 2026 08:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774860067;
	bh=2NhBgbhDn7ft3rC7LIHth8pNLQZW1E1FdbXxFtQzOIk=;
	h=From:Date:Subject:To:Cc:From;
	b=fgV3DSs0P9RnwmOpMroZPtCWngnSF78jdzY9CQRdJ6xa+dlwDMJF0jX2tL3hZNyHV
	 USdUFdNzRk6Ki+3/S1+zeRywAQNBkNOGcSx8lMPfTEHBxYMv+SGhjKNQj+8oF/yA90
	 upF2ahEPlnF7WLEOdv4vP8Y6bcAGyNnRBBTsJ9NRQ7OgtDq1UCiDR/YuX0HRzVVoye
	 1fd7ApNSIWdGHA62y4eTAghiUhS00+p5z4NOFML/nLr5YtLlKgFvP6eFDnYwbDkIVe
	 0W8Tf9Ie22qorZvFxYC33PyK3wrYXPkrA3SPO5OmaDA5oGXEJdvjEJPT+f0UVqb9kz
	 ad9gR1M77CBXg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 30 Mar 2026 10:40:56 +0200
MIME-Version: 1.0
Message-Id: <20260330-dma-build-fix-v1-1-748b64f0d8af@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqAMAzAviI9W6hOFPyKeJiu04JO2VAE2d8tH
 hNIXkgchRP0xQuRb0lyBIWqLGBebVgYxSlDTXVLxhC63eJ0yebQy4MdtbbxPBGTB23OyKr/3zD
 m/AEXVpECXwAAAA==
X-Change-ID: 20260330-dma-build-fix-706a4feb0e0f
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Albert Esteve <aesteve@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3399; i=mripard@kernel.org;
 h=from:subject:message-id; bh=2NhBgbhDn7ft3rC7LIHth8pNLQZW1E1FdbXxFtQzOIk=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmnzOUn/pgaGTbvc3fF9IXpk7cuD1z0dZatqVDIeYW+q
 UrRee02HVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAi8ssYa7iOLV6aejOJzfv1
 4fbTM27dfHH9SO6tpdk7v21Lex97T2/HhR9uL7t0QrZLSWWeiJp6YQ5jw4bUt0aLU7P41wUEz/o
 YeKjxTZCddUvYqqDtn++uDWC1d5i5m8N5EYt9gWzSVf/+rrjVAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: X4C2QTOZI3JELP6AZDCAF7VPBSPJIUYW
X-Message-ID-Hash: X4C2QTOZI3JELP6AZDCAF7VPBSPJIUYW
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Mark Brown <broonie@kernel.org>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma/contiguous: Fix broken build
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X4C2QTOZI3JELP6AZDCAF7VPBSPJIUYW/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B267C357592
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 3a236f6a5cf2 ("dma: contiguous: Turn heap registration logic
around") didn't remove one last call to dma_heap_cma_register_heap()
that it removed, thus breaking the build.

That last call is in dma_contiguous_reserve(), to handle the
registration of the default CMA region heap instance if it's declared in
the device tree.

However, the default CMA region instance is already handled by
retrieving it through dev_get_cma_area() in the CMA heap driver, so the
call to dma_heap_cma_register_heap() wasn't actually needed.

Let's remove this call, the now unused function definition, its now
empty header, and all includes of this header.

Fixes: 3a236f6a5cf2 ("dma: contiguous: Turn heap registration logic around")
Reported-by: Mark Brown <broonie@kernel.org>
Closes: https://lore.kernel.org/linux-next/acbjaDJ1a-YQC64d@sirena.co.uk/
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/cma_heap.c  |  1 -
 include/linux/dma-buf/heaps/cma.h | 16 ----------------
 kernel/dma/contiguous.c           |  5 -----
 3 files changed, 22 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index f8a3d87f3ccee9630383ba28502eb40b10671cc2..cc517ac68a0bec0788abcb338c03f530d169013b 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -12,11 +12,10 @@
 
 #define pr_fmt(fmt) "cma_heap: " fmt
 
 #include <linux/cma.h>
 #include <linux/dma-buf.h>
-#include <linux/dma-buf/heaps/cma.h>
 #include <linux/dma-heap.h>
 #include <linux/dma-map-ops.h>
 #include <linux/err.h>
 #include <linux/highmem.h>
 #include <linux/io.h>
diff --git a/include/linux/dma-buf/heaps/cma.h b/include/linux/dma-buf/heaps/cma.h
deleted file mode 100644
index e751479e21e703e24a5f799b4a7fc8bd0df3c1c4..0000000000000000000000000000000000000000
--- a/include/linux/dma-buf/heaps/cma.h
+++ /dev/null
@@ -1,16 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef DMA_BUF_HEAP_CMA_H_
-#define DMA_BUF_HEAP_CMA_H_
-
-struct cma;
-
-#ifdef CONFIG_DMABUF_HEAPS_CMA
-int dma_heap_cma_register_heap(struct cma *cma);
-#else
-static inline int dma_heap_cma_register_heap(struct cma *cma)
-{
-	return 0;
-}
-#endif // CONFIG_DMABUF_HEAPS_CMA
-
-#endif // DMA_BUF_HEAP_CMA_H_
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index ad50512d71d3088a73e4b1ac02d6e6122374888e..9fe001c712339f8388d3f40cca3dfff3f707fcbf 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -40,11 +40,10 @@
 #include <asm/page.h>
 
 #include <linux/memblock.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
-#include <linux/dma-buf/heaps/cma.h>
 #include <linux/dma-map-ops.h>
 #include <linux/cma.h>
 #include <linux/nospec.h>
 
 #ifdef CONFIG_CMA_SIZE_MBYTES
@@ -270,14 +269,10 @@ void __init dma_contiguous_reserve(phys_addr_t limit)
 						  selected_limit,
 						  &dma_contiguous_default_area,
 						  fixed);
 		if (ret)
 			return;
-
-		ret = dma_heap_cma_register_heap(dma_contiguous_default_area);
-		if (ret)
-			pr_warn("Couldn't register default CMA heap.");
 	}
 }
 
 void __weak
 dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)

---
base-commit: f3948c8ed5ea206e87ea2375aebdbabc2064356a
change-id: 20260330-dma-build-fix-706a4feb0e0f

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
