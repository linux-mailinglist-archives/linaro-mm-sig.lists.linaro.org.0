Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C50E8B0C28D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 13:17:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79C8545946
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 11:17:53 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 106AE445CB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 11:17:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=pQ88AlHS;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E115DA529E4;
	Mon, 21 Jul 2025 11:17:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43EEEC4CEF1;
	Mon, 21 Jul 2025 11:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096659;
	bh=SCH9cggG9iQtC/ktj5G90Uy+enqBH43N3sh/JdlCJ0k=;
	h=From:Subject:Date:To:Cc:From;
	b=pQ88AlHSlOmrmwW0yooyoT7nNi7pNoFlj8hCWd7NUs9B8gAML2E2JirHentMY1HFt
	 jwzRbBWeiiXGA8TXuHp7FfCr5vWnqLw5ZBLtbKzb8Xa/LCLfAd1LlJJZoanr/j9EZz
	 X9V3jjDGLDJrakOOYT1o4ZQMyYjAw8IW77ou7TB0VH0zErdFEIN6iY1TEYUws/KQVa
	 0lxQ+m+50mG87OOh5Hr9E1nJmZxlKtuApZTZTG3wb1Xau5MLYVLA+cO5SRBXiLwcKR
	 6mFc0YS5dDHfQBiXwN1v0kQCvQ/D1q7VUdPBCOfYL0ceUfp+hTey82jgo+e8pop7Qt
	 WWCeNC1nG2eHw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 21 Jul 2025 13:17:29 +0200
Message-Id: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMkhfmgC/33Sy07DMBAF0F+JvMaRx680EUL9D8TCj3ETSppip
 xGo6r/jtKCCErG8lnzGo+szSRg7TKQpziTi1KVuOORQPRTEteawQ9r5nAlnXDIFivreUHsKFJ2
 jLZoj5RsjADx3tUSSrx0jhu7jSj6/5Nx2aRzi53XCBPPpP9gElFElnbWeyVoBbPcYD/hWDnFHZ
 m3iP4JiksGKwLPApAieMW3AhIUgfgvViiCyUFfOe6GNCrxeCPIuKM5WBEmBWs8RAlgruVsI6i5
 oWHuDmrcw1ju10cLI5Rb6LlSsXhF0FrxxtQ0bFoTyf4TLraiI76dc+Xhri/SYkrlW3hSP349jI
 IALKKHiUvMqL/a6z//CpG1E35qxdEP/NPduTUKaQ9+NTTHpEjSNTuVRly9UrvevZQIAAA==
X-Change-ID: 20240515-dma-buf-ecc-heap-28a311d2c94e
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4803; i=mripard@kernel.org;
 h=from:subject:message-id; bh=SCH9cggG9iQtC/ktj5G90Uy+enqBH43N3sh/JdlCJ0k=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBl1iufWH2+VdVN/4vixViPifvnnuBi58MsHfKyuHP3Ae
 F4z1yuwYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAEykiIexPir7G4ta0bqHyybv
 vNEUNunufjXudcwiz/I039v+3rN7k8i1+7fEdSanOBv752adzGlMZWw4cXLFj1SVhcdjsg4o3zo
 zJ33h5UD/Q8szf+V9Knqx+/9+5hSTJmvD1QdbTTlqJ+8s6r8AAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Result: default: False [-5.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_IN_DNSWL_MED(-0.20)[147.75.193.91:from];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15830, ipnet:147.75.193.0/24, country:NL];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 106AE445CB
X-Spamd-Bar: -----
Message-ID-Hash: RVGX3GVPXIT6IK43XGS2QGJ6VVJD4O6G
X-Message-ID-Hash: RVGX3GVPXIT6IK43XGS2QGJ6VVJD4O6G
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 0/5] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVGX3GVPXIT6IK43XGS2QGJ6VVJD4O6G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Here's another attempt at supporting user-space allocations from a
specific carved-out reserved memory region.

The initial problem we were discussing was that I'm currently working on
a platform which has a memory layout with ECC enabled. However, enabling
the ECC has a number of drawbacks on that platform: lower performance,
increased memory usage, etc. So for things like framebuffers, the
trade-off isn't great and thus there's a memory region with ECC disabled
to allocate from for such use cases.

After a suggestion from John, I chose to first start using heap
allocations flags to allow for userspace to ask for a particular ECC
setup. This is then backed by a new heap type that runs from reserved
memory chunks flagged as such, and the existing DT properties to specify
the ECC properties.

After further discussion, it was considered that flags were not the
right solution, and relying on the names of the heaps would be enough to
let userspace know the kind of buffer it deals with.

Thus, even though the uAPI part of it had been dropped in this second
version, we still needed a driver to create heaps out of carved-out memory
regions. In addition to the original usecase, a similar driver can be
found in BSPs from most vendors, so I believe it would be a useful
addition to the kernel.

Some extra discussion with Rob Herring [1] came to the conclusion that
some specific compatible for this is not great either, and as such an
new driver probably isn't called for either.

Some other discussions we had with John [2] also dropped some hints that
multiple CMA heaps might be a good idea, and some vendors seem to do
that too.

So here's another attempt that doesn't affect the device tree at all and
will just create a heap for every CMA reserved memory region.

It also falls nicely into the current plan we have to support cgroups in
DRM/KMS and v4l2, which is an additional benefit.

Let me know what you think,
Maxime

1: https://lore.kernel.org/all/20250707-cobalt-dingo-of-serenity-dbf92c@houat/
2: https://lore.kernel.org/all/CANDhNCroe6ZBtN_o=c71kzFFaWK-fF5rCdnr9P5h1sgPOWSGSw@mail.gmail.com/

Let me know what you think,
Maxime

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Changes in v7:
- Invert the logic and register CMA heap from the reserved memory /
  dma contiguous code, instead of iterating over them from the CMA heap.
- Link to v6: https://lore.kernel.org/r/20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org

Changes in v6:
- Drop the new driver and allocate a CMA heap for each region now
- Dropped the binding
- Rebased on 6.16-rc5
- Link to v5: https://lore.kernel.org/r/20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org

Changes in v5:
- Rebased on 6.16-rc2
- Switch from property to dedicated binding
- Link to v4: https://lore.kernel.org/r/20250520-dma-buf-ecc-heap-v4-1-bd2e1f1bb42c@kernel.org

Changes in v4:
- Rebased on 6.15-rc7
- Map buffers only when map is actually called, not at allocation time
- Deal with restricted-dma-pool and shared-dma-pool
- Reword Kconfig options
- Properly report dma_map_sgtable failures
- Link to v3: https://lore.kernel.org/r/20250407-dma-buf-ecc-heap-v3-0-97cdd36a5f29@kernel.org

Changes in v3:
- Reworked global variable patch
- Link to v2: https://lore.kernel.org/r/20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@kernel.org

Changes in v2:
- Add vmap/vunmap operations
- Drop ECC flags uapi
- Rebase on top of 6.14
- Link to v1: https://lore.kernel.org/r/20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org

---
Maxime Ripard (5):
      doc: dma-buf: List the heaps by name
      dma-buf: heaps: cma: Register list of CMA regions at boot
      dma: contiguous: Register reusable CMA regions at boot
      dma: contiguous: Reserve default CMA heap
      dma-buf: heaps: cma: Create CMA heap for each CMA reserved region

 Documentation/userspace-api/dma-buf-heaps.rst | 24 ++++++++------
 MAINTAINERS                                   |  1 +
 drivers/dma-buf/heaps/Kconfig                 | 10 ------
 drivers/dma-buf/heaps/cma_heap.c              | 47 +++++++++++++++++----------
 include/linux/dma-buf/heaps/cma.h             | 16 +++++++++
 kernel/dma/contiguous.c                       | 11 +++++++
 6 files changed, 72 insertions(+), 37 deletions(-)
---
base-commit: 47633099a672fc7bfe604ef454e4f116e2c954b1
change-id: 20240515-dma-buf-ecc-heap-28a311d2c94e
prerequisite-message-id: <20250610131231.1724627-1-jkangas@redhat.com>
prerequisite-patch-id: bc44be5968feb187f2bc1b8074af7209462b18e7
prerequisite-patch-id: f02a91b723e5ec01fbfedf3c3905218b43d432da
prerequisite-patch-id: e944d0a3e22f2cdf4d3b3906e5603af934696deb

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
