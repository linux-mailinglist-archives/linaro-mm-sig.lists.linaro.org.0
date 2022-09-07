Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6495B0397
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 14:06:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDE6D48A09
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 12:06:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 9E0513F51F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 12:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=PL4jqJSZwguCLJFS7x1XcjFdKcqtAwO9wLYAU4zCSeY=; b=B1zQg9TljsLy1gW4922VnSw5a7
	/1ZBtwdH0raFVAxXXejqmksPyqcSXzbTlcgd8KVyQKkoDSUO+YCd1mW4VK/Mbt3LOK4j13rEhwZVX
	ovAQe/bl2lc/X88QINqsfbL+MrXEUa2mLdvKbhmdBgiC170xmQIuyOGybhCrYlcqMicTMOSN1saz8
	f/+F5YbhE/kuzf0Bu7WtM4MNPeXtFX+U7tMBeIRW1nXq208fEenOgB4CM0rDeAZcmlz44DzbxK3Wh
	GTrbSP4P/at1OZnaYZqlkWf+0uygb45WyZFbxkQHVGcaw+cE3RA1op17K1aNKmOqGKnzTz5+4JSlu
	wDM/3fBg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVtoc-005x71-0M; Wed, 07 Sep 2022 12:05:58 +0000
Date: Wed, 7 Sep 2022 05:05:57 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <YxiJJYtWgh1l0wxg@infradead.org>
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com>
 <YxczjNIloP7TWcf2@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YxczjNIloP7TWcf2@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: PHYTSFMTOU6SJITDYSDQ5ATHCIVX5224
X-Message-ID-Hash: PHYTSFMTOU6SJITDYSDQ5ATHCIVX5224
X-MailFrom: BATV+a7179cf3af9bc3683476+6954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@infradead.org>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PHYTSFMTOU6SJITDYSDQ5ATHCIVX5224/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Sep 06, 2022 at 08:48:28AM -0300, Jason Gunthorpe wrote:
> Right, this whole thing is the "standard" that dmabuf has adopted
> instead of the struct pages. Once the AMD GPU driver started doing
> this some time ago other drivers followed.

But it is simple wrong.  The scatterlist requires struct page backing.
In theory a physical address would be enough, but when Dan Williams
sent patches for that Linus shot them down.

That being said the scatterlist is the wrong interface here (and
probably for most of it's uses).  We really want a lot-level struct
with just the dma_address and length for the DMA side, and leave it
separate from that what is used to generate it (in most cases that
would be a bio_vec).

> Now we have struct pages, almost, but I'm not sure if their limits are
> compatible with VFIO? This has to work for small bars as well.

Why would small BARs be problematic for the pages?  The pages are more
a problem for gigantic BARs do the memory overhead.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
