Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F024DB14A7E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 10:53:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 794CB44B2F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 08:53:58 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 2E9AA440E3
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jul 2025 08:53:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FY4CeHlP;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 885C55C6062;
	Tue, 29 Jul 2025 08:53:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50444C4CEEF;
	Tue, 29 Jul 2025 08:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753779221;
	bh=yu/bVYFPs5NHquFn45Bc9xbptKoY+Y8L/DXBiDm3w50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FY4CeHlPxqEQY3ggQahQUSoRRGfmVjinO49I5sJuOGjcPHAj8mklTAkSCG4Zakzuo
	 CvWjQEOC2+odKsm58x6VrEU4e8noHt+BTQbIa+b8nP0QopI+HxgtYaxzEYSMyMyP1i
	 OBLiuqeEwUGzRceBsbP3L3NpTi5My4ZIkmooTnlb/vqma7yjemisxCsOOiwn0jdZcv
	 57/GCBU5FjqNrGAV4nlmMOjD9QCbx2JTS2GDjEJ1QU42jdlN+Mb3IRDi9GqqvzA6Or
	 K07AZpyONe96SwTYWZo5V9aAQimkHX1XB5pFni7jy4mTsr/t5VjM2AL0Q5t4DXy+76
	 S/PGBqWqDL1RA==
Date: Tue, 29 Jul 2025 11:53:36 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20250729085336.GG402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <c2307cb4c3f1af46da138f3410738754691fbb3d.1753274085.git.leonro@nvidia.com>
 <20250724075145.GB30590@lst.de>
 <20250724075533.GR402218@unreal>
 <20250724075922.GD30590@lst.de>
 <20250727185158.GE7551@nvidia.com>
 <20250729075209.GA23823@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250729075209.GA23823@lst.de>
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E9AA440E3
X-Spamd-Bar: ---
Message-ID-Hash: ZBDRLCJRQ6XIJ4BVJMJTLSDY76TZANX6
X-Message-ID-Hash: ZBDRLCJRQ6XIJ4BVJMJTLSDY76TZANX6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] PCI/P2PDMA: Introduce p2pdma_provider structure for cleaner abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBDRLCJRQ6XIJ4BVJMJTLSDY76TZANX6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 29, 2025 at 09:52:09AM +0200, Christoph Hellwig wrote:
> On Sun, Jul 27, 2025 at 03:51:58PM -0300, Jason Gunthorpe wrote:
> > On Thu, Jul 24, 2025 at 09:59:22AM +0200, Christoph Hellwig wrote:
> > > On Thu, Jul 24, 2025 at 10:55:33AM +0300, Leon Romanovsky wrote:
> > > > Please, see last patch in the series https://lore.kernel.org/all/aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com
> > > > It gives me a way to call p2p code with stable pointer for whole BAR.
> > > > 
> > > 
> > > That simply can't work.
> > 
> > Why not?
> > 
> > That's the whole point of this, to remove struct page and use
> > something else as a handle for the p2p when doing the DMA API stuff.
> 
> Because the struct page is the only thing that:
> 
>  a) dma-mapping works on
>  b) is the only place we can discover the routing information, but also
>     more importantly ensure that the underlying page is still present
>     and the device is not hot unplugged, or in a very theoretical worst
>     case replaced by something else.

It is correct in general case, but here we are talking about MMIO
memory, which is "connected" to device X and routing information is
stable.

Thanks

> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
