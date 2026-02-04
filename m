Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDMDK001g2kwjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 13:02:21 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F02DE57A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 13:02:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B90E3F756
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 12:02:09 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id A095D3F756
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 12:01:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ecqvuUEK;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0737760010;
	Wed,  4 Feb 2026 12:01:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 378D2C4CEF7;
	Wed,  4 Feb 2026 12:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770206517;
	bh=pAFppQWXwyr1ZHA6/KdUe7Mqw4VMKSVzSpDees0+yiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ecqvuUEKp9ozIxLsvB6vCc8eRdemkPcfP2cBWqDhT6uTHs1LaqcW/rS1U0QWCNwy0
	 MT7uHEDmEEn0Q9RU0yBnr6lmxBX5NtRp2Z5U4bAgyXv5FA3iDPjfUk2b5eg/M0CTWr
	 62hbjfKXeIJ+z8PWK0fgJFApOrSEvWgFQ+jTdMcFg8pMFdwcyET55bA2kgYoQrN0gn
	 5q7xjfWGt4uFO/HyRXwwiuPtvx2U2ebm9GLPNKmiJr8cu6g8eaj6BGGClB7lMSVz8d
	 N5p6UlSjc25me9PA1yqgmA+kwLSmhAGExoh4YUknovNWidckZNrP8ALc3D9kF7GYem
	 MyyM/sne2vZxA==
Date: Wed, 4 Feb 2026 13:01:54 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260204-clever-butterfly-of-mastery-0cdc19@houat>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260202160425.GO34749@unreal>
 <20260204081630.GA6771@unreal>
 <20260204-icy-classic-crayfish-68da6d@houat>
 <20260204115212.GG6771@unreal>
MIME-Version: 1.0
In-Reply-To: <20260204115212.GG6771@unreal>
X-Spamd-Bar: -----
Message-ID-Hash: P56UHYRGPY64Q7PMA3TEASQPW2IQ3AQD
X-Message-ID-Hash: P56UHYRGPY64Q7PMA3TEASQPW2IQ3AQD
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.lin
 aro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P56UHYRGPY64Q7PMA3TEASQPW2IQ3AQD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2393732968861016266=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[33];
	ASN_FAIL(0.00)[118.186.210.44.asn.rspamd.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.990];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linaro.org,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,kernel.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.lin,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7F02DE57A8
X-Rspamd-Action: no action


--===============2393732968861016266==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7qwl2ctcsasohfq6"
Content-Disposition: inline


--7qwl2ctcsasohfq6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate
 shared buffers
MIME-Version: 1.0

On Wed, Feb 04, 2026 at 01:52:12PM +0200, Leon Romanovsky wrote:
> On Wed, Feb 04, 2026 at 09:56:08AM +0100, Maxime Ripard wrote:
> > On Wed, Feb 04, 2026 at 10:16:30AM +0200, Leon Romanovsky wrote:
> > > On Mon, Feb 02, 2026 at 06:04:25PM +0200, Leon Romanovsky wrote:
> > > > On Sat, Jan 31, 2026 at 07:34:10AM +0200, Leon Romanovsky wrote:
> > > > > Changelog:
> > > > > v7:
> > > >=20
> > > > <...>
> > > >=20
> > > > > Leon Romanovsky (8):
> > > > >       dma-buf: Rename .move_notify() callback to a clearer identi=
fier
> > > > >       dma-buf: Rename dma_buf_move_notify() to dma_buf_invalidate=
_mappings()
> > > > >       dma-buf: Always build with DMABUF_MOVE_NOTIFY
> > > > >       vfio: Wait for dma-buf invalidation to complete
> > > > >       dma-buf: Make .invalidate_mapping() truly optional
> > > > >       dma-buf: Add dma_buf_attach_revocable()
> > > > >       vfio: Permit VFIO to work with pinned importers
> > > > >       iommufd: Add dma_buf_pin()
> > > > >=20
> > > > >  drivers/dma-buf/Kconfig                     | 12 -----
> > > > >  drivers/dma-buf/dma-buf.c                   | 69 +++++++++++++++=
+++++-----
> > > > >  drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c | 14 ++---
> > > > >  drivers/gpu/drm/amd/amdgpu/amdgpu_object.c  |  2 +-
> > > > >  drivers/gpu/drm/amd/amdkfd/Kconfig          |  2 +-
> > > > >  drivers/gpu/drm/virtio/virtgpu_prime.c      |  2 +-
> > > > >  drivers/gpu/drm/xe/tests/xe_dma_buf.c       |  7 ++-
> > > > >  drivers/gpu/drm/xe/xe_bo.c                  |  2 +-
> > > > >  drivers/gpu/drm/xe/xe_dma_buf.c             | 14 ++---
> > > > >  drivers/infiniband/core/umem_dmabuf.c       | 13 -----
> > > > >  drivers/infiniband/hw/mlx5/mr.c             |  2 +-
> > > > >  drivers/iommu/iommufd/pages.c               | 11 +++-
> > > > >  drivers/iommu/iommufd/selftest.c            |  2 +-
> > > > >  drivers/vfio/pci/vfio_pci_dmabuf.c          | 80 +++++++++++++++=
+++++++-------
> > > > >  include/linux/dma-buf.h                     | 17 +++---
> > > > >  15 files changed, 153 insertions(+), 96 deletions(-)
> > > >=20
> > > > Christian,
> > > >=20
> > > > Given the ongoing discussion around patch v5, I'm a bit unclear on =
the
> > > > current state. Is the series ready for merging, or do you need me to
> > > > rework anything further?
> > >=20
> > > Christian,
> > >=20
> > > Let's not miss the merge window for work that is already ready.
> >=20
> > The cutoff date for the merge window was on 25/1, so it was already
> > missed by the time you sent your series.
>=20
> The primary goal of this series is to update dma-buf. The changes in
> drivers/gpu/drm are limited to straightforward renames.

And yet, dma-buf is maintained through drm.

Also, it's a general rule Linus has, it's nothing specific to DRM.

Maxime

--7qwl2ctcsasohfq6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaYM1LgAKCRAnX84Zoj2+
dog2AYDSggxELrRiCi4rnOlE+XigMxQtESWX/Y7jVdTjE3PNFxYKhA+xaHfqEAjE
syQhwawBeQHgBqt3UJuo10tSa9JfMqGIWVTHVvS5mS9fdSi5s98NbjDa0NglHueQ
eqfO3tocdg==
=/V8y
-----END PGP SIGNATURE-----

--7qwl2ctcsasohfq6--

--===============2393732968861016266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2393732968861016266==--
