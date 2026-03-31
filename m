Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEIhBjqby2lBJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:00:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 846F136778C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:00:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6027D3F96E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 10:00:24 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 243BB3F7B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 10:00:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ss2nXoTT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C4B8760121;
	Tue, 31 Mar 2026 10:00:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE3DBC2BCB0;
	Tue, 31 Mar 2026 10:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774951221;
	bh=NmPYacRlRMgDK6wlfQdVkWEvsfihThv4t5CQJjQ7Y7I=;
	h=From:Subject:Date:To:Cc:From;
	b=Ss2nXoTTqQTPpFf+vd8KL2TOHaj3gYelQORnJjYSaDskPaCsG/ahwxR5wQyo09pev
	 QyEsyS4gOFfegOmiVrVX41jQ1kJ8mXgEz1yDMzeH+1LykYYKx4+klu1Dxmxho07FAZ
	 one1+BWa39lVLE8FS9yHz48EUzN+8WFCQGli65jzK4ESyd09ULQ/ayN+8J1Zgr6s22
	 Hq1dL/OncUCyQuhVYvy/MACSqKFlizO2SoIp9uFCRVxm6cyOdM5dZ6CrIxwWwaazWW
	 iARNOAknbGwHy+620T97BwjBbRtB6vLJ3XFlG2X/w88YFvkuNwrGQ9E57OpsA48hGP
	 sDSIXDEMWJb/g==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Mar 2026 12:00:09 +0200
Message-Id: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/43OwQ6CMAwG4FcxO1vTdQPEk+9hPIxRZFGBbEI0h
 Hd3cFFjYjz+Tf+vHUVg7ziI3WoUngcXXNvEoNcrYWvTnBhcGbMgpBSJEiivBoq+gppNF8AEuLZ
 lf+EAEpUuFNu8IiNivfNcuftCH44x1y7cWv9YLg1ynv6BDhIQSGIetwzmWO7P7Bu+bFp/ErM60
 LuU/ZAoSjrRhjljTK39ktRLUqh+SGr+SSutt5JshtmHNE3TE6FYwwtVAQAA
X-Change-ID: 20260225-dma-buf-heaps-as-modules-1034b3ec9f2a
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2731; i=mripard@kernel.org;
 h=from:subject:message-id; bh=NmPYacRlRMgDK6wlfQdVkWEvsfihThv4t5CQJjQ7Y7I=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmnZ+vtyny391ST68fupKZOXg+LP5MLLv56Wdf4VfGRu
 aKiLp9Sx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZjI7jjGhjMPOeZ5mJ7+U1+7
 xX37xEN5MWZqs+/M9C8X8bm0z/FoLz9j0KvsW/Pit7Gqf5wid2nGZsaGyfNf758uxcDkcvtFq+j
 R52FKkjJPNM+bFbHOO2xhN0OHoWLtsnPrFVSuunzRmHlE9U0nAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: NOBEMNZYDVRN37UAJAZUFQ56C5YUKHBF
X-Message-ID-Hash: NOBEMNZYDVRN37UAJAZUFQ56C5YUKHBF
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NOBEMNZYDVRN37UAJAZUFQ56C5YUKHBF/>
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
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.630];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 846F136778C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

The recent introduction of heaps in the optee driver [1] made possible
the creation of heaps as modules.

It's generally a good idea if possible, including for the already
existing system and CMA heaps.

The system one is pretty trivial, the CMA one is a bit more involved,
especially since we have a call from kernel/dma/contiguous.c to the CMA
heap code. This was solved by turning the logic around and making the
CMA heap call into the contiguous DMA code.

Let me know what you think,
Maxime

1: https://lore.kernel.org/dri-devel/20250911135007.1275833-4-jens.wiklander@linaro.org/

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Changes in v4:
- Fix compilation failure
- Rework to take into account OF_RESERVED_MEM
- Fix regression making the default CMA area disappear if not created
  through the DT
- Added some documentation and comments
- Link to v3: https://lore.kernel.org/r/20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org

Changes in v3:
- Squashed cma_get_name and cma_alloc/release patches
- Fixed typo in Export dev_get_cma_area commit title
- Fixed compilation failure with DMA_CMA but not OF_RESERVED_MEM
- Link to v2: https://lore.kernel.org/r/20260227-dma-buf-heaps-as-modules-v2-0-454aee7e06cc@kernel.org

Changes in v2:
- Collect tags
- Don't export dma_contiguous_default_area anymore, but export
  dev_get_cma_area instead
- Mentioned that heap modules can't be removed
- Link to v1: https://lore.kernel.org/r/20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org

---
Maxime Ripard (8):
      dma: contiguous: Turn heap registration logic around
      dma: contiguous: Make dev_get_cma_area() a proper function
      dma: contiguous: Make dma_contiguous_default_area static
      dma: contiguous: Export dev_get_cma_area()
      mm: cma: Export cma_alloc(), cma_release() and cma_get_name()
      dma-buf: heaps: Export mem_accounting parameter
      dma-buf: heaps: cma: Turn the heap into a module
      dma-buf: heaps: system: Turn the heap into a module

 drivers/dma-buf/dma-heap.c          |  1 +
 drivers/dma-buf/heaps/Kconfig       |  4 +--
 drivers/dma-buf/heaps/cma_heap.c    | 22 +++----------
 drivers/dma-buf/heaps/system_heap.c |  5 +++
 include/linux/dma-buf/heaps/cma.h   | 16 ---------
 include/linux/dma-map-ops.h         | 14 ++++----
 kernel/dma/contiguous.c             | 66 +++++++++++++++++++++++++++++++++----
 mm/cma.c                            |  3 ++
 8 files changed, 82 insertions(+), 49 deletions(-)
---
base-commit: c081b71f11732ad2c443f170ab19c3ebe8a1a422
change-id: 20260225-dma-buf-heaps-as-modules-1034b3ec9f2a

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
