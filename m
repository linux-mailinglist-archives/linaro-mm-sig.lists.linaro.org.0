Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8704BF12C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 14:29:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C954D3F75C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 12:29:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 847FC3F750
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 12:29:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=q8iqZtUQ;
	dmarc=none;
	spf=none (lists.linaro.org: domain of BATV+17a2c00bf4ec3f455068+8093+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+17a2c00bf4ec3f455068+8093+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=D2Kl2pqSvM/DwC65xqTX+wH7gL0SbGwP8PQ2xts6fnA=; b=q8iqZtUQMhHpWIU8trMyOMnPX3
	BZqhJjT2rj4YxZ+9D73G0Z+YCyz4jXlRjVJ4lNjBgB+0FK5YxXT42bnIWmrUvlkPLXRjcdFhbHoBB
	kFsZBpieGZtmo/cO2AmeIBYoggTgIhkLMHFgZ+De0ZWfyJFUbUlozwhj8XDQflAY7e4QFVaPMyrf+
	OfKOJzjfmWZ7MedU2Z5uSI0/WGgtgyyw+nKi7sc0uEUSOgNlGDQnCF0v01aztMT8zBXcZkgZnb9iw
	ZagOlv7l1/BMHvqxSRlvgGCW+ONU1nBe+emsYjFrL6+N7nySloF7g9v/Y48V2dOI6b3xoyUvWc4+l
	c5fu9esQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp0c-0000000DQ8I-3O4V;
	Mon, 20 Oct 2025 12:29:06 +0000
Date: Mon, 20 Oct 2025 05:29:06 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aPYrEroyWVOvAu-5@infradead.org>
References: <cover.1760368250.git.leon@kernel.org>
 <0fa715706e1adf5e26199dc3eaa3b1ff3b14db67.1760368250.git.leon@kernel.org>
 <aPHi2c2BQNB4eqm_@infradead.org>
 <20251017121447.GH3901471@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017121447.GH3901471@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 847FC3F750
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
	URIBL_BLOCKED(0.00)[infradead.org:mid,infradead.org:dkim,lst.de:email,bombadil.infradead.org:rdns,bombadil.infradead.org:helo];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: SPTP3KTAEPSUMXVLZ36UKW2V7REHTWFF
X-Message-ID-Hash: SPTP3KTAEPSUMXVLZ36UKW2V7REHTWFF
X-MailFrom: BATV+17a2c00bf4ec3f455068+8093+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/9] PCI/P2PDMA: Export pci_p2pdma_map_type() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SPTP3KTAEPSUMXVLZ36UKW2V7REHTWFF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Oct 17, 2025 at 09:14:47AM -0300, Jason Gunthorpe wrote:
> On Thu, Oct 16, 2025 at 11:31:53PM -0700, Christoph Hellwig wrote:
> > 
> > Nacked-by: Christoph Hellwig <hch@lst.de>
> > 
> > As explained to you multiple times, pci_p2pdma_map_type is a low-level
> > helper that absolutely MUST be wrapper in proper accessors. 
> 
> You never responded to the discussion:
> 
> https://lore.kernel.org/all/20250727190252.GF7551@nvidia.com/
> 
> What is the plan here? Is the new DMA API unusable by modules? That
> seems a little challenging.

Yes.  These are only intended to be wrapped by subsystems.

> It looks like there is a simple enough solution here. I wanted to
> tackle this after, but maybe it is small enough to do it now.
> 
> dmabuf should gain some helpers like BIO has to manage its map/unmap
> flows, so lets put a start of some helpers in
> drivers/dma/dma-mapping.c (or whatever). dmabuf is a built in so it
> can call the function without exporting it just like block and hmm are
> doing.

Yes, that sounds much better.  And dmabuf in general could use some
deduplicating of their dma mapping patterns (and eventual fixing).

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
