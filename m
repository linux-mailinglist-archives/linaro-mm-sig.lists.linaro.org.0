Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1631C6EEA6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:33:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C0F13F8FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:33:20 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id E39213F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:32:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fugn6SXe;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1FCD8433F7;
	Wed, 19 Nov 2025 13:32:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80F49C116D0;
	Wed, 19 Nov 2025 13:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763559173;
	bh=xSg1qo4eywYavdQS8dmG/E50BvlEVMWFbME3wXOYqAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fugn6SXe3G4/lghJftzverkKri5Zm6llziGFELpjSdO5rFXibaH9e3wtAHC8eYq0A
	 UHDxjWoty5cjHUhouVKrIOhuKM9z7mexk/F5r4cf7BxkwPnbErmXBmxpeleMMNnVNp
	 Zn2bBiJcVDshc8OQL4VrNwTENPVUYBtgD3PYJarKK+WMN7WiwzSdhiNC8St3ekVG9T
	 MppaNiyGtAujQGVj62oii6C8Mlzol4XrwMJkNVyNsz6rtOtPKYXJ1wwf8GpAxLr+PZ
	 rp7GRTmkkKYO75+nzC3UJyt0A8Qyuha45HbfXhXuCmDdddQ4ykA2clId10wnbfNPl0
	 6tfxCzsiPdxfQ==
Date: Wed, 19 Nov 2025 15:32:48 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <20251119133248.GC18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <aR0J8zHtfe/j4ajU@Asurada-Nvidia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aR0J8zHtfe/j4ajU@Asurada-Nvidia>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	BLOCKLISTDE_FAIL(0.00)[100.75.92.58:server fail,172.234.252.31:query timed out];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E39213F788
X-Spamd-Bar: ---
Message-ID-Hash: 3MPCOW5SE2ZYFIE3C2WH7L7NILEJIDON
X-Message-ID-Hash: 3MPCOW5SE2ZYFIE3C2WH7L7NILEJIDON
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
 , kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Mastro <amastro@fb.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3MPCOW5SE2ZYFIE3C2WH7L7NILEJIDON/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 18, 2025 at 04:06:11PM -0800, Nicolin Chen wrote:
> On Tue, Nov 11, 2025 at 11:57:48AM +0200, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Add dma_buf_map() and dma_buf_unmap() helpers to convert an array of
> > MMIO physical address ranges into scatter-gather tables with proper
> > DMA mapping.
> > 
> > These common functions are a starting point and support any PCI
> > drivers creating mappings from their BAR's MMIO addresses. VFIO is one
> > case, as shortly will be RDMA. We can review existing DRM drivers to
> > refactor them separately. We hope this will evolve into routines to
> > help common DRM that include mixed CPU and MMIO mappings.
> > 
> > Compared to the dma_map_resource() abuse this implementation handles
> > the complicated PCI P2P scenarios properly, especially when an IOMMU
> > is enabled:
> > 
> >  - Direct bus address mapping without IOVA allocation for
> >    PCI_P2PDMA_MAP_BUS_ADDR, using pci_p2pdma_bus_addr_map(). This
> >    happens if the IOMMU is enabled but the PCIe switch ACS flags allow
> >    transactions to avoid the host bridge.
> > 
> >    Further, this handles the slightly obscure, case of MMIO with a
> >    phys_addr_t that is different from the physical BAR programming
> >    (bus offset). The phys_addr_t is converted to a dma_addr_t and
> >    accommodates this effect. This enables certain real systems to
> >    work, especially on ARM platforms.
> > 
> >  - Mapping through host bridge with IOVA allocation and DMA_ATTR_MMIO
> >    attribute for MMIO memory regions (PCI_P2PDMA_MAP_THRU_HOST_BRIDGE).
> >    This happens when the IOMMU is enabled and the ACS flags are forcing
> >    all traffic to the IOMMU - ie for virtualization systems.
> > 
> >  - Cases where P2P is not supported through the host bridge/CPU. The
> >    P2P subsystem is the proper place to detect this and block it.
> > 
> > Helper functions fill_sg_entry() and calc_sg_nents() handle the
> > scatter-gather table construction, splitting large regions into
> > UINT_MAX-sized chunks to fit within sg->length field limits.
> > 
> > Since the physical address based DMA API forbids use of the CPU list
> > of the scatterlist this will produce a mangled scatterlist that has
> > a fully zero-length and NULL'd CPU list. The list is 0 length,
> > all the struct page pointers are NULL and zero sized. This is stronger
> > and more robust than the existing mangle_sg_table() technique. It is
> > a future project to migrate DMABUF as a subsystem away from using
> > scatterlist for this data structure.
> > 
> > Tested-by: Alex Mastro <amastro@fb.com>
> > Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> 
> Reviewed-by: Nicolin Chen <nicolinc@nvidia.com>
> 
> With a nit:
> 
> > +err_unmap_dma:
> > +	if (!i || !dma->state) {
> > +		; /* Do nothing */
> > +	} else if (dma_use_iova(dma->state)) {
> > +		dma_iova_destroy(attach->dev, dma->state, mapped_len, dir,
> > +				 DMA_ATTR_MMIO);
> > +	} else {
> > +		for_each_sgtable_dma_sg(&dma->sgt, sgl, i)
> > +			dma_unmap_phys(attach->dev, sg_dma_address(sgl),
> > +				       sg_dma_len(sgl), dir, DMA_ATTR_MMIO);
> 
> Would it be safer to skip dma_unmap_phys() the range [i, nents)?

[i, nents) is not supposed to be in SG list which we are iterating.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
