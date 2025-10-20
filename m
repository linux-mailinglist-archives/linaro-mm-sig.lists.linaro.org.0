Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A399BBF1284
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 14:27:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 343E83F75E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 12:27:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 0B1AC3F750
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 12:27:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=KQhiungt;
	dmarc=none;
	spf=none (lists.linaro.org: domain of BATV+17a2c00bf4ec3f455068+8093+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+17a2c00bf4ec3f455068+8093+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=jdaQM4uR5JLsKGA0oS0VASYRTZKdaGisbnRnH43EfLY=; b=KQhiungt0DOFTC/2vEdmUu5RdM
	IjizyZW3KhQexecpWhn1JKycVRVYWQTJ9G7l/7owVKfDlpqNGVtDnwK8xwsjX6I64YK5ejanAY0FB
	zzX4HHOKjNYa4wCLEeTShJPyzXTrVdkNr6T+/TruAVmGzKfuVYgSNuwpcWQwRtB1xfAiScls8jaTF
	CtGh0RsnHpRzgHMaS7buG481FDfyI7wa7CD/qzHH4+SgPejuNG/LF4EmwQHr8caZKTi5KEcUFoY9W
	z+5GpLZZYb6wF0dThq4Fmcc6GulKZn6HurCZW1AoO7vNphT4pMFJzXHY8iCTyrAiXmSBWSKpPvYGt
	H76pYSOw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoyc-0000000DPQg-3mdN;
	Mon, 20 Oct 2025 12:27:02 +0000
Date: Mon, 20 Oct 2025 05:27:02 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aPYqliGwJTcZznSX@infradead.org>
References: <cover.1760368250.git.leon@kernel.org>
 <1044f7aa09836d63de964d4eb6e646b3071c1fdb.1760368250.git.leon@kernel.org>
 <aPHibioUFZV8Wnd1@infradead.org>
 <20251017115320.GF3901471@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017115320.GF3901471@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0B1AC3F750
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[17a2c00bf4ec3f455068,8093,infradead.org,hch];
	URIBL_BLOCKED(0.00)[infradead.org:mid,infradead.org:dkim];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: RPPN3L4INUTEHLBP3HHEYTF5SWEG24BU
X-Message-ID-Hash: RPPN3L4INUTEHLBP3HHEYTF5SWEG24BU
X-MailFrom: BATV+17a2c00bf4ec3f455068+8093+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/9] PCI/P2PDMA: Separate the mmap() support from the core logic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RPPN3L4INUTEHLBP3HHEYTF5SWEG24BU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Oct 17, 2025 at 08:53:20AM -0300, Jason Gunthorpe wrote:
> On Thu, Oct 16, 2025 at 11:30:06PM -0700, Christoph Hellwig wrote:
> > On Mon, Oct 13, 2025 at 06:26:03PM +0300, Leon Romanovsky wrote:
> > > The DMA API now has a new flow, and has gained phys_addr_t support, so
> > > it no longer needs struct pages to perform P2P mapping.
> > 
> > That's news to me.  All the pci_p2pdma_map_state machinery is still
> > based on pgmaps and thus pages.
> 
> We had this discussion already three months ago:
> 
> https://lore.kernel.org/all/20250729131502.GJ36037@nvidia.com/
> 
> These couple patches make the core pci_p2pdma_map_state machinery work
> on struct p2pdma_provider, and pgmap is just one way to get a
> p2pdma_provider *
> 
> The struct page paths through pgmap go page->pgmap->mem to get
> p2pdma_provider.
> 
> The non-struct page paths just have a p2pdma_provider * without a
> pgmap. In this series VFIO uses
> 
> +	*provider = pcim_p2pdma_provider(pdev, bar);
> 
> To get the provider for a specific BAR.

And what protects that life time?  I've not seen anyone actually
building the proper lifetime management.  And if someone did the patches
need to clearly point to that.

> I think I've answered this three times now - for DMABUF the DMABUF
> invalidation scheme is used to control the lifetime and no DMA mapping
> outlives the provider, and the provider doesn't outlive the driver.

How?

> Obviously you cannot use the new p2provider mechanism without some
> kind of protection against use after hot unplug, but it doesn't have
> to be struct page based.

And how does this interact with everyone else expecting pgmap based
lifetime management.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
