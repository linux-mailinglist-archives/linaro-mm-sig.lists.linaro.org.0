Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFD7C701BA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 17:33:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E2453F903
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 16:33:49 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C65C63F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 16:33:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mafG8ZOF;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 14CFF43BF9;
	Wed, 19 Nov 2025 16:33:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48D05C116B1;
	Wed, 19 Nov 2025 16:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763570012;
	bh=SQB43V1lcm01gCfrVBWXeZWkfWYzDLNLnZu9KWeWJcg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mafG8ZOF8WzHpM0Ap0HV10HNQ+V26iii16RmNEh8xlVGt/3Fyif1MM/ooh0K/pfIz
	 szK/RWtsKgEJUAwJCF4Ei2amklh14ZMnM9irxppUQrCUJkvt/EZVFJcbPn28NcqEGY
	 H5mQcoOTZFTUtioKEvXhb//Hd+eC/e25r6Py2bHgQa/vmQ3b9ezpxZIBWcXV9ncmwt
	 7e2asxChIzWsMtQIBzyz1HCL0UngdmumU3R+J6sfLJMWs0oS7ZF4iSIBsph8VRgCK0
	 +t4iS375piSkus/kTsSOX82JCK0IrwbeeJvL9xKC8TF2BvGIttU+8sQ9kfioC2gTlg
	 KCxDuQf1gZvsw==
Date: Wed, 19 Nov 2025 18:33:26 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251119163326.GL18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119134245.GD18335@unreal>
 <6714dc49-6b5c-4d58-9a43-95bb95873a97@amd.com>
 <20251119145007.GJ18335@unreal>
 <26d7ecab-33ed-4aab-82d5-954b0d1d1718@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26d7ecab-33ed-4aab-82d5-954b0d1d1718@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.18 / 15.00];
	BAYES_HAM(-2.68)[98.61%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[34];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C65C63F788
X-Spamd-Bar: ---
Message-ID-Hash: Z6ER4LWYRHK4JJMRSL35FFY2F4CL2GIQ
X-Message-ID-Hash: Z6ER4LWYRHK4JJMRSL35FFY2F4CL2GIQ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z6ER4LWYRHK4JJMRSL35FFY2F4CL2GIQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 03:53:30PM +0100, Christian K=F6nig wrote:

<...>

> >>>>> +struct sg_table *dma_buf_map(struct dma_buf_attachment *attach,
> >>>>
> >>>> That is clearly not a good name for this function. We already have o=
verloaded the term *mapping* with something completely different.
> >>>
> >>> This function performs DMA mapping, so what name do you suggest inste=
ad of dma_buf_map()?
> >>
> >> Something like dma_buf_phys_vec_to_sg_table(). I'm not good at naming =
either.
> >=20
> > Can I call it simply dma_buf_mapping() as I plan to put that function i=
n dma_buf_mapping.c
> > file per-your request.
>=20
> No, just completely drop the term "mapping" here. This is about phys_vect=
or to sg_table conversion and nothing else.

In order to progress, I renamed these functions to be
dma_buf_phys_vec_to_sgt() and dma_buf_free_sgt(), and put everything in dma=
_buf_mapping.c file.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
