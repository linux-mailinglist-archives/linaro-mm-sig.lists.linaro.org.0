Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8507EBD215D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 10:35:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FD7946347
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 08:35:38 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id BCFAC4607D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Oct 2025 08:35:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PoKMEbD7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3BDDE6117B;
	Mon, 13 Oct 2025 08:35:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B2A3C4CEFE;
	Mon, 13 Oct 2025 08:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760344523;
	bh=LajQOzk5GurvfMLYf/AkXrRyTeYx/Rv5O6zLtZAh0eM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PoKMEbD7W7BvsFwuUR4NZOpmLGVqH3UTQkCAWknoduVynmpAKzMHMwUWeyKxWahzb
	 x09EBSmy88L4bwEun0kHl+ctSTqkbW2jCEA+nusK/xSke2aerDalu063VBP0Ic7OKR
	 O0ryxoWQ9gUHfI9uRrQ40KcRHD1KsXfQayvlXHpmPwiIQHfCD0KhzzgtMXs8Jr9YTn
	 pS2xw3/MRz+Xvd2GQiCsOup591MTBB4UDDAMxh6WCFbVYnfK7Oik9PQRcZQOUFuO0R
	 CJ/E+mK3zQ+jWuBLwJHtsyGESV8nYXJWUDhP7KZwX+97oP8XCHDTyJ+ithGbwrCU9k
	 y1ffjnDqAhDRA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 13 Oct 2025 10:35:16 +0200
MIME-Version: 1.0
Message-Id: <20251013-dma-buf-ecc-heap-v8-1-04ce150ea3d9@kernel.org>
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
X-Rspamd-Queue-Id: BCFAC4607D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
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
	DNSWL_BLOCKED(0.00)[172.105.4.254:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BGWSAYYSYT7UEDV2W6YQW6VXM74HKQEM
X-Message-ID-Hash: BGWSAYYSYT7UEDV2W6YQW6VXM74HKQEM
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 1/5] doc: dma-buf: List the heaps by name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BGWSAYYSYT7UEDV2W6YQW6VXM74HKQEM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Since we're going to introduce multiple instances of the CMA heap
driver, there's no single CMA heap anymore.

Let's use the heap name instead to differentiate between all the heaps
available in the system.

While we're at it, let's also rework the backward compatibility part to
make it easier to amend later on.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/userspace-api/dma-buf-heaps.rst | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
index 1dfe5e7acd5a3c674323775176d81944147e40c0..17bf6829efd7963bc849765db54d327644e8c395 100644
--- a/Documentation/userspace-api/dma-buf-heaps.rst
+++ b/Documentation/userspace-api/dma-buf-heaps.rst
@@ -14,15 +14,16 @@ Heaps
 A heap represents a specific allocator. The Linux kernel currently supports the
 following heaps:
 
  - The ``system`` heap allocates virtually contiguous, cacheable, buffers.
 
- - The ``cma`` heap allocates physically contiguous, cacheable,
-   buffers. Only present if a CMA region is present. Such a region is
-   usually created either through the kernel commandline through the
-   ``cma`` parameter, a memory region Device-Tree node with the
-   ``linux,cma-default`` property set, or through the ``CMA_SIZE_MBYTES`` or
-   ``CMA_SIZE_PERCENTAGE`` Kconfig options. The heap's name in devtmpfs is
-   ``default_cma_region``. For backwards compatibility, when the
-   ``DMABUF_HEAPS_CMA_LEGACY`` Kconfig option is set, a duplicate node is
-   created following legacy naming conventions; the legacy name might be
-   ``reserved``, ``linux,cma``, or ``default-pool``.
+ - The ``default_cma_region`` heap allocates physically contiguous,
+   cacheable, buffers. Only present if a CMA region is present. Such a
+   region is usually created either through the kernel commandline
+   through the ``cma`` parameter, a memory region Device-Tree node with
+   the ``linux,cma-default`` property set, or through the
+   ``CMA_SIZE_MBYTES`` or ``CMA_SIZE_PERCENTAGE`` Kconfig options. Prior
+   to Linux 6.17, its name wasn't stable and could be called
+   ``reserved``, ``linux,cma``, or ``default-pool``, depending on the
+   platform. From Linux 6.17 onwards, the creation of these heaps is
+   controlled through the ``DMABUF_HEAPS_CMA_LEGACY`` Kconfig option for
+   backwards compatibility.

-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
