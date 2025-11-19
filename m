Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F73C6F061
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:48:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07D123F831
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:48:59 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 6B0C43F72C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:48:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KA20TCoH;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A17B64064E;
	Wed, 19 Nov 2025 13:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92F90C2BCB3;
	Wed, 19 Nov 2025 13:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763560121;
	bh=WBVxdPHFlyOgnD3YarukkHOdXbptm0KrfxkS3OxiyOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KA20TCoHh4xBpJsET+frUdvFAC1/PD10QEHBCIMaao0WAnseVamH90obusp+eQ5o2
	 JrhR8HX77yzaqJbG7RbbqAQs3awsq4Yvi7P4lQEZ99DLZaMLoKH1/O5e8/LLveXrkv
	 HCKoHyda54qc27+KsHvuXB6+0wPcCgAO6rsNtdaEMFdpPZjPGtqLRxBnqe3Arlb9EG
	 osGef8+spXexQcAOPEgMRnoYG//AXXDg2MNWYqsnZOs0wHsYLRrmAJ/9zE8Pdo+dbS
	 CMLK4jt8qhrjL3QY8uNgMZwKArml4umHyJINrVhyQzJ9qdxF59lBOeH32HAdcfhxrX
	 lBCpSzaidWhXw==
Date: Wed, 19 Nov 2025 15:48:36 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251119134836.GF18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
 <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B0C43F72C
X-Spamd-Bar: ---
Message-ID-Hash: OUBJWRPLAQ7SYAUVQWYQF5EYARISDNBE
X-Message-ID-Hash: OUBJWRPLAQ7SYAUVQWYQF5EYARISDNBE
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OUBJWRPLAQ7SYAUVQWYQF5EYARISDNBE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 02:42:18PM +0100, Christian K=F6nig wrote:
> On 11/19/25 14:25, Jason Gunthorpe wrote:
> > On Wed, Nov 19, 2025 at 02:16:57PM +0100, Christian K=F6nig wrote:
> >>> +/**
> >>> + * dma_buf_map - Returns the scatterlist table of the attachment fro=
m arrays
> >>> + * of physical vectors. This funciton is intended for MMIO memory on=
ly.
> >>> + * @attach:	[in]	attachment whose scatterlist is to be returned
> >>> + * @provider:	[in]	p2pdma provider
> >>> + * @phys_vec:	[in]	array of physical vectors
> >>> + * @nr_ranges:	[in]	number of entries in phys_vec array
> >>> + * @size:	[in]	total size of phys_vec
> >>> + * @dir:	[in]	direction of DMA transfer
> >>> + *
> >>> + * Returns sg_table containing the scatterlist to be returned; retur=
ns ERR_PTR
> >>> + * on error. May return -EINTR if it is interrupted by a signal.
> >>> + *
> >>> + * On success, the DMA addresses and lengths in the returned scatter=
list are
> >>> + * PAGE_SIZE aligned.
> >>> + *
> >>> + * A mapping must be unmapped by using dma_buf_unmap().
> >>> + */
> >>> +struct sg_table *dma_buf_map(struct dma_buf_attachment *attach,
> >>
> >> That is clearly not a good name for this function. We already have ove=
rloaded the term *mapping* with something completely different.
> >>
> >>> +			     struct p2pdma_provider *provider,
> >>> +			     struct dma_buf_phys_vec *phys_vec,
> >>> +			     size_t nr_ranges, size_t size,
> >>> +			     enum dma_data_direction dir)
> >>> +{
> >>> +	unsigned int nents, mapped_len =3D 0;
> >>> +	struct dma_buf_dma *dma;
> >>> +	struct scatterlist *sgl;
> >>> +	dma_addr_t addr;
> >>> +	size_t i;
> >>> +	int ret;
> >>> +
> >>> +	dma_resv_assert_held(attach->dmabuf->resv);
> >>> +
> >>> +	if (WARN_ON(!attach || !attach->dmabuf || !provider))
> >>> +		/* This function is supposed to work on MMIO memory only */
> >>> +		return ERR_PTR(-EINVAL);
> >>> +
> >>> +	dma =3D kzalloc(sizeof(*dma), GFP_KERNEL);
> >>> +	if (!dma)
> >>> +		return ERR_PTR(-ENOMEM);
> >>> +
> >>> +	switch (pci_p2pdma_map_type(provider, attach->dev)) {
> >>> +	case PCI_P2PDMA_MAP_BUS_ADDR:
> >>> +		/*
> >>> +		 * There is no need in IOVA at all for this flow.
> >>> +		 */
> >>> +		break;
> >>> +	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
> >>> +		dma->state =3D kzalloc(sizeof(*dma->state), GFP_KERNEL);
> >>> +		if (!dma->state) {
> >>> +			ret =3D -ENOMEM;
> >>> +			goto err_free_dma;
> >>> +		}
> >>> +
> >>> +		dma_iova_try_alloc(attach->dev, dma->state, 0, size);
> >>
> >> Oh, that is a clear no-go for the core DMA-buf code.
> >>
> >> It's intentionally up to the exporter how to create the DMA
> >> addresses the importer can work with.
> >=20
> > I can't fully understand this remark?
>=20
> The exporter should be able to decide if it actually wants to use P2P whe=
n the transfer has to go through the host bridge (e.g. when IOMMU/bridge ro=
uting bits are enabled).
>=20
> Thinking more about it exporters can now probably call pci_p2pdma_map_typ=
e(provider, attach->dev) before calling this function so that is probably o=
k.
>=20
> >> We could add something like a dma_buf_sg_helper.c or similar and put i=
t in there.
> >=20
> > Yes, the intention is this function is an "exporter helper" that an
> > exporter can call if it wants to help generate the scatterlist.
> >=20
> > So your "no-go" is just about what file it is in, not anything about
> > how it works?
>=20
> Yes, exactly that. Just move it into a separate file somewhere and it's p=
robably good to go as far as I can see.
>=20
> But only take that as Acked-by, I would need at least a day (or week) of =
free time to wrap my head around all the technical details again. And that =
is something I won't have before January or even later.

If it helps, we can meet at LPC. Jason and/or I will be happy to assist.

Thanks

>=20
> Regards,
> Christian.
>=20
> >=20
> > Thanks,
> > Jason
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
