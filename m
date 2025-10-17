Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3EABEA891
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 18:14:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B130245525
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 16:14:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3CB444431C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Oct 2025 16:14:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=jTCLpLij;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7EC6764789;
	Fri, 17 Oct 2025 16:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82A6CC4CEE7;
	Fri, 17 Oct 2025 16:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760717643;
	bh=CFcYtcEk7uP8GckKeqhWU4+P+5/c+ra0lxow6L4SUMs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jTCLpLij/ghgEicXuXTN+FZWe2vozg4SlZDHShFYvfPIUqub9PEm0BZPbrfwhk5Y5
	 kHa3fBtd0I8PMX+AkKdag0U4BIzd+49ChSgph58nyWLMOvvlEkwLSjIU2QA34zc5nd
	 BpBoDkebgbg0pPisYn/W4PGMd45z0hbP0jVSgkM4MgKyCqfaMb/c3ml+HtbaZZruJK
	 9IAS1YwF8RfmI7S0ETdhisl70QdOy43W8iOfuHMtQEZdTi632zsoLdFP1Hd/l02tPB
	 yhqVnuCW1LoEbFlWHwImXvx1hZKb3X24VRl34jQQI9Hw9D2yq1wpOpB62Ntmkc5Aj7
	 qEnbZ7Op0le6g==
Date: Fri, 17 Oct 2025 19:13:58 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251017161358.GC6199@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <20251017130249.GA309181@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017130249.GA309181@nvidia.com>
X-Rspamd-Queue-Id: 3CB444431C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TZEWAPKJMRZ7Q2GJPYCBKAR3GCGEEIUJ
X-Message-ID-Hash: TZEWAPKJMRZ7Q2GJPYCBKAR3GCGEEIUJ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZEWAPKJMRZ7Q2GJPYCBKAR3GCGEEIUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Oct 17, 2025 at 10:02:49AM -0300, Jason Gunthorpe wrote:
> On Mon, Oct 13, 2025 at 06:26:11PM +0300, Leon Romanovsky wrote:
> > +static void dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
> > +				   struct vfio_device_feature_dma_buf *dma_buf,
> > +				   struct vfio_region_dma_range *dma_ranges,
> > +				   struct p2pdma_provider *provider)
> > +{
> > +	struct pci_dev *pdev = priv->vdev->pdev;
> > +	phys_addr_t pci_start;
> > +	u32 i;
> > +
> > +	pci_start = pci_resource_start(pdev, dma_buf->region_index);
> > +	for (i = 0; i < dma_buf->nr_ranges; i++) {
> > +		priv->phys_vec[i].len = dma_ranges[i].length;
> > +		priv->phys_vec[i].paddr = pci_start + dma_ranges[i].offset;
> > +		priv->size += priv->phys_vec[i].len;
> > +	}
> 
> This is missing validation, the userspace can pass in any
> length/offset but the resource is of limited size. Like this:
> 
> static int dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
> 				  struct vfio_device_feature_dma_buf *dma_buf,
> 				  struct vfio_region_dma_range *dma_ranges,
> 				  struct p2pdma_provider *provider)
> {
> 	struct pci_dev *pdev = priv->vdev->pdev;
> 	phys_addr_t len = pci_resource_len(pdev, dma_buf->region_index);
> 	phys_addr_t pci_start;
> 	phys_addr_t pci_last;
> 	u32 i;
> 
> 	if (!len)
> 		return -EINVAL;
> 	pci_start = pci_resource_start(pdev, dma_buf->region_index);
> 	pci_last = pci_start + len - 1;
> 	for (i = 0; i < dma_buf->nr_ranges; i++) {
> 		phys_addr_t last;
> 
> 		if (!dma_ranges[i].length)
> 			return -EINVAL;
> 
> 		if (check_add_overflow(pci_start, dma_ranges[i].offset,
> 				       &priv->phys_vec[i].paddr) ||
> 		    check_add_overflow(priv->phys_vec[i].paddr,
> 				       dma_ranges[i].length - 1, &last))
> 			return -EOVERFLOW;
> 		if (last > pci_last)
> 			return -EINVAL;
> 
> 		priv->phys_vec[i].len = dma_ranges[i].length;
> 		priv->size += priv->phys_vec[i].len;
> 	}
> 	priv->nr_ranges = dma_buf->nr_ranges;
> 	priv->provider = provider;
> 	return 0;
> }

I have these checks in validate_dmabuf_input(). Do you think that I need
to add extra checks?

Thanks

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
