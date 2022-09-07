Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF3D5B0698
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 16:30:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 729F747EF9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 14:30:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 5021E3F1CB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 14:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2l7eopzr/mSNZZDgV9tkZ0XntKy0XuXzIO3nOXotg4k=; b=mphsyxJhKDUVK5RBxhAHtdvWi2
	jNXtUct8LS44ITwnw64hqzo5kmIoDqPPUfWhWRMMO9OVboa7RdnB/GgkKGPxIMze414KcEXmOK3YN
	YxA8NSddMLrJckJZPfmTtDmRgHm/roVjbPbxC2t5VRr1H/0IgHUqVEZzkohOgjihNHiuofn/2bGAl
	UcAznerDMMF+UDGBUALmm7NCuygA/ThL9g/gWRrjk9RfqBtvZpIsloJ++xyq2uKLzjfYrjeLGM+Th
	WvVI1AEZNBUmFfnKZMkimlU2X7IX14CSGkaTMPpOHytqtoyJn6BOtRHBv8VXuHM3jsAXU67bb0rxL
	zXAGAdUA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVw3y-006tuK-Vl; Wed, 07 Sep 2022 14:29:58 +0000
Date: Wed, 7 Sep 2022 07:29:58 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <Yxiq5sjf/qA7xS8A@infradead.org>
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com>
 <YxczjNIloP7TWcf2@nvidia.com>
 <YxiJJYtWgh1l0wxg@infradead.org>
 <YxiPh4u/92chN02C@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YxiPh4u/92chN02C@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: 6RNNEG3S2L6VTJL4J6LEOW37OPAUCT3K
X-Message-ID-Hash: 6RNNEG3S2L6VTJL4J6LEOW37OPAUCT3K
X-MailFrom: BATV+a7179cf3af9bc3683476+6954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>, Dan Williams <dan.j.williams@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6RNNEG3S2L6VTJL4J6LEOW37OPAUCT3K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 07, 2022 at 09:33:11AM -0300, Jason Gunthorpe wrote:
> Yes, you said that, and I said that when the AMD driver first merged
> it - but it went in anyhow and now people are using it in a bunch of
> places.

drm folks made up their own weird rules, if they internally stick
to it they have to listen to it given that they ignore review comments,
but it violates the scatterlist API and has not business anywhere
else in the kernel.  And yes, there probably is a reason or two why
the drm code is unusually error prone.

> > Why would small BARs be problematic for the pages?  The pages are more
> > a problem for gigantic BARs do the memory overhead.
> 
> How do I get a struct page * for a 4k BAR in vfio?

I guess we have different definitions of small then :)

But unless my understanding of the code is out out of data,
memremap_pages just requires the (virtual) start address to be 2MB
aligned, not the size.  Adding Dan for comments.

That being said, what is the point of mapping say a 4k BAR for p2p?
You're not going to save a measurable amount of CPU overhead if that
is the only place you transfer to.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
