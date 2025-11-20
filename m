Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9082DC72B7B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 09:06:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DA703F690
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 08:06:56 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 9FFFE3F690
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 08:06:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Jyoe7Oe5;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 09247440EF;
	Thu, 20 Nov 2025 08:06:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 124CEC4CEF1;
	Thu, 20 Nov 2025 08:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625999;
	bh=mxT/rSlaqP+txsmWmS9/PssKwzGp7j3BhlaZuVwXZis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jyoe7Oe5fQPJ/c3G0Y3Le2MuwLeYij5ETlxaQsfHH0IeCeAp4SV8sma9/p4puBfJd
	 uSJLTrxHP3QFvgERIjsj/1tqk+X/okArVSEm8ZMhuoWrUm+nw49VGAhsvO+/F7roqB
	 earNWu4MD42Xdka7K6xqmgczk8orzPbhqOIDxQD+/aKHXhBiOGA4RplKw1T/I2rQ6a
	 ev9a2LBRLzTP1F+YYtsiwBQ2gNaHKtotSqd6c5JXDYnlHf0a974bbsQ8w3T/BC46cr
	 IlYGcGcRRMayKQVYgRTSLxtDvYEu5tk34YIf2hUPYoKt2aPFZV53WId4koKue3AXLS
	 Eq5b6O0Zpw2Lw==
Date: Thu, 20 Nov 2025 10:06:35 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251120080635.GT18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
 <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
 <20251119193114.GP17968@ziepe.ca>
 <c115432c-b63d-4b99-be18-0bf96398e153@amd.com>
 <20251120074137.GR18335@unreal>
 <209499e2-6a06-4291-ad4c-77230926c665@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <209499e2-6a06-4291-ad4c-77230926c665@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9FFFE3F690
X-Spamd-Bar: ---
Message-ID-Hash: F6OEVXIC2CIT36CTCFUATCNFR5QGMFSA
X-Message-ID-Hash: F6OEVXIC2CIT36CTCFUATCNFR5QGMFSA
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F6OEVXIC2CIT36CTCFUATCNFR5QGMFSA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 08:54:37AM +0100, Christian K=F6nig wrote:
> On 11/20/25 08:41, Leon Romanovsky wrote:
> > On Thu, Nov 20, 2025 at 08:08:27AM +0100, Christian K=F6nig wrote:
> >> On 11/19/25 20:31, Jason Gunthorpe wrote:
> >>> On Wed, Nov 19, 2025 at 02:42:18PM +0100, Christian K=F6nig wrote:
> >>>
> >>>>>>> +	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
> >>>>>>> +		dma->state =3D kzalloc(sizeof(*dma->state), GFP_KERNEL);
> >>>>>>> +		if (!dma->state) {
> >>>>>>> +			ret =3D -ENOMEM;
> >>>>>>> +			goto err_free_dma;
> >>>>>>> +		}
> >>>>>>> +
> >>>>>>> +		dma_iova_try_alloc(attach->dev, dma->state, 0, size);
> >>>>>>
> >>>>>> Oh, that is a clear no-go for the core DMA-buf code.
> >>>>>>
> >>>>>> It's intentionally up to the exporter how to create the DMA
> >>>>>> addresses the importer can work with.
> >>>>>
> >>>>> I can't fully understand this remark?
> >>>>
> >>>> The exporter should be able to decide if it actually wants to use
> >>>> P2P when the transfer has to go through the host bridge (e.g. when
> >>>> IOMMU/bridge routing bits are enabled).
> >>>
> >>> Sure, but this is a simplified helper for exporters that don't have
> >>> choices where the memory comes from.
> >>
> >> That is extremely questionable as justification to put that in common =
DMA-buf code.
> >>
> >>> I fully expet to see changes to this to support more use cases,
> >>> including the one above. We should do those changes along with users
> >>> making use of them so we can evaluate what works best.
> >>
> >> Yeah, exactly that's my concern.
> >>
> >>>> But only take that as Acked-by, I would need at least a day (or
> >>>> week) of free time to wrap my head around all the technical details
> >>>> again. And that is something I won't have before January or even
> >>>> later.
> >>>
> >>> Sure, it is alot, and I think DRM community in general should come up
> >>> to speed on the new DMA API and how we are pushing to see P2P work
> >>> within Linux.
> >>>
> >>> So thanks, we can take the Acked-by and progress here. Interested
> >>> parties can pick it up from this point when time allows.
> >>
> >> Wait a second. After sleeping a night over it I think my initial take =
that we really should not put that into common DMA-buf code seems to hold t=
rue.
> >>
> >> This is the use case for VFIO, but I absolutely want to avoid other dr=
ivers from re-using this code until be have more experience with that.
> >>
> >> So to move forward I now strongly think we should keep that in VFIO un=
til somebody else comes along and needs that helper.
> >=20
> > It was put in VFIO at the beginning, but Christoph objected to it,
> > because that will require exporting symbol for pci_p2pdma_map_type().
> > which was universally agreed as not good idea.
>=20
> Yeah, that is exactly what I object here :)
>=20
> We can have the helper in DMA-buf *if* pci_p2pdma_map_type() is called by=
 drivers or at least accessible. That's what I pointed out in the other mai=
l before as well.
>=20
> The exporter must be able to make decisions based on if the transaction w=
ould go over the host bridge or not.
>=20
> Background is that in a lot of use cases you rather want to move the back=
ing store into system memory instead of keeping it in local memory if the d=
river doesn't have direct access over a common upstream bridge.
>=20
> Currently drivers decide that based on if IOMMU is enabled or not (and a =
few other quirks), but essentially you absolutely want a function which giv=
es this information to exporters. For the VFIO use case it doesn't matter b=
ecause you can't switch the BAR for system memory.
>=20
> To unblock you, please add a big fat comment in the kerneldoc of the mapp=
ing explaining this and that it might be necessary for exporters to call pc=
i_p2pdma_map_type() as well.

Thanks,

What do you think about it?

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-ma=
pping.c
index a69bb73db86d..05ec84a0157b 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -84,6 +84,11 @@ struct dma_buf_dma {
  * PAGE_SIZE aligned.
  *
  * A mapping must be unmapped by using dma_buf_free_sgt().
+ *
+ * NOTE: While this function is intended for DMA-buf importers, it is crit=
ical
+ * that the DMA-buf exporter is capable of performing peer-to-peer (P2P) D=
MA
+ * directly between PCI devices, without routing transactions through the =
host
+ * bridge.
  */
 struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
                                         struct p2pdma_provider *provider,
(END)


>=20
> Regards,
> Christian.
>=20
> >=20
> > https://lore.kernel.org/all/aPYrEroyWVOvAu-5@infradead.org/
> >=20
> > Thanks
> >=20
> >>
> >> Regards,
> >> Christian.
> >>
> >>>
> >>> We can also have a mini-community call to give a summary/etc on these
> >>> topics.
> >>>
> >>> Thanks,
> >>> Jason
> >>
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
