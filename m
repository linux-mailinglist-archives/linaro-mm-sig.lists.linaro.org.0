Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C208FB0F2C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jul 2025 15:02:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2AAF3F6FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jul 2025 13:02:11 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id BB1E93F6B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jul 2025 13:01:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PyvJ2iUl;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0E15646205;
	Wed, 23 Jul 2025 13:01:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB36AC4CEE7;
	Wed, 23 Jul 2025 13:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753275715;
	bh=VeEaP0I6Ju84rRyRYaicpp+t8ePJyjkfRFyzhb+AudA=;
	h=From:To:Cc:Subject:Date:From;
	b=PyvJ2iUlLMlbGzX5qzJpPwU19z2ZHVNgRRR6I6pgdUocqIvlwyAEVWlzxFVyH+O5B
	 rgvRUW0KyWJCaIjAWkNSjYQZTjUA8hXt537lM2z1lqW3QLRM+cccx6Wa7AnC47Kdh5
	 5vyhtPdVK3eYgRSInD6ot6DkzLAf5sTN26YAlVnpeeskZCszqRTW1E/3s1cIFoXbIv
	 cwHrWiFoDlhJYh6kh2ZXmBFSyLLP1YH2+JOYj0Akmjoq6YhcbZiRr95b4qm1dHfFnN
	 OpoAwh1yBhmId5vMmQ85Jwdtkwph/jN1NrrSQ24V5bB3R7cAOPmCfMDkPo1fsYxenn
	 0kqYO1EMHe0rw==
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Date: Wed, 23 Jul 2025 16:00:01 +0300
Message-ID: <cover.1753274085.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BB1E93F6B4
X-Spamd-Bar: ---
Message-ID-Hash: BG3SAWYUULBZLXSODF3T6XRSZQGOJ7PH
X-Message-ID-Hash: BG3SAWYUULBZLXSODF3T6XRSZQGOJ7PH
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/10] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BG3SAWYUULBZLXSODF3T6XRSZQGOJ7PH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Leon Romanovsky <leonro@nvidia.com>

---------------------------------------------------------------------------
Based on blk and DMA patches which will be sent during coming merge window.
---------------------------------------------------------------------------

This series extends the VFIO PCI subsystem to support exporting MMIO regions
from PCI device BARs as dma-buf objects, enabling safe sharing of non-struct
page memory with controlled lifetime management. This allows RDMA and other
subsystems to import dma-buf FDs and build them into memory regions for PCI
P2P operations.

The series supports a use case for SPDK where a NVMe device will be owned
by SPDK through VFIO but interacting with a RDMA device. The RDMA device
may directly access the NVMe CMB or directly manipulate the NVMe device's
doorbell using PCI P2P.

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
This is based on
https://lore.kernel.org/all/20250307052248.405803-1-vivek.kasireddy@intel.com/
but heavily rewritten to be based on DMA physical API.
-----------------------------------------------------------------------
The WIP branch can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=dmabuf-vfio

Thanks

Leon Romanovsky (8):
  PCI/P2PDMA: Remove redundant bus_offset from map state
  PCI/P2PDMA: Introduce p2pdma_provider structure for cleaner
    abstraction
  PCI/P2PDMA: Simplify bus address mapping API
  PCI/P2PDMA: Refactor to separate core P2P functionality from memory
    allocation
  PCI/P2PDMA: Export pci_p2pdma_map_type() function
  types: move phys_vec definition to common header
  vfio/pci: Enable peer-to-peer DMA transactions by default
  vfio/pci: Add dma-buf export support for MMIO regions

Vivek Kasireddy (2):
  vfio: Export vfio device get and put registration helpers
  vfio/pci: Share the core device pointer while invoking feature
    functions

 block/blk-mq-dma.c                 |   7 +-
 drivers/iommu/dma-iommu.c          |   4 +-
 drivers/pci/p2pdma.c               | 144 +++++++++----
 drivers/vfio/pci/Kconfig           |  20 ++
 drivers/vfio/pci/Makefile          |   2 +
 drivers/vfio/pci/vfio_pci_config.c |  22 +-
 drivers/vfio/pci/vfio_pci_core.c   |  59 ++++--
 drivers/vfio/pci/vfio_pci_dmabuf.c | 321 +++++++++++++++++++++++++++++
 drivers/vfio/pci/vfio_pci_priv.h   |  23 +++
 drivers/vfio/vfio_main.c           |   2 +
 include/linux/dma-buf.h            |   1 +
 include/linux/pci-p2pdma.h         | 114 +++++-----
 include/linux/types.h              |   5 +
 include/linux/vfio.h               |   2 +
 include/linux/vfio_pci_core.h      |   4 +
 include/uapi/linux/vfio.h          |  19 ++
 kernel/dma/direct.c                |   4 +-
 mm/hmm.c                           |   2 +-
 18 files changed, 631 insertions(+), 124 deletions(-)
 create mode 100644 drivers/vfio/pci/vfio_pci_dmabuf.c

-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
