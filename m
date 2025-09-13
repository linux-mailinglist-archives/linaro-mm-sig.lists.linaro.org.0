Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9751DB56FCF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 07:48:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D33A645DD6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 05:48:38 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4A2AF44621
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Sep 2025 05:48:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nHe7Ty6+;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 664E643F68;
	Mon, 15 Sep 2025 05:48:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9696EC4CEF1;
	Mon, 15 Sep 2025 05:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757915310;
	bh=pNhpXvcF7LKn5UVncvyxPjpBkffgzOi8e5YEIYnOU1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nHe7Ty6+c/JGvDY+UydwDMZNts0Mvoe5CmZXEM3wRbXlJQZsiKQbiHX1dqED8BM6L
	 jhMyqCWP4HV33158JPyukMw9azmtNrGpkymRgEWzH8txAsk0rOblpfGqGH9ecTIJff
	 SsLxSOkvzP5SEsR+y+RlPv8/wUQ9v3p6CHq91exxQSTUKjsxYQ6lnV1GyfIF3fLnn7
	 aD6U1ucW6cOBHuGB2utJFKkQvvAjc/DWH2//axsYKrHMDRKhgk/Ut1ZqFbNUGkItPt
	 mky2sisAv2UghibJpCApHoRxj04wcBuUhqn0dWEmz2sHkq/6x1znCKDKs3Y1Qa1pZc
	 pNH0C9osgWH6A==
Date: Sat, 13 Sep 2025 13:19:33 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Mastro <amastro@fb.com>
Message-ID: <20250913101933.GW341237@unreal>
References: <cover.1754311439.git.leon@kernel.org>
 <5e043d8b95627441db6156e7f15e6e1658e9d537.1754311439.git.leon@kernel.org>
 <aMRsoUx/NH/Dspm9@devgpu015.cco6.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aMRsoUx/NH/Dspm9@devgpu015.cco6.facebook.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4A2AF44621
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DATE_IN_PAST(1.00)[43];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: H5IMMJSR7GZH3D4ORZWSLMAP7XBIB2UY
X-Message-ID-Hash: H5IMMJSR7GZH3D4ORZWSLMAP7XBIB2UY
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H5IMMJSR7GZH3D4ORZWSLMAP7XBIB2UY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Sep 12, 2025 at 11:55:29AM -0700, Alex Mastro wrote:
> On Mon, Aug 04, 2025 at 04:00:45PM +0300, Leon Romanovsky wrote:
> > +static void dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
> > +				   struct vfio_device_feature_dma_buf *dma_buf,
> > +				   struct vfio_region_dma_range *dma_ranges)
> > +{
> > +	struct pci_dev *pdev = priv->vdev->pdev;
> > +	phys_addr_t pci_start;
> > +	int i;
> > +
> > +	pci_start = pci_resource_start(pdev, dma_buf->region_index);
> > +	for (i = 0; i < dma_buf->nr_ranges; i++) {
> > +		priv->phys_vec[i].len = dma_ranges[i].length;
> > +		priv->phys_vec[i].paddr += pci_start + dma_ranges[i].offset;
> 
> Is the intent really to += paddr? I would have expected a plain assignment.

In this specific case, there is no difference, because phys_vec is
initialized to 0, but It needs to be "=" and not "+=".

> 
> > +		priv->size += priv->phys_vec[i].len;
> > +	}
> > +	priv->nr_ranges = dma_buf->nr_ranges;
> > +}
> 
> ...
> 
> > +	priv->phys_vec = kcalloc(get_dma_buf.nr_ranges, sizeof(*priv->phys_vec),
> > +				 GFP_KERNEL);
> > +	if (!priv->phys_vec) {
> > +		ret = -ENOMEM;
> > +		goto err_free_priv;
> > +	}
> > +
> > +	priv->vdev = vdev;
> > +	dma_ranges_to_p2p_phys(priv, &get_dma_buf, dma_ranges);
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
