Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84503B0C29D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 13:18:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CC0145984
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 11:18:37 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3CAB245D31
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 11:17:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Eau9nt4A;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B264043A1B;
	Mon, 21 Jul 2025 11:17:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FFEC4CEF1;
	Mon, 21 Jul 2025 11:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096668;
	bh=JC2kgPKoyopfcstm3FBIUDMnngpOTv3PR1mdR6IDQVs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Eau9nt4AQV8tXUIP9uyzwmDBrWVu6v1xYLmnvytopjcWchfHjNFH8PZDJbI4ocH+m
	 Ixp9nVAmCp+H4t1BOl3KFPPCswjSnM6Gb/Rrb+QsQoScDc32hJ/9gnHl6xuc0EEWaM
	 bS3mM3nPP2MtG0ThHlc63yxPECmOGdldEahF6WTS8llEaQVwkKvN08U+cXI70ZspGu
	 dnWXIiRACxcabd5G3EhDdWhjwyfJEYC7SGwPk0GyQLN2N/hV0EDheb2fQtxp9BeKIe
	 SLwcIv9Kzgv0MJ4jGtXDEG80ep04wlWpUriFb7Zkxb6OmvyRyF5vWPyPHMmjW3e73q
	 PvH0T3UaY6pTQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 21 Jul 2025 13:17:32 +0200
MIME-Version: 1.0
Message-Id: <20250721-dma-buf-ecc-heap-v7-3-031836e1a942@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536; i=mripard@kernel.org;
 h=from:subject:message-id; bh=JC2kgPKoyopfcstm3FBIUDMnngpOTv3PR1mdR6IDQVs=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBl1iucP++yv60//o8bzs84oo+zI+/+/Ldc802ZYuKft+
 T6Gvx4BHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAiXX8YGxaZfZjdv/2HM2+6
 Xf2L5KuCTzm5t6pH/5y3hyfzqMXBXfWTnFkfNP7k71lqwTV/deQuY8aGWRtcXty6WRr7M/nGp8j
 XGzycq7b6fv0SLGq1Q+BffNIiL6PZlgGu93eLnl+uub1mwh1xAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3CAB245D31
X-Spamd-Bar: ----
Message-ID-Hash: CABKLMHN4B2HKP2TXRVY7XYU2SYGBFCC
X-Message-ID-Hash: CABKLMHN4B2HKP2TXRVY7XYU2SYGBFCC
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 3/5] dma: contiguous: Register reusable CMA regions at boot
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CABKLMHN4B2HKP2TXRVY7XYU2SYGBFCC/>
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

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/contiguous.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 8df0dfaaca18eeb0a20145512ba64425d2e7601e..e81982c0ee8f5c0654731adb611df4bcc4637c7c 100644
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
@@ -490,9 +491,13 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
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
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
