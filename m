Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B545BB0346
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Oct 2025 13:39:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EA914575D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Oct 2025 11:39:46 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 542634486F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Oct 2025 11:39:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=hyfhWXjK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B93506062C;
	Wed,  1 Oct 2025 11:39:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB4B8C4CEF4;
	Wed,  1 Oct 2025 11:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759318782;
	bh=Ezy7+mtT4eps9wTpBlbZkP1mFfCZBHTp5E+V6UHQD4c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hyfhWXjKKeqTsPAKqst9VMRZTuHnr79Sn85JR9oApnhJZe1TO5oXMimv1OZ2K5t1Q
	 9MiMpANH+0eOS4bcbwboljFqvrlf7T7uAAqpI3hYX8SgDpEKW89XvVN/UZ5DYJEoku
	 FCsdu0jIgr5dBxYfu2TGJvAqsoQRkfMXMl/1F9lyU95/QyzDKaMdhpvL1V7Ya/B2mh
	 pfedbt0u93fTYkQVaxWkIHD9fK5BbrTidNe/CqVFgP1WMiwVDvBVcc7cf3aq3rnWzp
	 eISxrrXcYtNF0j6R+nLIOAcxLwM1v6bQ7c0J8gD109M3HZIzW3eQE3Urg+TrWFUG6k
	 2FEfVcfX3pxjQ==
Date: Wed, 1 Oct 2025 14:39:37 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20251001113937.GH324804@unreal>
References: <cover.1759070796.git.leon@kernel.org>
 <b1b44823f93fd9e7fa73dc165141d716cb74fa90.1759070796.git.leon@kernel.org>
 <20250929151740.21f001e3.alex.williamson@redhat.com>
 <20250930075748.GF324804@unreal>
 <20250930100758.1605d5a5.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930100758.1605d5a5.alex.williamson@redhat.com>
X-Rspamd-Queue-Id: 542634486F
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
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R7O3ZMTJOKELYKRZ4S2L7CKGFEAICLDX
X-Message-ID-Hash: R7O3ZMTJOKELYKRZ4S2L7CKGFEAICLDX
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 07/10] vfio/pci: Add dma-buf export config for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R7O3ZMTJOKELYKRZ4S2L7CKGFEAICLDX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Sep 30, 2025 at 10:07:58AM -0600, Alex Williamson wrote:
> On Tue, 30 Sep 2025 10:57:48 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> > On Mon, Sep 29, 2025 at 03:17:40PM -0600, Alex Williamson wrote:
> > > On Sun, 28 Sep 2025 17:50:17 +0300
> > > Leon Romanovsky <leon@kernel.org> wrote:
> > >   
> > > > From: Leon Romanovsky <leonro@nvidia.com>
> > > > 
> > > > Add new kernel config which indicates support for dma-buf export
> > > > of MMIO regions, which implementation is provided in next patches.
> > > > 
> > > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > > ---
> > > >  drivers/vfio/pci/Kconfig | 20 ++++++++++++++++++++
> > > >  1 file changed, 20 insertions(+)
> > > > 
> > > > diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
> > > > index 2b0172f54665..55ae888bf26a 100644
> > > > --- a/drivers/vfio/pci/Kconfig
> > > > +++ b/drivers/vfio/pci/Kconfig
> > > > @@ -55,6 +55,26 @@ config VFIO_PCI_ZDEV_KVM
> > > >  
> > > >  	  To enable s390x KVM vfio-pci extensions, say Y.
> > > >  
> > > > +config VFIO_PCI_DMABUF
> > > > +	bool "VFIO PCI extensions for DMA-BUF"
> > > > +	depends on VFIO_PCI_CORE
> > > > +	depends on PCI_P2PDMA && DMA_SHARED_BUFFER
> > > > +	default y
> > > > +	help
> > > > +	  Enable support for VFIO PCI extensions that allow exporting
> > > > +	  device MMIO regions as DMA-BUFs for peer devices to access via
> > > > +	  peer-to-peer (P2P) DMA.
> > > > +
> > > > +	  This feature enables a VFIO-managed PCI device to export a portion
> > > > +	  of its MMIO BAR as a DMA-BUF file descriptor, which can be passed
> > > > +	  to other userspace drivers or kernel subsystems capable of
> > > > +	  initiating DMA to that region.
> > > > +
> > > > +	  Say Y here if you want to enable VFIO DMABUF-based MMIO export
> > > > +	  support for peer-to-peer DMA use cases.
> > > > +
> > > > +	  If unsure, say N.
> > > > +
> > > >  source "drivers/vfio/pci/mlx5/Kconfig"
> > > >  
> > > >  source "drivers/vfio/pci/hisilicon/Kconfig"  
> > > 
> > > This is only necessary if we think there's a need to build a kernel with
> > > P2PDMA and VFIO_PCI, but not VFIO_PCI_DMABUF.  Does that need really
> > > exist?  
> > 
> > It is used to filter build of vfio_pci_dmabuf.c - drivers/vfio/pci/Makefile:
> > vfio-pci-core-$(CONFIG_VFIO_PCI_DMABUF) += vfio_pci_dmabuf.o
> 
> Maybe my question of whether it needs to exist at all is too broad.
> Does it need to be a user visible Kconfig option?  Where do we see the
> need to preclude this feature from vfio-pci if the dependencies are
> enabled?

The dependencies are for the platform and not for the devices. For
example, hisilicon device mentioned in other email doesn't support
p2p, but the platform most likely support.

I don't have strong feelings about this config and at least for our use
case will always be enabled. I can hide it from the users.

> 
> > > I also find it unusual to create the Kconfig before adding the
> > > supporting code.  Maybe this could be popped to the end or rolled into
> > > the last patch if we decided to keep it.  Thanks,  
> > 
> > It is leftover from previous version, I can squash it, but first we need
> > to decide what to do with pcim_p2pdma_init() call, if it needs to be
> > guarded or not.
> 
> As in the other thread, I think it would be cleaner in an IS_ENABLED
> branch.  I'm tempted to suggest we filter out EOPNOTSUPP to allow it to
> be unconditional, but I understand your point with the list_head
> initialization.  Thanks,

We can add dmabuf list to struct unconditionally, as memory overhead is
negligible. It will allow us to drop IS_ENABLED() too.

Thanks

> 
> Alex
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
