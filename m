Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D527AC2A79E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 03 Nov 2025 09:05:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0B9A3F830
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Nov 2025 08:05:39 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 48C793F821
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Nov 2025 08:05:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YNIMhHK+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C7BA43DBB;
	Mon,  3 Nov 2025 08:05:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDBE8C4CEE7;
	Mon,  3 Nov 2025 08:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762157126;
	bh=/Z00hsFx0kFKgS/fH2fkWOXPCRXDBSY3j5PVFskPLtY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YNIMhHK+TIAw9S8epUQRLJ0hHWrXGrX021AASru7kQYHYuMFC6zo5jxbc7KUmJ0L3
	 YNEe1nE+4ae3JtQxcTTez3gXWgSy2u2msyRHFv6Ufnrx2bt2n0+8KYqma3OyMomdHy
	 Und0omT0toRmHQSOMJHh8FIiBDSXmNrLx8mv1uScrl9HdFKsXLarM713jjbRgR+/v4
	 7/jTF678ISrptDm6AzMN9ALIVAtiWOrlbYsGz2TuzZPwPoiteJ/wA8NnfdkaDlmCac
	 R8sanushWpLqk/uQd051eoYlDOALHHRNHhGhWZBT9cBCKpSLGzr/fRIrMBO19/jAvs
	 SiEU4tXpMsS3Q==
Date: Mon, 3 Nov 2025 10:05:18 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20251103080518.GB50752@unreal>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
 <20251102-dmabuf-vfio-v6-5-d773cff0db9f@nvidia.com>
 <86383031-807e-43d9-976e-dd955d79dc52@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86383031-807e-43d9-976e-dd955d79dc52@infradead.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 48C793F821
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[33];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: Q6P4QYUT5MVVX54EK5J3ZKB3H3EPGCOK
X-Message-ID-Hash: Q6P4QYUT5MVVX54EK5J3ZKB3H3EPGCOK
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.
 linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q6P4QYUT5MVVX54EK5J3ZKB3H3EPGCOK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 02, 2025 at 10:16:59AM -0800, Randy Dunlap wrote:
> 
> 
> On 11/2/25 1:00 AM, Leon Romanovsky wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > Reflect latest changes in p2p implementation to support DMABUF lifecycle.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > ---
> >  Documentation/driver-api/pci/p2pdma.rst | 95 +++++++++++++++++++++++++--------
> >  1 file changed, 72 insertions(+), 23 deletions(-)

<...>

> > +guarentee that the consuming driver has stopped using the MMIO during a removal
> 
>    guarantee

<...>

> > +if are used with mmap() must create special PTEs. As such there are very few
> 
>    if used

<...>

> > +pggmap of MEMORY_DEVICE_PCI_P2PDMA to create struct pages. The lifecylce of
> 
>    pgmap ?                                                        lifecycle

<...>

> > +architectures, others will experiance corruption or just crash in the kernel.
> 
>                               experience

<...>

> > +In this case the initator and target pci_devices are known and the P2P subsystem
> 
>                     initiator

<...>

> > +exporting driver has destroyed it's p2p_provider.
>                                   its

Thanks a lot, fixed.

> 
> -- 
> ~Randy
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
