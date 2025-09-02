Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 076D8B4019A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 14:58:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90CD545400
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 12:58:38 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 6948144552
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 12:58:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Y03rLipQ;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BD99743995;
	Tue,  2 Sep 2025 12:58:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08555C4CEED;
	Tue,  2 Sep 2025 12:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756817909;
	bh=CM1gzdTND9tJKwW5aJTGTYza7PZbOeFeI+0kiHDsfk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y03rLipQ172HNCWdzae1SvWeUKEZCuyy4iT/sxqmRUG2Mk9XAm0JD2Cf43Q4ccXI4
	 vJ3zCW+7bhV2I/8W3AQ/zj+cPA9rZhBtVccOf2Syvu2xP3GZZOcRUzTwD1l9Dszm61
	 coTmrjtssASLghJ0YobZBbn3b5yvo1gmHUuMYKl3N+eOUDvW9dLkEd42uz6ExoscbL
	 AN9nGwSWGJAg2aXnrk/T8mIOnh8SJFTLZoRnFwoAw9p/ZVbj1um54ETkG1UmVJ0yaX
	 k1mi0ufFXvprbr0GmTrnZJZPMNtSonfXc/UWWvtDhkzWmzN/ZJ+J57M3aRwqpyvkrT
	 ePb8jIU/SceyA==
Date: Tue, 2 Sep 2025 15:58:24 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250902125824.GH10073@unreal>
References: <cover.1754311439.git.leon@kernel.org>
 <edb2ec654fc27ba8f73695382ab0a029f18422b5.1754311439.git.leon@kernel.org>
 <20250806160201.2b72e7a0.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806160201.2b72e7a0.alex.williamson@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6948144552
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: SZAZEUKPBCP57G4T62KWTF7HCG7CO6UG
X-Message-ID-Hash: SZAZEUKPBCP57G4T62KWTF7HCG7CO6UG
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 08/10] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SZAZEUKPBCP57G4T62KWTF7HCG7CO6UG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Aug 06, 2025 at 04:02:01PM -0600, Alex Williamson wrote:
> On Mon,  4 Aug 2025 16:00:43 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Make sure that all VFIO PCI devices have peer-to-peer capabilities
> > enables, so we would be able to export their MMIO memory through DMABUF,
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_core.c | 4 ++++
> >  include/linux/vfio_pci_core.h    | 1 +
> >  2 files changed, 5 insertions(+)
> > 
> > diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> > index 31bdb9110cc0f..df9a32d3deac9 100644
> > --- a/drivers/vfio/pci/vfio_pci_core.c
> > +++ b/drivers/vfio/pci/vfio_pci_core.c
> > @@ -28,6 +28,7 @@
> >  #include <linux/nospec.h>
> >  #include <linux/sched/mm.h>
> >  #include <linux/iommufd.h>
> > +#include <linux/pci-p2pdma.h>
> >  #if IS_ENABLED(CONFIG_EEH)
> >  #include <asm/eeh.h>
> >  #endif
> > @@ -2088,6 +2089,9 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
> >  	INIT_LIST_HEAD(&vdev->dummy_resources_list);
> >  	INIT_LIST_HEAD(&vdev->ioeventfds_list);
> >  	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
> > +	vdev->provider = pci_p2pdma_enable(vdev->pdev);
> > +	if (IS_ERR(vdev->provider))
> > +		return PTR_ERR(vdev->provider);
> 
> I think this just made all vfio-pci drivers functionally dependent on
> CONFIG_PCI_P2PDMA.  Seems at best exporting a dma-buf should be
> restricted if this fails.  Thanks,

It is temporary solution in next patch "vfio/pci: Add dma-buf export
support for MMIO regions", the strict ifdef is added.

  2107 #ifdef CONFIG_VFIO_PCI_DMABUF
  2108         vdev->provider = pci_p2pdma_enable(vdev->pdev);
  2109         if (IS_ERR(vdev->provider))
  2110                 return PTR_ERR(vdev->provider);
  2111
  2112         INIT_LIST_HEAD(&vdev->dmabufs);
  2113 #endif

I will split "vfio/pci: Add dma-buf export ..." patch to introduce CONFIG_VFIO_PCI_DMABUF
before this "vfio/pci: Enable peer-to-peer ..." patch.

Thanks

> 
> Alex
> 
> >  	init_rwsem(&vdev->memory_lock);
> >  	xa_init(&vdev->ctx);
> >  
> > diff --git a/include/linux/vfio_pci_core.h b/include/linux/vfio_pci_core.h
> > index fbb472dd99b36..b017fae251811 100644
> > --- a/include/linux/vfio_pci_core.h
> > +++ b/include/linux/vfio_pci_core.h
> > @@ -94,6 +94,7 @@ struct vfio_pci_core_device {
> >  	struct vfio_pci_core_device	*sriov_pf_core_dev;
> >  	struct notifier_block	nb;
> >  	struct rw_semaphore	memory_lock;
> > +	struct p2pdma_provider  *provider;
> >  };
> >  
> >  /* Will be exported for vfio pci drivers usage */
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
