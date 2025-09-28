Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F883BA6AB2
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 28 Sep 2025 10:15:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F0A345777
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 28 Sep 2025 08:15:21 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 21ACD44011
	for <linaro-mm-sig@lists.linaro.org>; Sun, 28 Sep 2025 08:15:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KMtmLekY;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5CFB043587;
	Sun, 28 Sep 2025 08:15:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 846E1C4CEF0;
	Sun, 28 Sep 2025 08:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759047317;
	bh=de9qzleZA+R2N/Kmiw9QQMnYG50hXtyYa8gfYsMACWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KMtmLekYVZUE7aRFSU9mkhSkk4d2ntkHA9S03kyf74bsqgqfKRQVhafqnCSWyOedv
	 j3ALK52bH8Ib0Qcjq73RywxOiTyDmFQWvZrSLzgQu7h6BfCe96um8PU6yXa3j1+99V
	 FGKhJMG48c569FGlH//UPB1ED5dl4Ifq6JGVIKZvrAca3dREYBHHST1Q5so4+z4eaY
	 ccYycjRt92s6L0ewEIaOyQRQPsYgpAgUNUX7hHBLNc2rys8+IT/z1BVurmh2ZP0TbU
	 V0pJks/SLiWWs/cl5dVESCI2dRN+y9HXnOHfSrklek/YOtBiMhW81kGRirOKn9C5ba
	 xbPCNcierbgCQ==
Date: Sun, 28 Sep 2025 11:15:12 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250928081512.GD12165@unreal>
References: <20250922150032.3e3da410.alex.williamson@redhat.com>
 <20250923150414.GA2608121@nvidia.com>
 <20250923113041.38bee711.alex.williamson@redhat.com>
 <20250923174333.GE2608121@nvidia.com>
 <20250923120932.47df57b2.alex.williamson@redhat.com>
 <20250925070314.GA12165@unreal>
 <20250925115308.GT2617119@nvidia.com>
 <20250925163131.22a2c09b.alex.williamson@redhat.com>
 <20250925230236.GB2617119@nvidia.com>
 <20250926081350.16bb66c8.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250926081350.16bb66c8.alex.williamson@redhat.com>
X-Rspamd-Queue-Id: 21ACD44011
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
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
Message-ID-Hash: H5VUGNA4YELLDUVPHOV2GPUUZSRFEZ6G
X-Message-ID-Hash: H5VUGNA4YELLDUVPHOV2GPUUZSRFEZ6G
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/10] PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H5VUGNA4YELLDUVPHOV2GPUUZSRFEZ6G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Sep 26, 2025 at 08:13:50AM -0600, Alex Williamson wrote:
> On Thu, 25 Sep 2025 20:02:36 -0300
> Jason Gunthorpe <jgg@nvidia.com> wrote:
> 
> > On Thu, Sep 25, 2025 at 04:31:31PM -0600, Alex Williamson wrote:
> > > On Thu, 25 Sep 2025 08:53:08 -0300
> > > Jason Gunthorpe <jgg@nvidia.com> wrote:
> > >   
> > > > On Thu, Sep 25, 2025 at 10:03:14AM +0300, Leon Romanovsky wrote:
> > > >   
> > > > > > It would at least make sense to me then to store the provider on the
> > > > > > vfio_pci_dma_buf object at the time of the get feature call rather than
> > > > > > vfio_pci_core_init_dev() though.  That would eliminate patch 08/ and
> > > > > > the inline #ifdefs.    
> > > > > 
> > > > > I'll change it now. If "enable" function goes to be "get" function, we
> > > > > won't need to store anything in vfio_pci_dma_buf too. At the end, we
> > > > > have exactly two lines "provider = priv->vdev->provider[priv->bar];",
> > > > > which can easily be changed to be "provider = pcim_p2pdma_provider(priv->vdev->pdev, priv->bar)"    
> > > > 
> > > > Not without some kind of locking change. I'd keep the
> > > > priv->vdev->provider[priv->bar] because setup during probe doesn't
> > > > need special locking.  
> > > 
> > > Why do we need to store the provider on the vfio_pci_core_device at
> > > probe though, we can get it later via pcim_p2pdma_provider().   
> > 
> > Because you'd need some new locking to prevent races.
> 
> The race is avoided if we simply call pcim_p2pdma_provider() during
> probe.  We don't need to save the returned provider.  That's where it
> seems like pulling the setup out to a separate function would eliminate
> this annoying BAR# arg.
>  
> > Besides, the model here should be to call the function once during
> > probe and get back the allocated provider. The fact internally it is
> > kind of nutzo still shouldn't leak out as a property of the ABI.
> > 
> > I would like to remove this weird behavior where it caches things
> > inside the struct device. That's not normal for an API to do that, it
> > is only done for the genalloc path that this doesn't use.
> 
> My goal in caching the provider on the vfio p2pdma object was to avoid
> caching it on the vfio_pci_core_device, but now we're storing it on the
> struct device, the vfio_pci_core_device, AND the vfio p2pdma object.
> Given the current state that it's stored on the struct device, I think
> we only need a setup call during probe (that could be stubbed out
> rather than #ifdef'd), then cache the provider on the vfio p2pdma
> object when a dmabuf is configured.  Thanks,

I can do it.

Thanks

> 
> Alex
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
