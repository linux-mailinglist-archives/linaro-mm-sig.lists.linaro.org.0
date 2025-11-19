Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B14DC6EC20
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:13:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 196973F906
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:13:41 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id CDAC63F840
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:13:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GHF1Aqwk;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 29B3B43352;
	Wed, 19 Nov 2025 13:13:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B4F4C113D0;
	Wed, 19 Nov 2025 13:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763557998;
	bh=0Xx39uDqzjZbL4y1fEwlUfWXemPTGRgOd4dvOT2DUMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GHF1Aqwk7stwCyykVPT1YGqLL0q2EFkbo6kN9EUrvLJCQ171txGNyAbhz/88FHaZv
	 9Rhg1BgJ1o6pwk5sbN0PfEDJwC3hklbr2bavfyxMzT01HhF0wF93D31LJijcoJ6gLx
	 RRFCtGxIX1DwUcuBAwzEstv8DSzzM37P+t2zpedyyLBnUf7WSsyc8s20B6dfTtZtYP
	 n3SeovgFnfzZ6hZLrcxPGnzG7gO49j5G0yZ+xF76uYa69LzleVp3n0yOevVQXsxKub
	 cmKcRZl2oO6LkMOz/QRS9gfCL6+6UFT9W06hc6fG68egCXsf1a6inlsq6trLGvRe00
	 zTHjfAjfnTUJQ==
Date: Wed, 19 Nov 2025 15:13:13 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251119131313.GA18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-5-fd9aa5df478f@nvidia.com>
 <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[172.234.252.31:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CDAC63F840
X-Spamd-Bar: ---
Message-ID-Hash: 7BXL7QHVD3LSHPRSSAEKOO3CKCINE32X
X-Message-ID-Hash: 7BXL7QHVD3LSHPRSSAEKOO3CKCINE32X
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7BXL7QHVD3LSHPRSSAEKOO3CKCINE32X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 10:18:08AM +0100, Christian K=F6nig wrote:
>=20
>=20
> On 11/11/25 10:57, Leon Romanovsky wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> >=20
> > Reflect latest changes in p2p implementation to support DMABUF lifecycl=
e.
> >=20
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > ---
> >  Documentation/driver-api/pci/p2pdma.rst | 95 +++++++++++++++++++++++++=
--------
> >  1 file changed, 72 insertions(+), 23 deletions(-)

<...>

> > These MMIO pages have no struct page, and
>=20
> Well please drop "pages" here. Just say MMIO addresses.
>=20
> > +if used with mmap() must create special PTEs. As such there are very f=
ew
> > +kernel uAPIs that can accept pointers to them; in particular they cann=
ot be used
> > +with read()/write(), including O_DIRECT.

<...>

> > +DMABUF provides an alternative to the above struct page-based
> > +client/provider/orchestrator system. In this mode the exporting driver=
 will wrap
> > +some of its MMIO in a DMABUF and give the DMABUF FD to userspace.
> > +
> > +Userspace can then pass the FD to an importing driver which will ask t=
he
> > +exporting driver to map it.
>=20
> "to map it to the importer".

No problem, changed.

>=20
> Regards,
> Christian.
>=20
> > +
> > +In this case the initiator and target pci_devices are known and the P2=
P subsystem
> > +is used to determine the mapping type. The phys_addr_t-based DMA API i=
s used to
> > +establish the dma_addr_t.
> > +
> > +Lifecycle is controlled by DMABUF move_notify(). When the exporting dr=
iver wants
> > +to remove() it must deliver an invalidation shutdown to all DMABUF imp=
orting
> > +drivers through move_notify() and synchronously DMA unmap all the MMIO.
> > +
> > +No importing driver can continue to have a DMA map to the MMIO after t=
he
> > +exporting driver has destroyed its p2p_provider.
> > =20
> > =20
> >  P2P DMA Support Library
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
