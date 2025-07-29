Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A14DB14D1A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 13:40:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F38594570B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 11:40:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 00CD440F65
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jul 2025 11:39:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="qpcxA/u9";
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F36F5C0F2E;
	Tue, 29 Jul 2025 11:39:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D158C4CEEF;
	Tue, 29 Jul 2025 11:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753789188;
	bh=RPpvSK/8qiFnebjIGVvl4LqDX43VTor4nmtafMFjlfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qpcxA/u9Tznj7llG4bq8FgGR6n8loB2QOxor+6SdCBhDOlGqqCbPcbo6ut4+3zXzL
	 O5B+31lN4CYNt7zw8YTEfSBOXxZFWo+0AsNmp1TdE0XL16apisn11dsrtPqTtYAHln
	 VCS+YdU5DPkiycpCq/fSNmsqkqr8kFs7KFT5s5fsNGA/S8X9xcFgGaDoBgAo4DoPRF
	 aMN7RJsq0IlBv4/1hktW6Ljb6F9jYory7s2E+kTM/3t3aXsuUFLKZRJBPZxHTdv1oc
	 KuceSjXps91R6vKXxveoKFcrxBdr11X2quBjbA9AraUBemCTyZvSzA7Y7ok9Ir4LiX
	 qadsSroZsSBiw==
Date: Tue, 29 Jul 2025 14:39:43 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20250729113943.GJ402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <c2307cb4c3f1af46da138f3410738754691fbb3d.1753274085.git.leonro@nvidia.com>
 <20250724075145.GB30590@lst.de>
 <20250724075533.GR402218@unreal>
 <20250724075922.GD30590@lst.de>
 <20250727185158.GE7551@nvidia.com>
 <20250729075209.GA23823@lst.de>
 <20250729085336.GG402218@unreal>
 <20250729104100.GA29053@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250729104100.GA29053@lst.de>
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,139.178.84.217:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 00CD440F65
X-Spamd-Bar: ---
Message-ID-Hash: UOT7DWBLPO2X3ELNZ2YRIZ2NQFSAGONO
X-Message-ID-Hash: UOT7DWBLPO2X3ELNZ2YRIZ2NQFSAGONO
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] PCI/P2PDMA: Introduce p2pdma_provider structure for cleaner abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UOT7DWBLPO2X3ELNZ2YRIZ2NQFSAGONO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 29, 2025 at 12:41:00PM +0200, Christoph Hellwig wrote:
> On Tue, Jul 29, 2025 at 11:53:36AM +0300, Leon Romanovsky wrote:
> > > Because the struct page is the only thing that:
> > > 
> > >  a) dma-mapping works on
> > >  b) is the only place we can discover the routing information, but also
> > >     more importantly ensure that the underlying page is still present
> > >     and the device is not hot unplugged, or in a very theoretical worst
> > >     case replaced by something else.
> > 
> > It is correct in general case, but here we are talking about MMIO
> > memory, which is "connected" to device X and routing information is
> > stable.
> 
> MMIO is literally the only thing we support to P2P to/from as that is
> how PCIe P2P is defined.  And not, it's not stable - devices can be
> unplugged, and BARs can be reenumerated.

I have a feeling that we are drifting from the current patchset to more
general discussion.

The whole idea of new DMA API is to provide flexibility to the callers
(subsystems) who are perfectly aware of their data and limitations to
implement direct addressing natively.

In this series, device is controlled by VFIO and DMABUF. It is not
possible to unplug it without VFIO notices it. In such case, p2pdma_provider
and related routing information (DMABUF) will be reevaluated.

So for VFIO + DMABUF, the pointer is very stable.

For other cases (general case), the flow is not changed.
Users  will continue to call to old and well-known pci_p2pdma_state()
to calculate p2p type.

Thanks

> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
