Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F288BF1FB7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 17:04:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D95B03F762
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 15:04:27 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 142A73F757
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 15:04:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iRT5USF1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A31BE60271;
	Mon, 20 Oct 2025 15:04:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6DD1C4CEF9;
	Mon, 20 Oct 2025 15:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760972657;
	bh=opgDUacvsAEAblCjRwc/cnZnXjDHKNzApka9lSwmFm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iRT5USF1c9hlxYuIAOhCLi5vAK5WR7rom9xRkIU3R7gF7myd/1e5DMMfNCS0kUZkY
	 3iRkzX0tjSk5Oi94wjBXhi3wnlTtnIwsAvgfAKJFuquBcdXjW7d9WDWrPNIf5J0bU5
	 zVOo4RRrxdwbFsBukm+Rj6kIqO8vqJWtwlc9Wep5HFp36crF5d7piD0ABkB0lYukcY
	 occ87bgOGiq4SFUOt5aNiFNgE39VrrMYCKAhg7FXj21tnyeBL4evlgZwZyr9LIYUQF
	 TbY2GnPoLUsXHvGaif5VObAw2oxejIFZ08On78dvTXugRYsJ65uWf5lD//iEs7lnk9
	 fxqi91aJMPONw==
Date: Mon, 20 Oct 2025 18:04:12 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251020150412.GP6199@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <1044f7aa09836d63de964d4eb6e646b3071c1fdb.1760368250.git.leon@kernel.org>
 <aPHibioUFZV8Wnd1@infradead.org>
 <20251017115320.GF3901471@nvidia.com>
 <aPYqliGwJTcZznSX@infradead.org>
 <20251020125854.GL316284@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251020125854.GL316284@nvidia.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 142A73F757
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3RWBNGI25AG7JMLQJPEH5PC4YBKSADE2
X-Message-ID-Hash: 3RWBNGI25AG7JMLQJPEH5PC4YBKSADE2
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christoph Hellwig <hch@infradead.org>, Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/9] PCI/P2PDMA: Separate the mmap() support from the core logic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3RWBNGI25AG7JMLQJPEH5PC4YBKSADE2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 20, 2025 at 09:58:54AM -0300, Jason Gunthorpe wrote:
> On Mon, Oct 20, 2025 at 05:27:02AM -0700, Christoph Hellwig wrote:
> > On Fri, Oct 17, 2025 at 08:53:20AM -0300, Jason Gunthorpe wrote:
> > > On Thu, Oct 16, 2025 at 11:30:06PM -0700, Christoph Hellwig wrote:
> > > > On Mon, Oct 13, 2025 at 06:26:03PM +0300, Leon Romanovsky wrote:
> > > > > The DMA API now has a new flow, and has gained phys_addr_t support, so
> > > > > it no longer needs struct pages to perform P2P mapping.
> > > > 
> > > > That's news to me.  All the pci_p2pdma_map_state machinery is still
> > > > based on pgmaps and thus pages.
> > > 
> > > We had this discussion already three months ago:
> > > 
> > > https://lore.kernel.org/all/20250729131502.GJ36037@nvidia.com/
> > > 
> > > These couple patches make the core pci_p2pdma_map_state machinery work
> > > on struct p2pdma_provider, and pgmap is just one way to get a
> > > p2pdma_provider *
> > > 
> > > The struct page paths through pgmap go page->pgmap->mem to get
> > > p2pdma_provider.
> > > 
> > > The non-struct page paths just have a p2pdma_provider * without a
> > > pgmap. In this series VFIO uses
> > > 
> > > +	*provider = pcim_p2pdma_provider(pdev, bar);
> > > 
> > > To get the provider for a specific BAR.
> > 
> > And what protects that life time?  I've not seen anyone actually
> > building the proper lifetime management.  And if someone did the patches
> > need to clearly point to that.
> 
> It is this series!
> 
> The above API gives a lifetime that is driver bound. The calling
> driver must ensure it stops using provider and stops doing DMA with it
> before remove() completes.
> 
> This VFIO series does that through the move_notify callchain I showed
> in the previous email. This callchain is always triggered before
> remove() of the VFIO PCI driver is completed.
> 
> > > I think I've answered this three times now - for DMABUF the DMABUF
> > > invalidation scheme is used to control the lifetime and no DMA mapping
> > > outlives the provider, and the provider doesn't outlive the driver.
> > 
> > How?
> 
> I explained it in detail in the message you are repling to. If
> something is not clear can you please be more specific??
> 
> Is it the mmap in VFIO perhaps that is causing these questions?
> 
> VFIO uses a PFNMAP VMA, so you can't pin_user_page() it. It uses
> unmap_mapping_range() during its remove() path to get rid of the VMA
> PTEs.
> 
> The DMA activity doesn't use the mmap *at all*. It isn't like NVMe
> which relies on the ZONE_DEVICE pages and VMAs to link drivers
> togther.
> 
> Instead the DMABUF FD is used to pass the MMIO pages between VFIO and
> another driver. DMABUF has a built in invalidation mechanism that VFIO
> triggers before remove(). The invalidation removes access from the
> other driver.
> 
> This is different than NVMe which has no invalidation. NVMe does
> unmap_mapping_range() on the VMA and waits for all the short lived
> pgmap references to clear. We don't need anything like that because
> DMABUF invalidation is synchronous.
> 
> The full picture for VFIO is something like:
> 
> [startup]
>   MMIO is acquired from the pci_resource
>   p2p_providers are setup
> 
> [runtime]
>   MMIO is mapped into PFNMAP VMAs
>   MMIO is linked to a DMABUF FD
>   DMABUF FD gets DMA mapped using the p2p_provider
> 
> [unplug]
>   unmap_mapping_range() is called so all VMAs are emptied out and the
>   fault handler prevents new PTEs 
>     ** No access to the MMIO through VMAs is possible**
> 
>   vfio_pci_dma_buf_cleanup() is called which prevents new DMABUF
>   mappings from starting, and does dma_buf_move_notify() on all the
>   open DMABUF FDs to invalidate other drivers. Other drivers stop
>   doing DMA and we need to free the IOVA from the IOMMU/etc.
>     ** No DMA access from other drivers is possible now**
> 
>   Any still open DMABUF FD will fail inside VFIO immediately due to
>   the priv->revoked checks.
>     **No code touches the p2p_provider anymore**
> 
>   The p2p_provider is destroyed by devm.
> 
> > > Obviously you cannot use the new p2provider mechanism without some
> > > kind of protection against use after hot unplug, but it doesn't have
> > > to be struct page based.
> > 
> > And how does this interact with everyone else expecting pgmap based
> > lifetime management.
> 
> They continue to use pgmap and nothing changes for them.
> 
> The pgmap path always waited until nothing was using the pgmap and
> thus provider before allowing device driver remove() to complete.
> 
> The refactoring doesn't change the lifecycle model, it just provides
> entry points to access the driver bound lifetime model directly
> instead of being forced to use pgmap.
> 
> Leon, can you add some remarks to the comments about what the rules
> are to call pcim_p2pdma_provider() ?

Yes, sure.

Thanks

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
