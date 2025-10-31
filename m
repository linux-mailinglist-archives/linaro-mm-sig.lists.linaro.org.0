Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABBAC2372C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Oct 2025 07:49:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DF2D3F7EC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Oct 2025 06:49:09 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7B5D33F7EC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 06:48:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=a1h6FTwN;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DAAB14386B;
	Fri, 31 Oct 2025 06:48:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30340C4CEF1;
	Fri, 31 Oct 2025 06:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761893335;
	bh=R5M/BZuEUeO6MNnujDu/RdiqPqOvxifgK+E/jWj/M64=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a1h6FTwN+q+A4td6LvgwCZbm56rsVEOnHoTSFeQoA8kEIgslHwi8eKhmcAv9St0Ok
	 W80x4Wj8UXuXSY+0aKudJ5lih9rGfReoMhWTywfeghp1RUox6v4uqV5oNv5qbYEg56
	 QbNeAscqzR9+MyI87V97tP4x1PtA/rtR2xTBusZX/rYO0ZXMXvRQOdHykNpR4S0/F0
	 1WmfFbl2veaaeJ/gkMhFWNLbBDpTqt/7ZKw1BnTuN4+koJ6EwRipT90WVcZLqWqcZF
	 nn5bH+8Pi8nXwLiOrgVS7RmUROm+rQImaoV3BWpLLmivAW/zoQbjZp2iEz7zcV0W1P
	 XuCupc4+xACzg==
Date: Fri, 31 Oct 2025 08:48:51 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20251031064851.GA74544@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <20251030143836.66cdf116@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251030143836.66cdf116@shazbot.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7B5D33F7EC
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: QRNF7HOK3XXALQWJGUCO6X4V5HTFYRA6
X-Message-ID-Hash: QRNF7HOK3XXALQWJGUCO6X4V5HTFYRA6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QRNF7HOK3XXALQWJGUCO6X4V5HTFYRA6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 30, 2025 at 02:38:36PM -0600, Alex Williamson wrote:
> On Mon, 13 Oct 2025 18:26:11 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> > diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> > index fe247d0e2831..56b1320238a9 100644
> > --- a/drivers/vfio/pci/vfio_pci_core.c
> > +++ b/drivers/vfio/pci/vfio_pci_core.c
> > @@ -1511,6 +1520,19 @@ int vfio_pci_core_ioctl_feature(struct vfio_device *device, u32 flags,
> >  		return vfio_pci_core_pm_exit(vdev, flags, arg, argsz);
> >  	case VFIO_DEVICE_FEATURE_PCI_VF_TOKEN:
> >  		return vfio_pci_core_feature_token(vdev, flags, arg, argsz);
> > +	case VFIO_DEVICE_FEATURE_DMA_BUF:
> > +		if (device->ops->ioctl != vfio_pci_core_ioctl)
> > +			/*
> > +			 * Devices that overwrite general .ioctl() callback
> > +			 * usually do it to implement their own
> > +			 * VFIO_DEVICE_GET_REGION_INFO handlerm and they present
> 
> Typo, "handlerm"

Thanks, this part of code is going to be different in v6.

> 

<...>

> > @@ -2482,6 +2506,10 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
> >  
> >  	ret = pci_reset_bus(pdev);
> >  
> > +	list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
> > +		if (__vfio_pci_memory_enabled(vdev))
> > +			vfio_pci_dma_buf_move(vdev, false);
> > +
> >  	vdev = list_last_entry(&dev_set->device_list,
> >  			       struct vfio_pci_core_device, vdev.dev_set_list);
> >  
> 
> This needs to be placed in the existing undo loop with the up_write(),
> otherwise it can be missed in the error case.

I'll move, but it caused me to wonder what did you want to achieve with
this "vdev = list_last_entry ..." line? vdev is overwritten immediately
after that line.

> 
> > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > new file mode 100644
> > index 000000000000..eaba010777f3
> > --- /dev/null
> > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > +static unsigned int calc_sg_nents(struct vfio_pci_dma_buf *priv,
> > +				  struct dma_iova_state *state)
> > +{
> > +	struct phys_vec *phys_vec = priv->phys_vec;
> > +	unsigned int nents = 0;
> > +	u32 i;
> > +
> > +	if (!state || !dma_use_iova(state))
> > +		for (i = 0; i < priv->nr_ranges; i++)
> > +			nents += DIV_ROUND_UP(phys_vec[i].len, UINT_MAX);
> > +	else
> > +		/*
> > +		 * In IOVA case, there is only one SG entry which spans
> > +		 * for whole IOVA address space, but we need to make sure
> > +		 * that it fits sg->length, maybe we need more.
> > +		 */
> > +		nents = DIV_ROUND_UP(priv->size, UINT_MAX);
> 
> I think we're arguably running afoul of the coding style standard here
> that this is not a single simple statement and should use braces.
> 

<...>

> > +err_unmap_dma:
> > +	if (!i || !state)
> > +		; /* Do nothing */
> > +	else if (dma_use_iova(state))
> > +		dma_iova_destroy(attachment->dev, state, mapped_len, dir,
> > +				 attrs);
> > +	else
> > +		for_each_sgtable_dma_sg(sgt, sgl, i)
> > +			dma_unmap_phys(attachment->dev, sg_dma_address(sgl),
> > +					sg_dma_len(sgl), dir, attrs);
> 
> Same, here for braces.
> 

<...>

> > +	if (!state)
> > +		; /* Do nothing */
> > +	else if (dma_use_iova(state))
> > +		dma_iova_destroy(attachment->dev, state, priv->size, dir,
> > +				 attrs);
> > +	else
> > +		for_each_sgtable_dma_sg(sgt, sgl, i)
> > +			dma_unmap_phys(attachment->dev, sg_dma_address(sgl),
> > +				       sg_dma_len(sgl), dir, attrs);
> > +
> 
> Here too.

I will change it, but it is worth to admit that I'm consistent in my
coding style.

> 
> > +	sg_free_table(sgt);
> > +	kfree(sgt);
> > +}
> ...
> > diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> > index 75100bf009ba..63214467c875 100644
> > --- a/include/uapi/linux/vfio.h
> > +++ b/include/uapi/linux/vfio.h
> > @@ -1478,6 +1478,31 @@ struct vfio_device_feature_bus_master {
> >  };
> >  #define VFIO_DEVICE_FEATURE_BUS_MASTER 10
> >  
> > +/**
> > + * Upon VFIO_DEVICE_FEATURE_GET create a dma_buf fd for the
> > + * regions selected.
> > + *
> > + * open_flags are the typical flags passed to open(2), eg O_RDWR, O_CLOEXEC,
> > + * etc. offset/length specify a slice of the region to create the dmabuf from.
> > + * nr_ranges is the total number of (P2P DMA) ranges that comprise the dmabuf.
> > + *
> 
> Probably worth noting that .flags should be zero, I see we enforce
> that.  Thanks,

Added, thanks

> 
> Alex
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
