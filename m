Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E9A5B0867
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 17:23:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7122243F2D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 15:23:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 219213F57F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 15:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BcNIY2A5Ly0NVEPOgKCjZNwABZLi+n/SzSXVZWXlSVk=; b=xIWn7jJIvte4o9iMUtkRREt3f0
	BRgZUmNIzYgCa5tmtZ9nBKViJYapzQV1p6WxYLbAQaiZCiKu5JWRHGktRBxzU751H3L8t25lEqK8a
	F8QDMVWX984jCkXgYLIgl9uNv/2gEHsTwiYarCe5wlvIypBCIOjnQ7l+mp8cbz0MbRRJMDlo3gTsR
	qvNf77EoZcMP/Dl8fiq4Q8pueQQGY4xUgPlNWdfp/IO+AVtBvvW/Vi6H1NeI6IU0/J9D05KHtbJ7t
	9UzSAffrFHiq5pTccuTCB3MFIBAm/GOUGQqHM6hp7zfPXb2j/JffgczYTL8XIJdLKBuE/QoeC1SXW
	BeJWkEoA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVwtk-007JlI-GO; Wed, 07 Sep 2022 15:23:28 +0000
Date: Wed, 7 Sep 2022 08:23:28 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <Yxi3cClg39/QX+gP@infradead.org>
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com>
 <YxiIkh/yeWQkZ54x@infradead.org>
 <58d6e892-82df-7aa7-4798-9e5da7c634ad@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58d6e892-82df-7aa7-4798-9e5da7c634ad@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: OYS7YGZ4MPJ5OMY5HEETXCWAXS3EJILR
X-Message-ID-Hash: OYS7YGZ4MPJ5OMY5HEETXCWAXS3EJILR
X-MailFrom: BATV+a7179cf3af9bc3683476+6954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYS7YGZ4MPJ5OMY5HEETXCWAXS3EJILR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 07, 2022 at 05:08:37PM +0200, Christian K=F6nig wrote:
> The key point is that you can't do any CPU fallback with this as long as =
the
> CPU wouldn't do exactly the same thing as the original hardware device. E=
.g.
> not write combine nor do any fully page copies etc...

That is true for MMIO in general.  You need to use the mmio accessors,
and even then it needs to match what the hardware expects

> This is not even a memory write, but rather just some trigger event. That=
's
> essentially the background why I think having struct pages and sg_tables
> doesn't make any sense at all for this use case.

Well, Jasons patch uses a sg_table, just in a very broken way.

> > > Would you mind if I start to tackle this problem?
> > Yes, I've been waiting forever for someone to tacke how the scatterlist
> > is abused in dma-buf..
>=20
> How about we separate the scatterlist into page and DMA address container?

As said before that is fundamentally the right thing to do.  It just
takes a lot of work.  I think on the dma mapping side we're finally
getting ready for it now that arm uses the common dma-direct code,
although getting rid of the arm iommu ops first would be even better.

Note that this only solves the problem of needing the pages to hold
the physical address.  The other thing the pages are used for in p2p
is that (through the pgmap) it points to the owning device of the p2p
memory and thus allows figuring out how it needs to be accessed.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
