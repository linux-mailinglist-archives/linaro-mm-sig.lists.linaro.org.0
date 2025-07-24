Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F70B10007
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 07:45:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA7B1413EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 05:45:01 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 11E25413EF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jul 2025 05:44:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=C6jGoMhe;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 63A384456A;
	Thu, 24 Jul 2025 05:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E9B6C4CEED;
	Thu, 24 Jul 2025 05:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753335888;
	bh=U4I+CEURF422p0sGN26ha9HaOt720UUk24J+vl+6mjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C6jGoMhePxWs2G1RnhF59gG3AXap97mUUE40SE0Rm0zZuH4EkRp+dPag/rTKFTJtk
	 aIH8UT5BEZzz8AS2s95p9XeW+qVBOtlMdJU9OcofPSwraKN+wgvSIt7eeHshgWCTsT
	 z/pst5aWEXs8QqfceKtXDCpdgWnxSY7hlyYDAOq+nTfBlhT9pT/3LCgyEKtkwCcEYG
	 Qc+p/WDMbD1kDL3Wqi3br3L11qZxkfSyOQLi2R2Bu3EOjG1wVamcR4BfC5KFfACpsJ
	 9GcKqEIPKMc7PjakSUojQydViLJlolHSBB2JOKHxDcIAki1C99B8uS3kEZjWAxtRnX
	 jtT9QAxe4rLNA==
Date: Thu, 24 Jul 2025 08:44:43 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <20250724054443.GP402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com>
 <IA0PR11MB7185E487736B8B4CD70600DEF85EA@IA0PR11MB7185.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7185E487736B8B4CD70600DEF85EA@IA0PR11MB7185.namprd11.prod.outlook.com>
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 11E25413EF
X-Spamd-Bar: ---
Message-ID-Hash: TUA6HZRQLPOLRAFYGHVHJDHG7CUFWPSM
X-Message-ID-Hash: TUA6HZRQLPOLRAFYGHVHJDHG7CUFWPSM
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@lina
 ro.org>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TUA6HZRQLPOLRAFYGHVHJDHG7CUFWPSM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 24, 2025 at 05:13:49AM +0000, Kasireddy, Vivek wrote:
> Hi Leon,
> 
> > Subject: [PATCH 10/10] vfio/pci: Add dma-buf export support for MMIO
> > regions
> > 
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Add support for exporting PCI device MMIO regions through dma-buf,
> > enabling safe sharing of non-struct page memory with controlled
> > lifetime management. This allows RDMA and other subsystems to import
> > dma-buf FDs and build them into memory regions for PCI P2P operations.
> > 
> > The implementation provides a revocable attachment mechanism using
> > dma-buf move operations. MMIO regions are normally pinned as BARs
> > don't change physical addresses, but access is revoked when the VFIO
> > device is closed or a PCI reset is issued. This ensures kernel
> > self-defense against potentially hostile userspace.
> > 
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/Kconfig           |  20 ++
> >  drivers/vfio/pci/Makefile          |   2 +
> >  drivers/vfio/pci/vfio_pci_config.c |  22 +-
> >  drivers/vfio/pci/vfio_pci_core.c   |  25 ++-
> >  drivers/vfio/pci/vfio_pci_dmabuf.c | 321 +++++++++++++++++++++++++++++
> >  drivers/vfio/pci/vfio_pci_priv.h   |  23 +++
> >  include/linux/dma-buf.h            |   1 +
> >  include/linux/vfio_pci_core.h      |   3 +
> >  include/uapi/linux/vfio.h          |  19 ++
> >  9 files changed, 431 insertions(+), 5 deletions(-)
> >  create mode 100644 drivers/vfio/pci/vfio_pci_dmabuf.c

<...>

> > +static int validate_dmabuf_input(struct vfio_pci_core_device *vdev,
> > +				 struct vfio_device_feature_dma_buf *dma_buf)
> > +{
> > +	struct pci_dev *pdev = vdev->pdev;
> > +	u32 bar = dma_buf->region_index;
> > +	u64 offset = dma_buf->offset;
> > +	u64 len = dma_buf->length;
> > +	resource_size_t bar_size;
> > +	u64 sum;
> > +
> > +	/*
> > +	 * For PCI the region_index is the BAR number like  everything else.
> > +	 */
> > +	if (bar >= VFIO_PCI_ROM_REGION_INDEX)
> > +		return -ENODEV;

<...>

> > +/**
> > + * Upon VFIO_DEVICE_FEATURE_GET create a dma_buf fd for the
> > + * regions selected.
> > + *
> > + * open_flags are the typical flags passed to open(2), eg O_RDWR,
> > O_CLOEXEC,
> > + * etc. offset/length specify a slice of the region to create the dmabuf from.
> > + * nr_ranges is the total number of (P2P DMA) ranges that comprise the
> > dmabuf.
> Any particular reason why you dropped the option (nr_ranges) of creating a
> single dmabuf from multiple ranges of an MMIO region?

I did it for two reasons. First, I wanted to simplify the code in order
to speed-up discussion over the patchset itself. Second, I failed to
find justification for need of multiple ranges, as the number of BARs
are limited by VFIO_PCI_ROM_REGION_INDEX (6) and same functionality
can be achieved by multiple calls to DMABUF import.

> 
> Restricting the dmabuf to a single range (or having to create multiple dmabufs
> to represent multiple regions/ranges associated with a single scattered buffer)
> would be very limiting and may not work in all cases. For instance, in my use-case,
> I am trying to share a large (4k mode) framebuffer (FB) located in GPU's VRAM
> between two (p2p compatible) GPU devices. And, this would probably not work
> given that allocating a large contiguous FB (nr_ranges = 1) in VRAM may not be
> feasible when there is memory pressure.

Can you please help me and point to the place in the code where this can fail?
I'm probably missing something basic as there are no large allocations
in the current patchset.

> 
> Furthermore, since you are adding a new UAPI with this patch/feature, as you know,
> we cannot go back and tweak it (to add support for nr_ranges > 1) should there
> be a need in the future, but you can always use nr_ranges = 1 anytime. Therefore,
> I think it makes sense to be flexible in terms of the number of ranges to include
> while creating a dmabuf instead of restricting ourselves to one range.

I'm not a big fan of over-engineering. Let's first understand if this
case is needed.

Thanks

> 
> Thanks,
> Vivek
> 
> > + *
> > + * Return: The fd number on success, -1 and errno is set on failure.
> > + */
> > +#define VFIO_DEVICE_FEATURE_DMA_BUF 11
> > +
> > +struct vfio_device_feature_dma_buf {
> > +	__u32	region_index;
> > +	__u32	open_flags;
> > +	__u64	offset;
> > +	__u64	length;
> > +};
> > +
> >  /* -------- API for Type1 VFIO IOMMU -------- */
> > 
> >  /**
> > --
> > 2.50.1
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
