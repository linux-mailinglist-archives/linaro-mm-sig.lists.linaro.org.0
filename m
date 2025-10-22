Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C13A3BFA777
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 09:09:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 715D93F7B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 07:09:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 4EF8A3F683
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 07:08:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=SdNtRvN9;
	dmarc=none;
	spf=none (lists.linaro.org: domain of BATV+21c3bf232c3b55be12f8+8095+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+21c3bf232c3b55be12f8+8095+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=v9tFlJ2fSBgWVG5dQp+BqV6oOUweYHcntX3sRf6YFKM=; b=SdNtRvN9ECbH+6Wq5VOUBng1tV
	rbcoTW7YrrfUGP/4J4whwouG1kDyvf3Lmdfi7LbnRPq89BMYv58xbUTBmXgSPXZVYRb6mJhJAPQU1
	ZIA0/wC+S1RJMhiGYJjhCAdfm4FEwCrzY3g3l4cgwQjuPypeTpyBjpkFiGnJ3/MzMXNCCwCjSZrzm
	n6BBFOL61exQBTv/xlQB1DwMELcEAU2ArzUgD/NYvkI2kZUkmNNPseZu9Lnk8f+brxHeHjW+o2OQa
	50dWmbeHSHNr0vGLwBLSjUlfEwJXoZAmppaRqh0WNeM+hhzaF/nXElPtxtD2OmafhI0Tejkvpb775
	0PevGOYA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSxk-00000001oCQ-0f7W;
	Wed, 22 Oct 2025 07:08:48 +0000
Date: Wed, 22 Oct 2025 00:08:48 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aPiDACJHZY7Gu4y1@infradead.org>
References: <cover.1760368250.git.leon@kernel.org>
 <a04c44aa4625a6edfadaf9c9e2c2afb460ad1857.1760368250.git.leon@kernel.org>
 <aPHjG2PS5DVgcG93@infradead.org>
 <20251017115524.GG3901471@nvidia.com>
 <aPYq0jQZOrn-lUJW@infradead.org>
 <20251020130855.GM316284@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251020130855.GM316284@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4EF8A3F683
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[infradead.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[198.137.202.133:from];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[21c3bf232c3b55be12f8,8095,infradead.org,hch];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 4DNYR3V6SVJPKJNH5GGAH3PNR47EP5IX
X-Message-ID-Hash: 4DNYR3V6SVJPKJNH5GGAH3PNR47EP5IX
X-MailFrom: BATV+21c3bf232c3b55be12f8+8095+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 8/9] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4DNYR3V6SVJPKJNH5GGAH3PNR47EP5IX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 20, 2025 at 10:08:55AM -0300, Jason Gunthorpe wrote:
> Sure, but this should be handled by the P2P subsystem and PCI quirks,
> IMHO. It isn't VFIOs job.. If people complain about broken HW then it
> is easy to add those things.

I think it is.  You now open up behavior generally that previously
had specific drivers in charge.

> IDK where Intel GPU lands on this, but VFIO has always supported P2P

How?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
