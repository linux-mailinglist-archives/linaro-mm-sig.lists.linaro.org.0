Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A294BD2180
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 10:36:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6A574605F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 08:36:09 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 8C4CC46348
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Oct 2025 08:35:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=udRzakzM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1040B45BE7;
	Mon, 13 Oct 2025 08:35:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CCE1C4CEFE;
	Mon, 13 Oct 2025 08:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760344529;
	bh=M2vThTE/nI9A0eTijjOxBfcDZbixVCE8PiHlBxnoWQA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=udRzakzMd65x34EnOiiJO3y0lmwBPB59JEsxf5CiiZGpioeiYJ2Z1WkKEAfdwPcSv
	 Y25ihnMa3oxJIV79BNsn3ZKjjqXaBYwzBtpJhmQZP4onwtG2wtoLNTH+eQDs2dxnfn
	 +1Mrwpopx9n9OrTNCi5M6vdZXhKwsn70zWwQCfL6R+AaTUKzmYhQjb4g/tePHoa5wN
	 /+CSa2Kbnisjnx1m+8ePqyi3EkHGDshcQ81sZ1iHIi7VHY5QcE47KKfoIS/vhzm5xH
	 e1y/V7epIlUYbY5eE3cQworkNeLzsbU4PmS72hjmcqL3M9fex5e+B4J/z37VpCMiVj
	 zI5bn+jm7XRhw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 13 Oct 2025 10:35:18 +0200
MIME-Version: 1.0
Message-Id: <20251013-dma-buf-ecc-heap-v8-3-04ce150ea3d9@kernel.org>
References: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org>
In-Reply-To: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 8C4CC46348
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2GTDPKDBW3O5IBGREM5LJHSPBDHPAAUO
X-Message-ID-Hash: 2GTDPKDBW3O5IBGREM5LJHSPBDHPAAUO
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 3/5] dma: contiguous: Register reusable CMA regions at boot
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2GTDPKDBW3O5IBGREM5LJHSPBDHPAAUO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to create a CMA dma-buf heap instance for each CMA heap region
in the system, we need to collect all of them during boot.

They are created from two main sources: the reserved-memory regions in
the device tree, and the default CMA region created from the
configuration or command line parameters, if no default region is
provided in the device tree.

Let's collect all the device-tree defined CMA regions flagged as
reusable.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/contiguous.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index d9b9dcba6ff7cf5904ac93b72c061fd59072c41b..d67e95094749d45f43c1809c175e491a3f55b2e1 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -40,10 +40,11 @@
 #include <asm/page.h>
 
 #include <linux/memblock.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
+#include <linux/dma-buf/heaps/cma.h>
 #include <linux/dma-map-ops.h>
 #include <linux/cma.h>
 #include <linux/nospec.h>
 
 #ifdef CONFIG_CMA_SIZE_MBYTES
@@ -491,9 +492,13 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
 	rmem->priv = cma;
 
 	pr_info("Reserved memory: created CMA memory pool at %pa, size %ld MiB\n",
 		&rmem->base, (unsigned long)rmem->size / SZ_1M);
 
+	err = dma_heap_cma_register_heap(cma);
+	if (err)
+		pr_warn("Couldn't register CMA heap.");
+
 	return 0;
 }
 RESERVEDMEM_OF_DECLARE(cma, "shared-dma-pool", rmem_cma_setup);
 #endif

-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
