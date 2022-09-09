Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A71495B38DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Sep 2022 15:24:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6383F479CB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Sep 2022 13:24:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 068773F515
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 13:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=iY0w1kh/xK+MCzo1rcnqvZqdmGxlHyuGkIUEG2fe/n0=; b=3wAl0TxsoTvU4WSk/aqxa6e9u/
	30XUqAlq7pk+SKpG5MSQFbT0MoWDiD1aYo7F1FJ3DrSUU/9qFFxdzWUyN2J66hZuW72TG3hUIDZdP
	P42VoYLJin+mebeMH4p6hwbaQ6n3DWx4lhsetBocd6lS+lVM+d40I3KLyzVAXt3CokaWpej/0paac
	cqzPcUqf/5srbDXkPIK36whHP4DZUpnSRlHspglNS5p77kTiy4b9zZUMLF3IIgBjcz6Br2jRoxYX+
	vWGuxJBluz3V6oi4VjQPpmc7mmu3iWRQ00Aie4He+c8ZFXrNNAodqvzzBHDQ6SOErfZj+lNQgw+to
	rptERk0w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdzn-00GJ4H-M7; Fri, 09 Sep 2022 13:24:35 +0000
Date: Fri, 9 Sep 2022 06:24:35 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <Yxs+k6psNfBLDqdv@infradead.org>
References: <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com>
 <YxczjNIloP7TWcf2@nvidia.com>
 <YxiJJYtWgh1l0wxg@infradead.org>
 <YxiPh4u/92chN02C@nvidia.com>
 <Yxiq5sjf/qA7xS8A@infradead.org>
 <Yxi3cFfs0SA4XWJw@nvidia.com>
 <Yxi5h09JAzIo4Kh8@infradead.org>
 <YxjDBOIavc79ZByZ@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YxjDBOIavc79ZByZ@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: YJUMLVOXX6CYARMOAAGEWO6XRDTKJMT6
X-Message-ID-Hash: YJUMLVOXX6CYARMOAAGEWO6XRDTKJMT6
X-MailFrom: BATV+6858b4fb5979d481332a+6956+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>, Dan Williams <dan.j.williams@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJUMLVOXX6CYARMOAAGEWO6XRDTKJMT6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 07, 2022 at 01:12:52PM -0300, Jason Gunthorpe wrote:
> The PCI offset is some embedded thing - I've never seen it in a server
> platform.

That's not actually true, e.g. some power system definitively had it,
althiugh I don't know if the current ones do.

But that's not that point.  The offset is a configuration fully
supported by Linux, and someone that just works by using the proper
APIs.  Doing some handwaiving about embedded only or bad design doesn't
matter.  There is a reason why we have these proper APIs and no one
has any business bypassing them.

> I also seem to remember that iommu and PCI offset don't play nice
> together - so for the VFIO use case where the iommu is present I'm
> pretty sure we can very safely assume 0 offset. That seems confirmed
> by the fact that VFIO has never handled PCI offset in its own P2P path
> and P2P works fine in VMs across a wide range of platforms.

I think the offset is one of the reasons why IOVA windows can be
reserved (and maybe also why ppc is so weird).

> So, would you be OK with this series if I try to make a dma_map_p2p()
> that resolves the offset issue?

Well, if it also solves the other issue of invalid scatterlists leaking
outside of drm we can think about it.

> 
> > Last but not least I don't really see how the code would even work
> > when an IOMMU is used, as dma_map_resource will return an IOVA that
> > is only understood by the IOMMU itself, and not the other endpoint.
> 
> I don't understand this.
> 
> __iommu_dma_map() will put the given phys into the iommu_domain
> associated with 'dev' and return the IOVA it picked.

Yes, __iommu_dma_map creates an IOVA for the mapped remote BAR.  That
is the right thing if the I/O goes through the host bridge, but it is
the wrong thing if the I/O goes through the switch - in that case the
IOVA generated is not something that the endpoint that owns the BAR
can even understand.

Take a look at iommu_dma_map_sg and pci_p2pdma_map_segment to see how
this is handled.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
