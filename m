Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A523AD3A706
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 12:38:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86AFC400F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:38:21 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 05C003F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 11:38:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=o95lIUnI;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6BFF6401C4;
	Mon, 19 Jan 2026 11:38:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAF89C116C6;
	Mon, 19 Jan 2026 11:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768822694;
	bh=CrClsIc2cQ+j4T9ctzlJIQ48V1LHgsZOne+eJYYteFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o95lIUnIJLtm5H1ecUwFhfTaqZ8nSqbrYNgIxNbIA+6WYIcEq1Sqa87rxGSeMo0VL
	 vHw8DC9FbCqX0Nz0mhvt/PSlcRAy6Mq8sHRPplxRDJV/qfoAKynbCMEPYtXkEdQcFv
	 hrVCOI6apHff0eWTN4cuFHgEPuj9zajAjVYCZAmd1dER2smDFHw4xdnCUlx0th2L8Y
	 5QybSPqj9mVswDPkVUtI1X5Mr1T6sCm+yMRqR62crXiBa3ESXKu9C4kv1sEQ46AdVu
	 uphdTz7g5eh0YGgDtE2pWT++/+mPznpxIOF26+4LbowbUaBJFL8U2wd9WzgaqQWyVu
	 ZlZrKl0qiby9g==
Date: Mon, 19 Jan 2026 13:38:09 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260119113809.GK13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-1-a03bb27c0875@nvidia.com>
 <345b8dcb-5015-4801-b263-0dca4d1b3fca@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <345b8dcb-5015-4801-b263-0dca4d1b3fca@amd.com>
X-Rspamd-Queue-Id: 05C003F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5UY3NKF34GATGEX6WUORYMVT3ZHT724N
X-Message-ID-Hash: 5UY3NKF34GATGEX6WUORYMVT3ZHT724N
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rd
 ma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] dma-buf: Rename .move_notify() callback to a clearer identifier
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5UY3NKF34GATGEX6WUORYMVT3ZHT724N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 11:22:27AM +0100, Christian K=F6nig wrote:
> On 1/18/26 13:08, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >=20
> > Rename the .move_notify() callback to .invalidate_mappings() to make its
> > purpose explicit and highlight that it is responsible for invalidating
> > existing mappings.
> >=20
> > Suggested-by: Christian K=F6nig <christian.koenig@amd.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>=20
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Thanks,

BTW, I didn't update the various xxx_move_notify() functions to use
xxx_invalidate_mappings() names. Should those be converted as well?

>=20
> > ---
> >  drivers/dma-buf/dma-buf.c                   | 6 +++---
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c | 4 ++--
> >  drivers/gpu/drm/virtio/virtgpu_prime.c      | 2 +-
> >  drivers/gpu/drm/xe/tests/xe_dma_buf.c       | 6 +++---
> >  drivers/gpu/drm/xe/xe_dma_buf.c             | 2 +-
> >  drivers/infiniband/core/umem_dmabuf.c       | 4 ++--
> >  drivers/infiniband/hw/mlx5/mr.c             | 2 +-
> >  drivers/iommu/iommufd/pages.c               | 2 +-
> >  include/linux/dma-buf.h                     | 6 +++---
> >  9 files changed, 17 insertions(+), 17 deletions(-)
> >=20
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index edaa9e4ee4ae..59cc647bf40e 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -948,7 +948,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, stru=
ct device *dev,
> >  	if (WARN_ON(!dmabuf || !dev))
> >  		return ERR_PTR(-EINVAL);
> > =20
> > -	if (WARN_ON(importer_ops && !importer_ops->move_notify))
> > +	if (WARN_ON(importer_ops && !importer_ops->invalidate_mappings))
> >  		return ERR_PTR(-EINVAL);
> > =20
> >  	attach =3D kzalloc(sizeof(*attach), GFP_KERNEL);
> > @@ -1055,7 +1055,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_pin, "DMA_BUF");
> >   *
> >   * This unpins a buffer pinned by dma_buf_pin() and allows the exporte=
r to move
> >   * any mapping of @attach again and inform the importer through
> > - * &dma_buf_attach_ops.move_notify.
> > + * &dma_buf_attach_ops.invalidate_mappings.
> >   */
> >  void dma_buf_unpin(struct dma_buf_attachment *attach)
> >  {
> > @@ -1262,7 +1262,7 @@ void dma_buf_move_notify(struct dma_buf *dmabuf)
> > =20
> >  	list_for_each_entry(attach, &dmabuf->attachments, node)
> >  		if (attach->importer_ops)
> > -			attach->importer_ops->move_notify(attach);
> > +			attach->importer_ops->invalidate_mappings(attach);
> >  }
> >  EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, "DMA_BUF");
> > =20
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c b/drivers/gpu/=
drm/amd/amdgpu/amdgpu_dma_buf.c
> > index e22cfa7c6d32..863454148b28 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
> > @@ -450,7 +450,7 @@ amdgpu_dma_buf_create_obj(struct drm_device *dev, s=
truct dma_buf *dma_buf)
> >  }
> > =20
> >  /**
> > - * amdgpu_dma_buf_move_notify - &attach.move_notify implementation
> > + * amdgpu_dma_buf_move_notify - &attach.invalidate_mappings implementa=
tion
> >   *
> >   * @attach: the DMA-buf attachment
> >   *
> > @@ -521,7 +521,7 @@ amdgpu_dma_buf_move_notify(struct dma_buf_attachmen=
t *attach)
> > =20
> >  static const struct dma_buf_attach_ops amdgpu_dma_buf_attach_ops =3D {
> >  	.allow_peer2peer =3D true,
> > -	.move_notify =3D amdgpu_dma_buf_move_notify
> > +	.invalidate_mappings =3D amdgpu_dma_buf_move_notify
> >  };
> > =20
> >  /**
> > diff --git a/drivers/gpu/drm/virtio/virtgpu_prime.c b/drivers/gpu/drm/v=
irtio/virtgpu_prime.c
> > index ce49282198cb..19c78dd2ca77 100644
> > --- a/drivers/gpu/drm/virtio/virtgpu_prime.c
> > +++ b/drivers/gpu/drm/virtio/virtgpu_prime.c
> > @@ -288,7 +288,7 @@ static void virtgpu_dma_buf_move_notify(struct dma_=
buf_attachment *attach)
> > =20
> >  static const struct dma_buf_attach_ops virtgpu_dma_buf_attach_ops =3D {
> >  	.allow_peer2peer =3D true,
> > -	.move_notify =3D virtgpu_dma_buf_move_notify
> > +	.invalidate_mappings =3D virtgpu_dma_buf_move_notify
> >  };
> > =20
> >  struct drm_gem_object *virtgpu_gem_prime_import(struct drm_device *dev,
> > diff --git a/drivers/gpu/drm/xe/tests/xe_dma_buf.c b/drivers/gpu/drm/xe=
/tests/xe_dma_buf.c
> > index 5df98de5ba3c..1f2cca5c2f81 100644
> > --- a/drivers/gpu/drm/xe/tests/xe_dma_buf.c
> > +++ b/drivers/gpu/drm/xe/tests/xe_dma_buf.c
> > @@ -23,7 +23,7 @@ static bool p2p_enabled(struct dma_buf_test_params *p=
arams)
> >  static bool is_dynamic(struct dma_buf_test_params *params)
> >  {
> >  	return IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY) && params->attach_ops &&
> > -		params->attach_ops->move_notify;
> > +		params->attach_ops->invalidate_mappings;
> >  }
> > =20
> >  static void check_residency(struct kunit *test, struct xe_bo *exported,
> > @@ -60,7 +60,7 @@ static void check_residency(struct kunit *test, struc=
t xe_bo *exported,
> > =20
> >  	/*
> >  	 * Evict exporter. Evicting the exported bo will
> > -	 * evict also the imported bo through the move_notify() functionality=
 if
> > +	 * evict also the imported bo through the invalidate_mappings() funct=
ionality if
> >  	 * importer is on a different device. If they're on the same device,
> >  	 * the exporter and the importer should be the same bo.
> >  	 */
> > @@ -198,7 +198,7 @@ static void xe_test_dmabuf_import_same_driver(struc=
t xe_device *xe)
> > =20
> >  static const struct dma_buf_attach_ops nop2p_attach_ops =3D {
> >  	.allow_peer2peer =3D false,
> > -	.move_notify =3D xe_dma_buf_move_notify
> > +	.invalidate_mappings =3D xe_dma_buf_move_notify
> >  };
> > =20
> >  /*
> > diff --git a/drivers/gpu/drm/xe/xe_dma_buf.c b/drivers/gpu/drm/xe/xe_dm=
a_buf.c
> > index 7c74a31d4486..1b9cd043e517 100644
> > --- a/drivers/gpu/drm/xe/xe_dma_buf.c
> > +++ b/drivers/gpu/drm/xe/xe_dma_buf.c
> > @@ -287,7 +287,7 @@ static void xe_dma_buf_move_notify(struct dma_buf_a=
ttachment *attach)
> > =20
> >  static const struct dma_buf_attach_ops xe_dma_buf_attach_ops =3D {
> >  	.allow_peer2peer =3D true,
> > -	.move_notify =3D xe_dma_buf_move_notify
> > +	.invalidate_mappings =3D xe_dma_buf_move_notify
> >  };
> > =20
> >  #if IS_ENABLED(CONFIG_DRM_XE_KUNIT_TEST)
> > diff --git a/drivers/infiniband/core/umem_dmabuf.c b/drivers/infiniband=
/core/umem_dmabuf.c
> > index 0ec2e4120cc9..d77a739cfe7a 100644
> > --- a/drivers/infiniband/core/umem_dmabuf.c
> > +++ b/drivers/infiniband/core/umem_dmabuf.c
> > @@ -129,7 +129,7 @@ ib_umem_dmabuf_get_with_dma_device(struct ib_device=
 *device,
> >  	if (check_add_overflow(offset, (unsigned long)size, &end))
> >  		return ret;
> > =20
> > -	if (unlikely(!ops || !ops->move_notify))
> > +	if (unlikely(!ops || !ops->invalidate_mappings))
> >  		return ret;
> > =20
> >  	dmabuf =3D dma_buf_get(fd);
> > @@ -195,7 +195,7 @@ ib_umem_dmabuf_unsupported_move_notify(struct dma_b=
uf_attachment *attach)
> > =20
> >  static struct dma_buf_attach_ops ib_umem_dmabuf_attach_pinned_ops =3D {
> >  	.allow_peer2peer =3D true,
> > -	.move_notify =3D ib_umem_dmabuf_unsupported_move_notify,
> > +	.invalidate_mappings =3D ib_umem_dmabuf_unsupported_move_notify,
> >  };
> > =20
> >  struct ib_umem_dmabuf *
> > diff --git a/drivers/infiniband/hw/mlx5/mr.c b/drivers/infiniband/hw/ml=
x5/mr.c
> > index 325fa04cbe8a..97099d3b1688 100644
> > --- a/drivers/infiniband/hw/mlx5/mr.c
> > +++ b/drivers/infiniband/hw/mlx5/mr.c
> > @@ -1620,7 +1620,7 @@ static void mlx5_ib_dmabuf_invalidate_cb(struct d=
ma_buf_attachment *attach)
> > =20
> >  static struct dma_buf_attach_ops mlx5_ib_dmabuf_attach_ops =3D {
> >  	.allow_peer2peer =3D 1,
> > -	.move_notify =3D mlx5_ib_dmabuf_invalidate_cb,
> > +	.invalidate_mappings =3D mlx5_ib_dmabuf_invalidate_cb,
> >  };
> > =20
> >  static struct ib_mr *
> > diff --git a/drivers/iommu/iommufd/pages.c b/drivers/iommu/iommufd/page=
s.c
> > index dbe51ecb9a20..76f900fa1687 100644
> > --- a/drivers/iommu/iommufd/pages.c
> > +++ b/drivers/iommu/iommufd/pages.c
> > @@ -1451,7 +1451,7 @@ static void iopt_revoke_notify(struct dma_buf_att=
achment *attach)
> > =20
> >  static struct dma_buf_attach_ops iopt_dmabuf_attach_revoke_ops =3D {
> >  	.allow_peer2peer =3D true,
> > -	.move_notify =3D iopt_revoke_notify,
> > +	.invalidate_mappings =3D iopt_revoke_notify,
> >  };
> > =20
> >  /*
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index 0bc492090237..1b397635c793 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -407,7 +407,7 @@ struct dma_buf {
> >  	 *   through the device.
> >  	 *
> >  	 * - Dynamic importers should set fences for any access that they can=
't
> > -	 *   disable immediately from their &dma_buf_attach_ops.move_notify
> > +	 *   disable immediately from their &dma_buf_attach_ops.invalidate_ma=
ppings
> >  	 *   callback.
> >  	 *
> >  	 * IMPORTANT:
> > @@ -458,7 +458,7 @@ struct dma_buf_attach_ops {
> >  	bool allow_peer2peer;
> > =20
> >  	/**
> > -	 * @move_notify: [optional] notification that the DMA-buf is moving
> > +	 * @invalidate_mappings: [optional] notification that the DMA-buf is =
moving
> >  	 *
> >  	 * If this callback is provided the framework can avoid pinning the
> >  	 * backing store while mappings exists.
> > @@ -475,7 +475,7 @@ struct dma_buf_attach_ops {
> >  	 * New mappings can be created after this callback returns, and will
> >  	 * point to the new location of the DMA-buf.
> >  	 */
> > -	void (*move_notify)(struct dma_buf_attachment *attach);
> > +	void (*invalidate_mappings)(struct dma_buf_attachment *attach);
> >  };
> > =20
> >  /**
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
