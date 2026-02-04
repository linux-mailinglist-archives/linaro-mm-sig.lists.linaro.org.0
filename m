Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL7JJ7MJg2lLgwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 09:56:19 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 353F7E3611
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 09:56:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33DB13F99C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 08:56:18 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 2B09D3F722
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 08:56:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=V7pTqA4L;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 780C442B6C;
	Wed,  4 Feb 2026 08:56:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBAFAC4CEF7;
	Wed,  4 Feb 2026 08:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770195371;
	bh=7OhNdyQd9Hj4JZ3WwzaaVRughLWneBid2/id9k15jgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7pTqA4L9gw8RLNHTPQ3c3PmSmPUJN8CJLkSplhC/tA6rLyNs/ON8PEJ77FghkrYL
	 7YC7kC+vzUJczQux8gMcjkSltXZByy2k3Y/tn+IZTssRYphrNHoXV/inmhMNPSeTpq
	 /EElHDk0r2Fud4Ow8YLv+QLv1E77BycSs/6TXoM2dUc9VjGtgSPDYwYm8Ej4MLTHbO
	 elG6nwpwLEFKKVyCeZfL3VndxYrhjKHWPJEgy+OWK/3jRcIHqHo7MMa8eGJO5MfqPJ
	 iaudGOxgyj2Q+GiGdIWm2eFONDY0yvSNQsmD2v7LsLyMzax1HMUELlY3ibNKbudFUm
	 17VPZKFF1DiPg==
Date: Wed, 4 Feb 2026 09:56:08 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260204-icy-classic-crayfish-68da6d@houat>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260202160425.GO34749@unreal>
 <20260204081630.GA6771@unreal>
MIME-Version: 1.0
In-Reply-To: <20260204081630.GA6771@unreal>
X-Spamd-Bar: -----
Message-ID-Hash: ZGR576SHIW74BDMGVPHRWZGRAPJQKBUX
X-Message-ID-Hash: ZGR576SHIW74BDMGVPHRWZGRAPJQKBUX
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.lin
 aro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGR576SHIW74BDMGVPHRWZGRAPJQKBUX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6579863108667895183=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linaro.org,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,kernel.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.lin,lists.linux.dev];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 353F7E3611
X-Rspamd-Action: no action


--===============6579863108667895183==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="md2hsdfsayzd7ozo"
Content-Disposition: inline


--md2hsdfsayzd7ozo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate
 shared buffers
MIME-Version: 1.0

On Wed, Feb 04, 2026 at 10:16:30AM +0200, Leon Romanovsky wrote:
> On Mon, Feb 02, 2026 at 06:04:25PM +0200, Leon Romanovsky wrote:
> > On Sat, Jan 31, 2026 at 07:34:10AM +0200, Leon Romanovsky wrote:
> > > Changelog:
> > > v7:
> >=20
> > <...>
> >=20
> > > Leon Romanovsky (8):
> > >       dma-buf: Rename .move_notify() callback to a clearer identifier
> > >       dma-buf: Rename dma_buf_move_notify() to dma_buf_invalidate_map=
pings()
> > >       dma-buf: Always build with DMABUF_MOVE_NOTIFY
> > >       vfio: Wait for dma-buf invalidation to complete
> > >       dma-buf: Make .invalidate_mapping() truly optional
> > >       dma-buf: Add dma_buf_attach_revocable()
> > >       vfio: Permit VFIO to work with pinned importers
> > >       iommufd: Add dma_buf_pin()
> > >=20
> > >  drivers/dma-buf/Kconfig                     | 12 -----
> > >  drivers/dma-buf/dma-buf.c                   | 69 +++++++++++++++++++=
+-----
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c | 14 ++---
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_object.c  |  2 +-
> > >  drivers/gpu/drm/amd/amdkfd/Kconfig          |  2 +-
> > >  drivers/gpu/drm/virtio/virtgpu_prime.c      |  2 +-
> > >  drivers/gpu/drm/xe/tests/xe_dma_buf.c       |  7 ++-
> > >  drivers/gpu/drm/xe/xe_bo.c                  |  2 +-
> > >  drivers/gpu/drm/xe/xe_dma_buf.c             | 14 ++---
> > >  drivers/infiniband/core/umem_dmabuf.c       | 13 -----
> > >  drivers/infiniband/hw/mlx5/mr.c             |  2 +-
> > >  drivers/iommu/iommufd/pages.c               | 11 +++-
> > >  drivers/iommu/iommufd/selftest.c            |  2 +-
> > >  drivers/vfio/pci/vfio_pci_dmabuf.c          | 80 +++++++++++++++++++=
+++-------
> > >  include/linux/dma-buf.h                     | 17 +++---
> > >  15 files changed, 153 insertions(+), 96 deletions(-)
> >=20
> > Christian,
> >=20
> > Given the ongoing discussion around patch v5, I'm a bit unclear on the
> > current state. Is the series ready for merging, or do you need me to
> > rework anything further?
>=20
> Christian,
>=20
> Let's not miss the merge window for work that is already ready.

The cutoff date for the merge window was on 25/1, so it was already
missed by the time you sent your series.

Maxime

--md2hsdfsayzd7ozo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaYMJowAKCRAnX84Zoj2+
djVFAX4o65eZLnv9pSuBC/f19F9Wa+5AV3tbnVDyNWy7aEVTPVlpkwyBh3kSx24f
CiGuWJUBgMDxh0mGTwKw1M4dapaGNtVEhWvE/mj7fWyRzk3l536hontO+fVSQspp
IjEjywqm8A==
=TNrj
-----END PGP SIGNATURE-----

--md2hsdfsayzd7ozo--

--===============6579863108667895183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6579863108667895183==--
