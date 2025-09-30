Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 893ADBABEE2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 09:57:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44A2A44761
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 07:57:56 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3B8BC3F710
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 07:57:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lKEnQkLh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6F41843B90;
	Tue, 30 Sep 2025 07:57:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 879DEC4CEF0;
	Tue, 30 Sep 2025 07:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759219073;
	bh=i3BtTTr7nZIJz33RyVUpfLlfxu4epWOssHy+VLrcscQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lKEnQkLh/7QlrpMJsb5yRxE5AbBpzJMJNRvLELIbdmZqsMudIfJkl5IIjVlvWd45t
	 9CdHZPBwdsFyTXltr7C+E/ikvBD8M3GKILT1uJbM/dqVtkzxxeI95NEbtW/zrd+Ep5
	 UJKj7ByQ5cHM7iDUE5YdLldljkvDneKjj7T0/Jl4BAwLIv6rMPS82rffMeFvtqMlii
	 rJtHqvVmDH+CUonBV/bnseaOumQHFjDS8yuzzqj15+2YNU8QWaz2EfS70aqZHG3yUz
	 GrVG3wKTr88ok96rH2QGVO9OvriGTC+fSkO/DeP0k5odor2Iw88fzatiG+tDDQkt+a
	 OH7f8EY3JlCxQ==
Date: Tue, 30 Sep 2025 10:57:48 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250930075748.GF324804@unreal>
References: <cover.1759070796.git.leon@kernel.org>
 <b1b44823f93fd9e7fa73dc165141d716cb74fa90.1759070796.git.leon@kernel.org>
 <20250929151740.21f001e3.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250929151740.21f001e3.alex.williamson@redhat.com>
X-Rspamd-Queue-Id: 3B8BC3F710
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 76B7OZ6R3RMCY56BPR3CMAHKWEHNC7UC
X-Message-ID-Hash: 76B7OZ6R3RMCY56BPR3CMAHKWEHNC7UC
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 07/10] vfio/pci: Add dma-buf export config for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/76B7OZ6R3RMCY56BPR3CMAHKWEHNC7UC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 29, 2025 at 03:17:40PM -0600, Alex Williamson wrote:
> On Sun, 28 Sep 2025 17:50:17 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Add new kernel config which indicates support for dma-buf export
> > of MMIO regions, which implementation is provided in next patches.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/Kconfig | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
> > index 2b0172f54665..55ae888bf26a 100644
> > --- a/drivers/vfio/pci/Kconfig
> > +++ b/drivers/vfio/pci/Kconfig
> > @@ -55,6 +55,26 @@ config VFIO_PCI_ZDEV_KVM
> >  
> >  	  To enable s390x KVM vfio-pci extensions, say Y.
> >  
> > +config VFIO_PCI_DMABUF
> > +	bool "VFIO PCI extensions for DMA-BUF"
> > +	depends on VFIO_PCI_CORE
> > +	depends on PCI_P2PDMA && DMA_SHARED_BUFFER
> > +	default y
> > +	help
> > +	  Enable support for VFIO PCI extensions that allow exporting
> > +	  device MMIO regions as DMA-BUFs for peer devices to access via
> > +	  peer-to-peer (P2P) DMA.
> > +
> > +	  This feature enables a VFIO-managed PCI device to export a portion
> > +	  of its MMIO BAR as a DMA-BUF file descriptor, which can be passed
> > +	  to other userspace drivers or kernel subsystems capable of
> > +	  initiating DMA to that region.
> > +
> > +	  Say Y here if you want to enable VFIO DMABUF-based MMIO export
> > +	  support for peer-to-peer DMA use cases.
> > +
> > +	  If unsure, say N.
> > +
> >  source "drivers/vfio/pci/mlx5/Kconfig"
> >  
> >  source "drivers/vfio/pci/hisilicon/Kconfig"
> 
> This is only necessary if we think there's a need to build a kernel with
> P2PDMA and VFIO_PCI, but not VFIO_PCI_DMABUF.  Does that need really
> exist?

It is used to filter build of vfio_pci_dmabuf.c - drivers/vfio/pci/Makefile:
vfio-pci-core-$(CONFIG_VFIO_PCI_DMABUF) += vfio_pci_dmabuf.o

> 
> I also find it unusual to create the Kconfig before adding the
> supporting code.  Maybe this could be popped to the end or rolled into
> the last patch if we decided to keep it.  Thanks,

It is leftover from previous version, I can squash it, but first we need
to decide what to do with pcim_p2pdma_init() call, if it needs to be
guarded or not.

Thanks

> 
> Alex
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
