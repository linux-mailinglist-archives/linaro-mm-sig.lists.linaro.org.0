Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEACB9F7CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 15:18:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAA1D45D62
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 13:18:31 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3135943B90
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 13:18:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tyMtduVm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B01716057F;
	Thu, 25 Sep 2025 13:18:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E522DC4CEF0;
	Thu, 25 Sep 2025 13:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758806308;
	bh=jQzVVFrSJ7ucYZq15uO8/5+M3IU4mjEtHjNrG1vAE+o=;
	h=From:To:Cc:Subject:Date:From;
	b=tyMtduVmcBWMzBWiJspZLwmeJ2ceNqfCyWctxCHtsWpa33DUFzUSwR+lAYuXSkSbq
	 7hyAzyHDnJmIUikYk3CItyM7Uh35bR2JxITeQkJhmDYCJYXHsKr+LGIuRm4+yXoCaD
	 JZiNMdX+Zw0TOCsazhHYjXM8C1WC31w10xakUJdR/Vn7x+k3dTdJUf9G5Maob/fD4A
	 26gabXuJymbyanTC7dVHAFcKpHr6e/oODVxTFeiHGn/xxwdP5aGAzn0HBac9BEnYEm
	 arr3AcxqjEzjhe0bR+w8YwaGFfWHj/09uhM6APuXkZfWoicvjxRbdiHLgAavHVhOcQ
	 +hGPrG6oy4xJQ==
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Date: Thu, 25 Sep 2025 16:14:28 +0300
Message-ID: <cover.1758804980.git.leon@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 3135943B90
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ACWCHBOX77VQJLHTBLYMY2UAYOQX4UU6
X-Message-ID-Hash: ACWCHBOX77VQJLHTBLYMY2UAYOQX4UU6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 00/10] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ACWCHBOX77VQJLHTBLYMY2UAYOQX4UU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Changelog:
v3:
 * Changed pcim_p2pdma_enable() to be pcim_p2pdma_provider().
 * Cache provider in vfio_pci_dma_buf struct instead of BAR index.
 * Removed misleading comment from pcim_p2pdma_provider().
 * Moved MMIO check to be in pcim_p2pdma_provider().
v2: https://lore.kernel.org/all/cover.1757589589.git.leon@kernel.org/
 * Added extra patch which adds new CONFIG, so next patches can reuse it.
 * Squashed "PCI/P2PDMA: Remove redundant bus_offset from map state"
   into the other patch.
 * Fixed revoke calls to be aligned with true->false semantics.
 * Extended p2pdma_providers to be per-BAR and not global to whole device.
 * Fixed possible race between dmabuf states and revoke.
 * Moved revoke to PCI BAR zap block.
v1: https://lore.kernel.org/all/cover.1754311439.git.leon@kernel.org
 * Changed commit messages.
 * Reused DMA_ATTR_MMIO attribute.
 * Returned support for multiple DMA ranges per-dMABUF.
v0: https://lore.kernel.org/all/cover.1753274085.git.leonro@nvidia.com

---------------------------------------------------------------------------
Based on "[PATCH v6 00/16] dma-mapping: migrate to physical address-based API"
https://lore.kernel.org/all/cover.1757423202.git.leonro@nvidia.com/ series.
---------------------------------------------------------------------------

This series extends the VFIO PCI subsystem to support exporting MMIO
regions from PCI device BARs as dma-buf objects, enabling safe sharing of
non-struct page memory with controlled lifetime management. This allows RDMA
and other subsystems to import dma-buf FDs and build them into memory regions
for PCI P2P operations.

The series supports a use case for SPDK where a NVMe device will be
owned by SPDK through VFIO but interacting with a RDMA device. The RDMA
device may directly access the NVMe CMB or directly manipulate the NVMe
device's doorbell using PCI P2P.

However, as a general mechanism, it can support many other scenarios with
VFIO. This dmabuf approach can be usable by iommufd as well for generic
and safe P2P mappings.

In addition to the SPDK use-case mentioned above, the capability added
in this patch series can also be useful when a buffer (located in device
memory such as VRAM) needs to be shared between any two dGPU devices or
instances (assuming one of them is bound to VFIO PCI) as long as they
are P2P DMA compatible.

The implementation provides a revocable attachment mechanism using dma-buf
move operations. MMIO regions are normally pinned as BARs don't change
physical addresses, but access is revoked when the VFIO device is closed
or a PCI reset is issued. This ensures kernel self-defense against
potentially hostile userspace.

The series includes significant refactoring of the PCI P2PDMA subsystem
to separate core P2P functionality from memory allocation features,
making it more modular and suitable for VFIO use cases that don't need
struct page support.

-----------------------------------------------------------------------
The series is based originally on
https://lore.kernel.org/all/20250307052248.405803-1-vivek.kasireddy@intel.com/
but heavily rewritten to be based on DMA physical API.
-----------------------------------------------------------------------
The WIP branch can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=dmabuf-vfio-v3

Thanks

Leon Romanovsky (8):
  PCI/P2PDMA: Separate the mmap() support from the core logic
  PCI/P2PDMA: Simplify bus address mapping API
  PCI/P2PDMA: Refactor to separate core P2P functionality from memory
    allocation
  PCI/P2PDMA: Export pci_p2pdma_map_type() function
  types: move phys_vec definition to common header
  vfio/pci: Add dma-buf export config for MMIO regions
  vfio/pci: Enable peer-to-peer DMA transactions by default
  vfio/pci: Add dma-buf export support for MMIO regions

Vivek Kasireddy (2):
  vfio: Export vfio device get and put registration helpers
  vfio/pci: Share the core device pointer while invoking feature
    functions

 block/blk-mq-dma.c                 |   7 +-
 drivers/iommu/dma-iommu.c          |   4 +-
 drivers/pci/p2pdma.c               | 176 +++++++++----
 drivers/vfio/pci/Kconfig           |  20 ++
 drivers/vfio/pci/Makefile          |   2 +
 drivers/vfio/pci/vfio_pci_config.c |  22 +-
 drivers/vfio/pci/vfio_pci_core.c   |  58 +++--
 drivers/vfio/pci/vfio_pci_dmabuf.c | 394 +++++++++++++++++++++++++++++
 drivers/vfio/pci/vfio_pci_priv.h   |  23 ++
 drivers/vfio/vfio_main.c           |   2 +
 include/linux/pci-p2pdma.h         | 115 +++++----
 include/linux/types.h              |   5 +
 include/linux/vfio.h               |   2 +
 include/linux/vfio_pci_core.h      |   4 +
 include/uapi/linux/vfio.h          |  25 ++
 kernel/dma/direct.c                |   4 +-
 mm/hmm.c                           |   2 +-
 17 files changed, 741 insertions(+), 124 deletions(-)
 create mode 100644 drivers/vfio/pci/vfio_pci_dmabuf.c

-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
