Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FF7B0C291
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 13:18:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20B0E45984
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 11:18:08 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 9CF47445FA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 11:17:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GqV4pDpe;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E00D245E14;
	Mon, 21 Jul 2025 11:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DBEFC4CEF1;
	Mon, 21 Jul 2025 11:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096662;
	bh=pkewGPjjFTsNcaE929R2dk9XfsEdn97c4Fm1Zzq1x+Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GqV4pDpem7xWd3kdcpmPqvV1GCbzoSWmbz48gxbnNSFR9tKsvgPOcEFjGr+ed191y
	 lNUUyN1qWGANt+vd6COVjF7q1f5dwzaa6Uh7KcJCS8Q50dvVc/oPsSBy1Cp4pXQIAi
	 GArxYtNjWLzh6iGG/8udiFM8jtJ0lPP6oc3btVI/H6MA+ARxAiaHxas9A8vTbszMuV
	 WzdsAp5iipxa5I6P6lLmiHOUH55Q1ZntH8yYf4KrjWpvl4/OvlUENeC7vONjnit5mE
	 H+xK/RXfwOTkRS03nGyS6i21irG26EXUYW4LiNCtfVm6aLyixAx4qG58ZTp3NEHp+S
	 XL40SWpwYS+VA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 21 Jul 2025 13:17:30 +0200
MIME-Version: 1.0
Message-Id: <20250721-dma-buf-ecc-heap-v7-1-031836e1a942@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2482; i=mripard@kernel.org;
 h=from:subject:message-id; bh=pkewGPjjFTsNcaE929R2dk9XfsEdn97c4Fm1Zzq1x+Q=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBl1iudmqnneWB99U9twXZvdjSCWd0Ysmnx3UrJn6/z+H
 L+XLVajYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAExk+yvGSsbjJrP15C0e2ust
 TRFdkOwlN/G2d+fbU1aRvntKby4w/F51MG1/r9SjbJ3oH57c0vu3MdY7nBLcG79HtWifaepSdpM
 Dq+fc9WVQsomef+vuLx+VOdaVaU+Ye56Xeas23ChxO7xmHjMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: 9CF47445FA
X-Spamd-Bar: ----
Message-ID-Hash: ZQAL7EIDDZ6E3EPXWWZJTZD6CCAN7FRX
X-Message-ID-Hash: ZQAL7EIDDZ6E3EPXWWZJTZD6CCAN7FRX
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 1/5] doc: dma-buf: List the heaps by name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQAL7EIDDZ6E3EPXWWZJTZD6CCAN7FRX/>
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
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
