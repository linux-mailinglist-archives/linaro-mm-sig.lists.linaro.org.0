Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C730B14A53
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 10:45:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C29F45415
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 08:45:47 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 239B2440E3
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jul 2025 08:45:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mtjx7aNo;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C4605A54C7C;
	Tue, 29 Jul 2025 08:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EFDBC4CEEF;
	Tue, 29 Jul 2025 08:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753778732;
	bh=jkDZ+7UedrBceUBz8tlmLsJhxKV0IBvkz5SAqWUmQpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mtjx7aNoJVq9DvGD4ORxhlZmNSbDYw4VpIt5G+1PbR6Rre8lAWRCRQDkAz4KTJ/bm
	 BxOO9PzCPjXSeWidky8QMCKZKV2QSFneK6+i7wXzmhFeCMmGPsUu+Uy8H23JTs1bR5
	 SBAPBVl6JzLSEXRQh+LZJX7ikFN585m8EXq0Nqd8+eigGIwYYpnp+T2AW9EPD5Qm2R
	 IQhv3G+CGzUj9jLEaAYGbBzjIi0YUwqQckxK9Csm1y+KGwG6KpqkBl4LHIvFc569cc
	 xXopr3S7OAVJSk8wPuanNo4rGMQEBZyFc3yISHfeC6xtoUaght3ICDAFyg47naXy+n
	 xTgrSU4QNB9rQ==
Date: Tue, 29 Jul 2025 11:45:27 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20250729084527.GF402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <82e62eb59afcd39b68ae143573d5ed113a92344e.1753274085.git.leonro@nvidia.com>
 <20250724080313.GA31887@lst.de>
 <20250724081321.GT402218@unreal>
 <20250729075230.GB23823@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250729075230.GB23823@lst.de>
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
X-Rspamd-Queue-Id: 239B2440E3
X-Spamd-Bar: ---
Message-ID-Hash: 52JUZYFOHDKPXJXBEVCKJXCKGJFKITCD
X-Message-ID-Hash: 52JUZYFOHDKPXJXBEVCKJXCKGJFKITCD
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] PCI/P2PDMA: Export pci_p2pdma_map_type() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/52JUZYFOHDKPXJXBEVCKJXCKGJFKITCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 29, 2025 at 09:52:30AM +0200, Christoph Hellwig wrote:
> On Thu, Jul 24, 2025 at 11:13:21AM +0300, Leon Romanovsky wrote:
> > On Thu, Jul 24, 2025 at 10:03:13AM +0200, Christoph Hellwig wrote:
> > > On Wed, Jul 23, 2025 at 04:00:06PM +0300, Leon Romanovsky wrote:
> > > > From: Leon Romanovsky <leonro@nvidia.com>
> > > > 
> > > > Export the pci_p2pdma_map_type() function to allow external modules
> > > > and subsystems to determine the appropriate mapping type for P2PDMA
> > > > transfers between a provider and target device.
> > > 
> > > External modules have no business doing this.
> > 
> > VFIO PCI code is built as module. There is no way to access PCI p2p code
> > without exporting functions in it.
> 
> We never ever export anything for "external" modules, and you really
> should know that.

It is just a wrong word in commit message. I clearly need it for
vfio-pci module and nothing more.

"Never attribute to malice that which is adequately explained by stupidity." - Hanlon's razor.

Thanks

> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
