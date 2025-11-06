Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 367ACC3BA2C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 06 Nov 2025 15:17:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F6D13F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Nov 2025 14:17:19 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 65F4A3F738
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Nov 2025 14:17:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nCbgfcJJ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C4148404CD;
	Thu,  6 Nov 2025 14:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03904C116C6;
	Thu,  6 Nov 2025 14:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762438624;
	bh=ZavZy68UqW1iEHt3XxoVBWkpiyDI0Ett9ka52Qq65eI=;
	h=From:To:Cc:Subject:Date:From;
	b=nCbgfcJJVAgp+47hn67gndUHr6jEkmDHYevSsgdB5u5pebS46j/IfiyAve50aSXBu
	 aE2CpvHtBtgp9TYWeQB60v7v8aRp13S181ShG8FUfQm0nstDguR221Vb7BHMPQbpIs
	 egK4YhZbKb2yklQGRma1CORzcRTPN2v4cpKPf/hy5ca1rFZywrLH5IPrUHSmWl4qQv
	 +l2Zjq3BoFBbOZCfoc90fijvuepqQT7tFLnc1Nz76CuWE2FH8bdQraHWWHdp/0/bcB
	 gRpfVwIYMmpMY+6eqM7EkWVLT6tUZ34cKVrMY7m/bLt3v6xx0uKDgyPb7fgUXscM6r
	 5e5y+vSnehUtw==
From: Leon Romanovsky <leon@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jens Axboe <axboe@kernel.dk>,
	Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Ankit Agrawal <ankita@nvidia.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Shameer Kolothum <skolothumtho@nvidia.com>,
	Kevin Tian <kevin.tian@intel.com>,
	Alex Williamson <alex@shazbot.org>
Date: Thu,  6 Nov 2025 16:16:45 +0200
Message-ID: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Change-ID: 20251016-dmabuf-vfio-6cef732adf5a
X-Mailer: b4 0.15-dev-3ae27
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 65F4A3F738
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[36];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: RD254UDZG4JCHQRTEEE77253RTJAEJ5G
X-Message-ID-Hash: RD254UDZG4JCHQRTEEE77253RTJAEJ5G
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RD254UDZG4JCHQRTEEE77253RTJAEJ5G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Changelog:

v7:

 * Dropped restore_revoke flag and added vfio_pci_dma_buf_move

   to reverse loop.

 * Fixed spelling errors in documentation patch.

 * Rebased on top of v6.18-rc3.

 * Added include to stddef.h to vfio.h, to keep uapi header file independent.

v6: https://patch.msgid.link/20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com

 * Fixed wrong error check from pcim_p2pdma_init().

 * Documented pcim_p2pdma_provider() function.

 * Improved commit messages.

 * Added VFIO DMA-BUF selftest, not sent yet.

 * Added __counted_by(nr_ranges) annotation to struct vfio_device_feature_dma_buf.

 * Fixed error unwind when dma_buf_fd() fails.

 * Document latest changes to p2pmem.

 * Removed EXPORT_SYMBOL_GPL from pci_p2pdma_map_type.

 * Moved DMA mapping logic to DMA-BUF.

 * Removed types patch to avoid dependencies between subsystems.

 * Moved vfio_pci_dma_buf_move() in err_undo block.

 * Added nvgrace patch.

v5: https://lore.kernel.org/all/cover.1760368250.git.leon@kernel.org

 * Rebased on top of v6.18-rc1.

 * Added more validation logic to make sure that DMA-BUF length doesn't

   overflow in various scenarios.

 * Hide kernel config from the users.

 * Fixed type conversion issue. DMA ranges are exposed with u64 length,

   but DMA-BUF uses "unsigned int" as a length for SG entries.

 * Added check to prevent from VFIO drivers which reports BAR size

   different from PCI, do not use DMA-BUF functionality.

v4: https://lore.kernel.org/all/cover.1759070796.git.leon@kernel.org

 * Split pcim_p2pdma_provider() to two functions, one that initializes

   array of providers and another to return right provider pointer.

v3: https://lore.kernel.org/all/cover.1758804980.git.leon@kernel.org

 * Changed pcim_p2pdma_enable() to be pcim_p2pdma_provider().

 * Cache provider in vfio_pci_dma_buf struct instead of BAR index.

 * Removed misleading comment from pcim_p2pdma_provider().

 * Moved MMIO check to be in pcim_p2pdma_provider().

v2: https://lore.kernel.org/all/cover.1757589589.git.leon@kernel.org/

 * Added extra patch which adds new CONFIG, so next patches can reuse

 * it.

 * Squashed "PCI/P2PDMA: Remove redundant bus_offset from map state"

   into the other patch.

 * Fixed revoke calls to be aligned with true->false semantics.

 * Extended p2pdma_providers to be per-BAR and not global to whole

 * device.

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

https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=dmabuf-vfio-v7



Thanks



---

Jason Gunthorpe (2):

      PCI/P2PDMA: Document DMABUF model

      vfio/nvgrace: Support get_dmabuf_phys



Leon Romanovsky (7):

      PCI/P2PDMA: Separate the mmap() support from the core logic

      PCI/P2PDMA: Simplify bus address mapping API

      PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation

      PCI/P2PDMA: Provide an access to pci_p2pdma_map_type() function

      dma-buf: provide phys_vec to scatter-gather mapping routine

      vfio/pci: Enable peer-to-peer DMA transactions by default

      vfio/pci: Add dma-buf export support for MMIO regions



Vivek Kasireddy (2):

      vfio: Export vfio device get and put registration helpers

      vfio/pci: Share the core device pointer while invoking feature functions



 Documentation/driver-api/pci/p2pdma.rst |  95 +++++++---

 block/blk-mq-dma.c                      |   2 +-

 drivers/dma-buf/dma-buf.c               | 235 ++++++++++++++++++++++++

 drivers/iommu/dma-iommu.c               |   4 +-

 drivers/pci/p2pdma.c                    | 182 +++++++++++++-----

 drivers/vfio/pci/Kconfig                |   3 +

 drivers/vfio/pci/Makefile               |   1 +

 drivers/vfio/pci/nvgrace-gpu/main.c     |  56 ++++++

 drivers/vfio/pci/vfio_pci.c             |   5 +

 drivers/vfio/pci/vfio_pci_config.c      |  22 ++-

 drivers/vfio/pci/vfio_pci_core.c        |  53 ++++--

 drivers/vfio/pci/vfio_pci_dmabuf.c      | 315 ++++++++++++++++++++++++++++++++

 drivers/vfio/pci/vfio_pci_priv.h        |  23 +++

 drivers/vfio/vfio_main.c                |   2 +

 include/linux/dma-buf.h                 |  18 ++

 include/linux/pci-p2pdma.h              | 120 +++++++-----

 include/linux/vfio.h                    |   2 +

 include/linux/vfio_pci_core.h           |  42 +++++

 include/uapi/linux/vfio.h               |  28 +++

 kernel/dma/direct.c                     |   4 +-

 mm/hmm.c                                |   2 +-

 21 files changed, 1074 insertions(+), 140 deletions(-)

---

base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa

change-id: 20251016-dmabuf-vfio-6cef732adf5a



Best regards,

--  

Leon Romanovsky <leonro@nvidia.com>



_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
