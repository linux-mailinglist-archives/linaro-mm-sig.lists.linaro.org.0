Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 701FBBD218C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 10:36:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94D404605F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 08:36:24 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7998D4634F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Oct 2025 08:35:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XWiLvI7J;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ED6B745C04;
	Mon, 13 Oct 2025 08:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B715C4CEE7;
	Mon, 13 Oct 2025 08:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760344532;
	bh=86W+tMqIGJ9AE1Kqrh+zL9da/Dha/yDtcLOGrEf75Ss=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XWiLvI7JXavv2mgEVXeUOzPMjY+KBbO+7mMEdBx6I35dBuc41wnN/wTfkd899wAek
	 xxVLhIT86GOTeK8YeNP/hmMfP/xO8wgUmxfu4rHa+rG0QL7TBMEUkQb3u3XnTsUcvB
	 OJNh+SsL1SnzH2G7tattrwNfm/T8CkSvuxsyV4XYK+CYh5W4smRW03MdXuJ/k+p0h6
	 ZszoBCReQlhGFhJKmjVVmSJvARYZ7lpepzifbp6vpCggzfbzvQW5Gxfjk5NoRVi/j9
	 5INvGi+N3jc4JNGGG2kEtNdGB23rvI5czBKQqAK/r5l06Ygl2uCFk1ijeFJuW5Zyt3
	 WafdFcjzgWndQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 13 Oct 2025 10:35:19 +0200
MIME-Version: 1.0
Message-Id: <20251013-dma-buf-ecc-heap-v8-4-04ce150ea3d9@kernel.org>
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
X-Rspamd-Queue-Id: 7998D4634F
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
Message-ID-Hash: FJB5GMGYGKNQFCAYZ5NEHMN664CO32OY
X-Message-ID-Hash: FJB5GMGYGKNQFCAYZ5NEHMN664CO32OY
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 4/5] dma: contiguous: Reserve default CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FJB5GMGYGKNQFCAYZ5NEHMN664CO32OY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The CMA code, in addition to the reserved-memory regions in the device
tree, will also register a default CMA region if the device tree doesn't
provide any, with its size and position coming from either the kernel
command-line or configuration.

Let's register that one for use to create a heap for it.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/contiguous.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index d67e95094749d45f43c1809c175e491a3f55b2e1..d8fd6f779f797f711b8e0fd628f868d644b8f784 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -240,17 +240,23 @@ void __init dma_contiguous_reserve(phys_addr_t limit)
 		selected_size = max(size_bytes, cma_early_percent_memory());
 #endif
 	}
 
 	if (selected_size && !dma_contiguous_default_area) {
+		int ret;
+
 		pr_debug("%s: reserving %ld MiB for global area\n", __func__,
 			 (unsigned long)selected_size / SZ_1M);
 
 		dma_contiguous_reserve_area(selected_size, selected_base,
 					    selected_limit,
 					    &dma_contiguous_default_area,
 					    fixed);
+
+		ret = dma_heap_cma_register_heap(dma_contiguous_default_area);
+		if (ret)
+			pr_warn("Couldn't register default CMA heap.");
 	}
 }
 
 void __weak
 dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)

-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
