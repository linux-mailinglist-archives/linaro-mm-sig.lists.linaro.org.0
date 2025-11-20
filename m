Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 584D2C72A1C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 08:41:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65B693F831
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 07:41:58 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 631EE3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:41:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=QNiHfv2S;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D72AA6011E;
	Thu, 20 Nov 2025 07:41:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE678C4CEF1;
	Thu, 20 Nov 2025 07:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763624501;
	bh=RzCrc8OP4MQJ51Y3Cp/KnGNHr8pH8H/uOuzXNgsdf0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QNiHfv2SAaFyrrm6ZhCR8ucSYnRrrdzPojcMIcohfbtDqJS/JJSe9Cm0EPsn0RMT1
	 9FMh/DEL9DggTQsNRNFC6ZevNso3DG/8cJnjGqx1F973WBJx3zNUrkfRwIJTDtGniq
	 T1iBja1OPDeFawU+b9NyxYO1eLXP5bDXy+x7TMExTwuaVkaO9yRhyCB63N85FD3fx7
	 OxMoyn5s+7tJhzxI145c0GzmDIWiwooPR63zC0GIQoVhzfmUIy/rjbN0wvDQAasxv8
	 4RKMSzrJoBj9dPKY+MZCCAfPLwtiZfQrtzxCUQWESd/6QU20I/oRvqEOXzQEx5F9s1
	 fwoUvg48Mzzlw==
Date: Thu, 20 Nov 2025 09:41:37 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251120074137.GR18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
 <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
 <20251119193114.GP17968@ziepe.ca>
 <c115432c-b63d-4b99-be18-0bf96398e153@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c115432c-b63d-4b99-be18-0bf96398e153@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[unreal:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 631EE3F7A5
X-Spamd-Bar: ---
Message-ID-Hash: X3FMHKP7IRF2BUO6SQYKE657XC2HVF66
X-Message-ID-Hash: X3FMHKP7IRF2BUO6SQYKE657XC2HVF66
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X3FMHKP7IRF2BUO6SQYKE657XC2HVF66/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 08:08:27AM +0100, Christian K=F6nig wrote:
> On 11/19/25 20:31, Jason Gunthorpe wrote:
> > On Wed, Nov 19, 2025 at 02:42:18PM +0100, Christian K=F6nig wrote:
> >=20
> >>>>> +	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
> >>>>> +		dma->state =3D kzalloc(sizeof(*dma->state), GFP_KERNEL);
> >>>>> +		if (!dma->state) {
> >>>>> +			ret =3D -ENOMEM;
> >>>>> +			goto err_free_dma;
> >>>>> +		}
> >>>>> +
> >>>>> +		dma_iova_try_alloc(attach->dev, dma->state, 0, size);
> >>>>
> >>>> Oh, that is a clear no-go for the core DMA-buf code.
> >>>>
> >>>> It's intentionally up to the exporter how to create the DMA
> >>>> addresses the importer can work with.
> >>>
> >>> I can't fully understand this remark?
> >>
> >> The exporter should be able to decide if it actually wants to use
> >> P2P when the transfer has to go through the host bridge (e.g. when
> >> IOMMU/bridge routing bits are enabled).
> >=20
> > Sure, but this is a simplified helper for exporters that don't have
> > choices where the memory comes from.
>=20
> That is extremely questionable as justification to put that in common DMA=
-buf code.
>=20
> > I fully expet to see changes to this to support more use cases,
> > including the one above. We should do those changes along with users
> > making use of them so we can evaluate what works best.
>=20
> Yeah, exactly that's my concern.
>=20
> >> But only take that as Acked-by, I would need at least a day (or
> >> week) of free time to wrap my head around all the technical details
> >> again. And that is something I won't have before January or even
> >> later.
> >=20
> > Sure, it is alot, and I think DRM community in general should come up
> > to speed on the new DMA API and how we are pushing to see P2P work
> > within Linux.
> >=20
> > So thanks, we can take the Acked-by and progress here. Interested
> > parties can pick it up from this point when time allows.
>=20
> Wait a second. After sleeping a night over it I think my initial take tha=
t we really should not put that into common DMA-buf code seems to hold true.
>=20
> This is the use case for VFIO, but I absolutely want to avoid other drive=
rs from re-using this code until be have more experience with that.
>=20
> So to move forward I now strongly think we should keep that in VFIO until=
 somebody else comes along and needs that helper.

It was put in VFIO at the beginning, but Christoph objected to it,
because that will require exporting symbol for pci_p2pdma_map_type().
which was universally agreed as not good idea.

https://lore.kernel.org/all/aPYrEroyWVOvAu-5@infradead.org/

Thanks

>=20
> Regards,
> Christian.
>=20
> >=20
> > We can also have a mini-community call to give a summary/etc on these
> > topics.
> >=20
> > Thanks,
> > Jason
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
