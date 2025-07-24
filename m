Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E72FFB10271
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 09:55:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 035E245516
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 07:55:53 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 30B97413EF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jul 2025 07:55:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BmgGnxFd;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0E728A55FA7;
	Thu, 24 Jul 2025 07:55:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01868C4CEED;
	Thu, 24 Jul 2025 07:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753343737;
	bh=RejzoqE1QxLnfVJEcMygPRhvHl4TUui1JW/EXqf2Ekw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BmgGnxFd0m0ax8BCXu8Z23nkYEvrbYb+kfQKhThhtk3fHD05jyqUumNras/XMac1K
	 fNsR+wJhnDxgDW3B0m/HYoEQYDy1trcfoIv3oJ5G6lK6WxOJgRTPmYPyorkEbtucoO
	 lstjt+ChPXcIFyADPo+xmzPFYCtn+am83vuGKyQI9REWZ+4QOBGiYXPyVWpj/Mf6Qq
	 1sj2VY/rutJ5LfhdVsfBdfsSZKWAiRCmF5WPvyewWqqP7ARQWZMzXtSEGh/Zr+/bJF
	 bksCHkNXFT6a8dFppzN/TYVK3Vt0jyt6BKBOSqke/cENn8f6Uq9rDv+qbrJJvq5YYP
	 D7SDuGtahnLuA==
Date: Thu, 24 Jul 2025 10:55:33 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20250724075533.GR402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <c2307cb4c3f1af46da138f3410738754691fbb3d.1753274085.git.leonro@nvidia.com>
 <20250724075145.GB30590@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724075145.GB30590@lst.de>
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15830, ipnet:147.75.193.0/24, country:NL];
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
X-Rspamd-Queue-Id: 30B97413EF
X-Spamd-Bar: ---
Message-ID-Hash: 3NEFZGR5LHUOEGKASBJ7OIQKRPPFOEOU
X-Message-ID-Hash: 3NEFZGR5LHUOEGKASBJ7OIQKRPPFOEOU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] PCI/P2PDMA: Introduce p2pdma_provider structure for cleaner abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3NEFZGR5LHUOEGKASBJ7OIQKRPPFOEOU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 24, 2025 at 09:51:45AM +0200, Christoph Hellwig wrote:
> On Wed, Jul 23, 2025 at 04:00:03PM +0300, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Extract the core P2PDMA provider information (device owner and bus
> > offset) from the dev_pagemap into a dedicated p2pdma_provider structure.
> > This creates a cleaner separation between the memory management layer and
> > the P2PDMA functionality.
> > 
> > The new p2pdma_provider structure contains:
> > - owner: pointer to the providing device
> > - bus_offset: computed offset for non-host transactions
> > 
> > This refactoring simplifies the P2PDMA state management by removing
> > the need to access pgmap internals directly. The pci_p2pdma_map_state
> > now stores a pointer to the provider instead of the pgmap, making
> > the API more explicit and easier to understand.
> 
> I really don't see how anything becomes cleaner or simpler here.
> It adds a new structure that only exists embedded in the exist one
> and more code for no apparent benefit.

Please, see last patch in the series https://lore.kernel.org/all/aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com
It gives me a way to call p2p code with stable pointer for whole BAR.

Thanks

> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
