Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJawGGLjcGk+awAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:32:02 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6FE58785
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:32:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF5BA3F70E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:32:00 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id EC65D3F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 14:31:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KqhQkB0H;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 88F98600AD;
	Wed, 21 Jan 2026 14:31:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2629C4CEF1;
	Wed, 21 Jan 2026 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769005914;
	bh=PeR5g4KP8x/lJhIeGe2dDKX2Op8R7HIZRzZ9ayHsJco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KqhQkB0HZ1m+DKmEb4iOkwxeDGvAPNkuGn61XTxaCqhuL9qVbUQfxtrTwPujoAdVb
	 VrWiUmPtEeUvE9nGyKANKxMoUIMS0e5nHQ31T+VEQXUu37yer/5Hzj5XuurNOilyo2
	 +YYGfaIa3Dbj0S4Qd6g3VaXA17/1wzg6rpzqnlrG4nsV8pQRcJ1G7Oj+N6BLxO/rpy
	 nVcDdV+4eAHtYRPFNU2TGJOODjbr6a9NoxnTowpmmzFAyZbPWVMuabJ0YV3hjf1iNz
	 8aDY8IqPHmmGAsQTtHkqpxZzOBU4w+H2paxEDwGUBatWmmBD4eAn1X2NjKOH85/uBz
	 eYXBSWhDgDLeQ==
Date: Wed, 21 Jan 2026 16:31:50 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260121143150.GD13201@unreal>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-3-b7e0b07b8214@nvidia.com>
 <4fe42e7e-846c-4aae-8274-3e9a5e7f9a6d@amd.com>
 <20260121091423.GY13201@unreal>
 <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
 <20260121131852.GX961572@ziepe.ca>
 <8a8ba092-6cfa-41d2-8137-e5e9d917e914@amd.com>
 <20260121135948.GB961572@ziepe.ca>
 <8689345b-241a-47f4-8e9a-61cde285bf8b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8689345b-241a-47f4-8e9a-61cde285bf8b@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: J4DEYCICE3YYUMLOGAAQZVQANNZD4XGD
X-Message-ID-Hash: J4DEYCICE3YYUMLOGAAQZVQANNZD4XGD
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/7] dma-buf: Document RDMA non-ODP invalidate_mapping() special case
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J4DEYCICE3YYUMLOGAAQZVQANNZD4XGD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ziepe.ca,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: EB6FE58785
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 03:15:46PM +0100, Christian K=F6nig wrote:
> On 1/21/26 14:59, Jason Gunthorpe wrote:
> > On Wed, Jan 21, 2026 at 02:52:53PM +0100, Christian K=F6nig wrote:
> >> On 1/21/26 14:18, Jason Gunthorpe wrote:
> >>> On Wed, Jan 21, 2026 at 10:17:16AM +0100, Christian K=F6nig wrote:
> >>>> The whole idea is to make invalidate_mappings truly optional.
> >>>
> >>> But it's not really optional! It's absence means we are ignoring UAF
> >>> security issues when the exporters do their move_notify() and nothing
> >>> happens.
> >>
> >> No that is unproblematic.
> >>
> >> See the invalidate_mappings callback just tells the importer that
> >> the mapping in question can't be relied on any more.
> >>
> >> But the mapping is truly freed only by the importer calling
> >> dma_buf_unmap_attachment().
> >>
> >> In other words the invalidate_mappings give the signal to the
> >> importer to disable all operations and the
> >> dma_buf_unmap_attachment() is the signal from the importer that the
> >> housekeeping structures can be freed and the underlying address
> >> space or backing object re-used.
> >=20
> > I see
> >=20
> > Can we document this please, I haven't seen this scheme described
> > anyhwere.
> >=20
> > And let's clarify what I said in my other email that this new revoke
> > semantic is not just a signal to maybe someday unmap but a hard
> > barrier that it must be done once the fences complete, similar to
> > non-pinned importers.
>=20
> Well, I would avoid that semantics.
>=20
> Even when the exporter requests the mapping to be invalidated it does not=
 mean that the mapping can go away immediately.
>=20
> It's fine when accesses initiated after an invalidation and then waiting =
for fences go into nirvana and have undefined results, but they should not =
trigger PCI AER, warnings from the IOMMU or even worse end up in some MMIO =
BAR of a newly attached devices.
>=20
> So if the exporter wants to be 100% sure that nobody is using the mapping=
 any more then it needs to wait for the importer to call dma_buf_unmap_atta=
chment().
>=20
> > The cover letter should be clarified with this understanding too.
>=20
> Yeah, completely agree. We really need to flash out that semantics in the=
 documentation.

Someone knowledgeable needs to document this properly, either in the code  =

or in the official documentation. A cover letter is not the right place for=
 =20
subtle design decisions.

Thanks

>=20
> Regards,
> Christian.
>=20
> >=20
> > Jason
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
