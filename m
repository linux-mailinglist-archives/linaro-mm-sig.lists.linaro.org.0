Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFHQKNQscWl1fAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 20:45:24 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FFE5C72E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 20:45:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4826F3F830
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 19:45:23 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 5B3AF3F776
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 19:45:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XfF373wv;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D4D47600AA;
	Wed, 21 Jan 2026 19:45:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC137C4CEF1;
	Wed, 21 Jan 2026 19:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769024716;
	bh=HVyQFgBfMrcX6zrVZsiDIfHM3nU3cIMX1ciddzliDxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XfF373wvasaVYywYyQxHoClwiMWz8KrFsYUXRcwzTWFXH8jFxRN6XiMEK/sTFr3Mn
	 0RFROVxbShCa80gix4sGne/fdv97W8+yFsXmVIxx/HhTzIfo6pd+EqqAFJxax21d14
	 hsRYEjzVVYESAgzWRY+cmOE810Uu7FX/j75AaUmsYFnNYoBxublO4Ix0LrY/exf8xB
	 Uh1bbuO/eo8XNc2/Tz/6CsZaAuTQbajnDXxsZzzFO4Zl4/U/owt1IqABFjQKJqg03K
	 4z1fXd7fxdfSHEXD0kFJnkGug7nA67PwGWh1Ql0FmCsiVgChnPf47gVSCBSqWlyJMQ
	 oyDq0tZSmVGSA==
Date: Wed, 21 Jan 2026 21:45:06 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260121194506.GI13201@unreal>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
 <20260121160140.GF961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121160140.GF961572@ziepe.ca>
X-Spamd-Bar: ---
Message-ID-Hash: TWRF5CGVRH6OXZPWUTAIQOE6UV3ECXYT
X-Message-ID-Hash: TWRF5CGVRH6OXZPWUTAIQOE6UV3ECXYT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig
 @lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TWRF5CGVRH6OXZPWUTAIQOE6UV3ECXYT/>
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
	FREEMAIL_CC(0.00)[amd.com,linaro.org,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,amd.com:email]
X-Rspamd-Queue-Id: 32FFE5C72E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 12:01:40PM -0400, Jason Gunthorpe wrote:
> On Wed, Jan 21, 2026 at 04:28:17PM +0100, Christian K=F6nig wrote:
> > On 1/21/26 14:31, Jason Gunthorpe wrote:
> > > On Wed, Jan 21, 2026 at 10:20:51AM +0100, Christian K=F6nig wrote:
> > >> On 1/20/26 15:07, Leon Romanovsky wrote:
> > >>> From: Leon Romanovsky <leonro@nvidia.com>
> > >>>
> > >>> dma-buf invalidation is performed asynchronously by hardware, so VF=
IO must
> > >>> wait until all affected objects have been fully invalidated.
> > >>>
> > >>> Fixes: 5d74781ebc86 ("vfio/pci: Add dma-buf export support for MMIO=
 regions")
> > >>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > >>
> > >> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> > >>
> > >> Please also keep in mind that the while this wait for all fences for
> > >> correctness you also need to keep the mapping valid until
> > >> dma_buf_unmap_attachment() was called.
> > >=20
> > > Can you elaborate on this more?
> > >=20
> > > I think what we want for dma_buf_attach_revocable() is the strong
> > > guarentee that the importer stops doing all access to the memory once
> > > this sequence is completed and the exporter can rely on it. I don't
> > > think this works any other way.
> > >=20
> > > This is already true for dynamic move capable importers, right?
> >=20
> > Not quite, no.
>=20
> :(
>=20
> It is kind of shocking to hear these APIs work like this with such a
> loose lifetime definition. Leon can you include some of these detail
> in the new comments?

If we can clarify what needs to be addressed for v5, I will proceed. =20
At the moment, it's still unclear what is missing in v4.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
