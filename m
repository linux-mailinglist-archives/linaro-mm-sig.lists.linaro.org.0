Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2E2C729FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 08:38:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FD263F839
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 07:38:32 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 762B93F6C2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:38:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Fk1GOwXX;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 32E2D6014A;
	Thu, 20 Nov 2025 07:38:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B2CDC4CEF1;
	Thu, 20 Nov 2025 07:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763624294;
	bh=TBmcKl0VoEim/6SAhgGNXn7s3ldHbwABAdg4lb6XQUg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fk1GOwXX+8I2wrjVFUFCs8eOHzSYMIpbSRNsybaaYnqmR1hvk8o1qyzeHekcACEa7
	 0yEVvvcB58TVkvjvuQ+g/DQOgZnEaPJs34D8Vdf/e9Zwg/WSSr8nANTFzZTxu1EY4w
	 f+G77YPyofCyVfOqnqhJ1EEumdeOwl1cYYCiSj7kjTatwWqUljRJ6vu6RxqRHEAEU8
	 HRAo+V91htNpmPP70IHNTW6yrAz7B8PMq5q1hNDWdzinzbtY3bxLpPYfEP2VVI+Xgm
	 NiTNPnC07XH/GYQn22i+8qeLjGe/j0I0H3GmLnYmVwrnbgDp8dKA8f5MMMocC3fZuC
	 Xf3HRBvJIpyCw==
Date: Thu, 20 Nov 2025 09:38:10 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251120073810.GQ18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119134245.GD18335@unreal>
 <6714dc49-6b5c-4d58-9a43-95bb95873a97@amd.com>
 <20251119145007.GJ18335@unreal>
 <26d7ecab-33ed-4aab-82d5-954b0d1d1718@amd.com>
 <20251119163326.GL18335@unreal>
 <3053398d-94d8-42fa-aedc-927746375521@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3053398d-94d8-42fa-aedc-927746375521@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from,100.75.92.58:received];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 762B93F6C2
X-Spamd-Bar: ---
Message-ID-Hash: KINLDBNERICCBDVOYDEZXV4JMIAEDHFU
X-Message-ID-Hash: KINLDBNERICCBDVOYDEZXV4JMIAEDHFU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KINLDBNERICCBDVOYDEZXV4JMIAEDHFU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 08:03:09AM +0100, Christian K=F6nig wrote:
> On 11/19/25 17:33, Leon Romanovsky wrote:
> > On Wed, Nov 19, 2025 at 03:53:30PM +0100, Christian K=F6nig wrote:
> >=20
> > <...>
> >=20
> >>>>>>> +struct sg_table *dma_buf_map(struct dma_buf_attachment *attach,
> >>>>>>
> >>>>>> That is clearly not a good name for this function. We already have=
 overloaded the term *mapping* with something completely different.
> >>>>>
> >>>>> This function performs DMA mapping, so what name do you suggest ins=
tead of dma_buf_map()?
> >>>>
> >>>> Something like dma_buf_phys_vec_to_sg_table(). I'm not good at namin=
g either.
> >>>
> >>> Can I call it simply dma_buf_mapping() as I plan to put that function=
 in dma_buf_mapping.c
> >>> file per-your request.
> >>
> >> No, just completely drop the term "mapping" here. This is about phys_v=
ector to sg_table conversion and nothing else.
> >=20
> > In order to progress, I renamed these functions to be
> > dma_buf_phys_vec_to_sgt() and dma_buf_free_sgt(), and put everything in=
 dma_buf_mapping.c file.
>=20
> Yeah, the problem is I even thought more about it and came to the conclus=
ion that this is still not sufficient for an rb or an Ack-by.
>=20
> A core concept of DMA-buf is that the exporter takes care of all the mapp=
ings and not the framework.
>=20
> Calling pci_p2pdma_bus_addr_map(), dma_map_phys() or dma_map_phys() from =
DMA-buf code is extremely questionable.
>=20
> That should really be inside VFIO and not DMA-buf code, so to move forwar=
d I strongly suggest to either move that into VFIO or the DMA API directly.

We got the request to move to DMABUF and agreement a long time ago, in v5.
https://lore.kernel.org/all/aPYrEroyWVOvAu-5@infradead.org/

Thanks

>=20
> Regards,
> Christian.
>=20
> >=20
> > Thanks
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
