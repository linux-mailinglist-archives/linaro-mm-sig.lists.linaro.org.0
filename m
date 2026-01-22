Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLBFMtoM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:22:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7A7411A70
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:22:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BD1640ABD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:22:49 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id F0B873F774
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 16:10:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gxw0zSYC;
	spf=pass (lists.linaro.org: domain of thierry.reding@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=thierry.reding@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AF6B600C4;
	Thu, 22 Jan 2026 16:10:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95341C116C6;
	Thu, 22 Jan 2026 16:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769098216;
	bh=ha3JA4N/2sbTZoLLt9Hk+/O5tkj/IAzHDfElKjAoOuU=;
	h=From:To:Cc:Subject:Date:From;
	b=gxw0zSYCXNJ4FcqwQQa7I3h3D2XukR/5aI8fAthL9DSmSmnm5KNPPfNGJ1op1BP4Y
	 MQ8cVwzVPjLYouTp/7uYsWSzL1ur0vhAi8L6FpMUXjN04ub6UPMiSU3ZiH+XtPFwfk
	 VDdZWO7EoWXGrXVNri26ANlTn29LcOna1OgwmoqrgPHF2Z+DlEJR1wAkHWsZ6kesJv
	 qbLK+3OIqfHgL9efAc72qE3r7O1STboGXJlBPqou0qcXN6QKZkFhWF6pvcrQDPFrx/
	 MqiNydzq8TzcExsRUkFNe+MEx6i7Rghos0E8UwfsefR6oollk4PXYz9/GzaS+tOntT
	 OxAMHTZ4pQ6Hg==
From: Thierry Reding <thierry.reding@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 22 Jan 2026 17:09:59 +0100
Message-ID: <20260122161009.3865888-1-thierry.reding@kernel.org>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VM5B46EA5I3IR7ZSFCQRQB2VIWNPUB3M
X-Message-ID-Hash: VM5B46EA5I3IR7ZSFCQRQB2VIWNPUB3M
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:22 +0000
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 00/10] dma-bug: heaps: Add Tegra VPR support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VM5B46EA5I3IR7ZSFCQRQB2VIWNPUB3M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[2016];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.762];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7F7A7411A70
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Thierry Reding <treding@nvidia.com>

Hi,

This series adds support for the video protection region (VPR) used on
Tegra SoC devices. It's a special region of memory that is protected
from accesses by the CPU and used to store DRM protected content (both
decrypted stream data as well as decoded video frames).

Patches 1 and 2 add DT binding documentation for the VPR and add the VPR
to the list of memory-region items for display and host1x.

Patch 3 adds bitmap_allocate(), which is like bitmap_allocate_region()
but works on sizes that are not a power of two.

Patch 4 introduces new APIs needed by the Tegra VPR implementation that
allow CMA areas to be dynamically created at runtime rather than using
the fixed, system-wide list. This is used in this driver specifically
because it can use an arbitrary number of these areas (though they are
currently limited to 4).

Patch 5 adds some infrastructure for DMA heap implementations to provide
information through debugfs.

The Tegra VPR implementation is added in patch 6. See its commit message
for more details about the specifics of this implementation.

Finally, patches 7-10 add the VPR placeholder node on Tegra234 and hook
it up to the host1x and GPU nodes so that they can make use of this
region.

Changes in v2:
- Tegra VPR implementation is now more optimized to reduce the number of
  (very slow) resize operations, and allows cross-chunk allocations
- dynamic CMA areas are now trackd separately from static ones, but the
  global number of CMA pages accounts for all areas

Thierry

Thierry Reding (10):
  dt-bindings: reserved-memory: Document Tegra VPR
  dt-bindings: display: tegra: Document memory regions
  bitmap: Add bitmap_allocate() function
  mm/cma: Allow dynamically creating CMA areas
  dma-buf: heaps: Add debugfs support
  dma-buf: heaps: Add support for Tegra VPR
  arm64: tegra: Add VPR placeholder node on Tegra234
  arm64: tegra: Add GPU node on Tegra234
  arm64: tegra: Hook up VPR to host1x
  arm64: tegra: Hook up VPR to the GPU

 .../display/tegra/nvidia,tegra186-dc.yaml     |   10 +
 .../display/tegra/nvidia,tegra20-dc.yaml      |   10 +-
 .../display/tegra/nvidia,tegra20-host1x.yaml  |    7 +
 .../nvidia,tegra-video-protection-region.yaml |   55 +
 arch/arm/mm/dma-mapping.c                     |    2 +-
 arch/arm64/boot/dts/nvidia/tegra234.dtsi      |   60 +
 arch/s390/mm/init.c                           |    2 +-
 drivers/dma-buf/dma-heap.c                    |   56 +
 drivers/dma-buf/heaps/Kconfig                 |    7 +
 drivers/dma-buf/heaps/Makefile                |    1 +
 drivers/dma-buf/heaps/cma_heap.c              |    2 +-
 drivers/dma-buf/heaps/tegra-vpr.c             | 1265 +++++++++++++++++
 include/linux/bitmap.h                        |   25 +-
 include/linux/cma.h                           |    7 +-
 include/linux/dma-heap.h                      |    2 +
 include/trace/events/tegra_vpr.h              |   57 +
 mm/cma.c                                      |  187 ++-
 mm/cma.h                                      |    5 +-
 18 files changed, 1713 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml
 create mode 100644 drivers/dma-buf/heaps/tegra-vpr.c
 create mode 100644 include/trace/events/tegra_vpr.h

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
