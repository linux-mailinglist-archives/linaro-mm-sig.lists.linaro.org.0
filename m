Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id b+j6J8irfGlsOQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:02:00 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF40BAD5B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:01:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63A5B40171
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:01:53 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 48D363F7C4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:01:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NifBrC6N;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 79A6C44113;
	Fri, 30 Jan 2026 13:01:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34801C4CEF7;
	Fri, 30 Jan 2026 13:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769778095;
	bh=G9gqcm5xvvohqtK7Hn6zZekh4h/DHomGvNcfw1+6iRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NifBrC6N9IdxcdIqlbLTrHVC34TgjUy8tFu+8gsA8K04kfGHFlRId0Fwx0sVA7YXj
	 m1SG4yWIlHuUPz78RzlapuF7YENxIdsTS3/tehFYWKg3xM1KqHAigpk7CtIM5S9X0B
	 zkTYYLzL61zodPhrmUG5sgxFDL4WwXQnv0lCastQLGnEnRfDGqqJLDAuyfWqErBs0Z
	 E3aOzmmKa2KuIDIBmnSNYqi0R16rBLgyr1308Yo2VEFcG0oO6iN/M6C+McO2ttZrN1
	 FUIUGT8Bg4X681eJYxB3qV7hPJhy3EaSAkWEQH/NPFUNwFb5RWkC3CORC/lqjuPOZI
	 7wA7gzOJFC1mg==
Date: Fri, 30 Jan 2026 15:01:31 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260130130131.GO10992@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: BZ26N2LC7VGRVHTWHUTJIMKHU7LZYSKL
X-Message-ID-Hash: BZ26N2LC7VGRVHTWHUTJIMKHU7LZYSKL
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BZ26N2LC7VGRVHTWHUTJIMKHU7LZYSKL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
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
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig-leave.lists.linaro.org:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6AF40BAD5B
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 09:30:59AM +0100, Christian K=F6nig wrote:
> On 1/24/26 20:14, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >=20
> > dma-buf invalidation is handled asynchronously by the hardware, so VFIO
> > must wait until all affected objects have been fully invalidated.
> >=20
> > In addition, the dma-buf exporter is expecting that all importers unmap=
 any
> > buffers they previously mapped.
> >=20
> > Fixes: 5d74781ebc86 ("vfio/pci: Add dma-buf export support for MMIO reg=
ions")
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_dmabuf.c | 71 ++++++++++++++++++++++++++++++=
++++++--
> >  1 file changed, 68 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio=
_pci_dmabuf.c
> > index d8ceafabef48..485515629fe4 100644
> > --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > @@ -17,6 +17,8 @@ struct vfio_pci_dma_buf {
> >  	struct dma_buf_phys_vec *phys_vec;
> >  	struct p2pdma_provider *provider;
> >  	u32 nr_ranges;
> > +	struct kref kref;
> > +	struct completion comp;
> >  	u8 revoked : 1;
> >  };
> > =20
> > @@ -44,27 +46,46 @@ static int vfio_pci_dma_buf_attach(struct dma_buf *=
dmabuf,
> >  	return 0;
> >  }
> > =20
> > +static void vfio_pci_dma_buf_done(struct kref *kref)
> > +{
> > +	struct vfio_pci_dma_buf *priv =3D
> > +		container_of(kref, struct vfio_pci_dma_buf, kref);
> > +
> > +	complete(&priv->comp);
> > +}
> > +
> >  static struct sg_table *
> >  vfio_pci_dma_buf_map(struct dma_buf_attachment *attachment,
> >  		     enum dma_data_direction dir)
> >  {
> >  	struct vfio_pci_dma_buf *priv =3D attachment->dmabuf->priv;
> > +	struct sg_table *ret;
> > =20
> >  	dma_resv_assert_held(priv->dmabuf->resv);
> > =20
> >  	if (priv->revoked)
> >  		return ERR_PTR(-ENODEV);
> > =20
> > -	return dma_buf_phys_vec_to_sgt(attachment, priv->provider,
> > -				       priv->phys_vec, priv->nr_ranges,
> > -				       priv->size, dir);
> > +	ret =3D dma_buf_phys_vec_to_sgt(attachment, priv->provider,
> > +				      priv->phys_vec, priv->nr_ranges,
> > +				      priv->size, dir);
> > +	if (IS_ERR(ret))
> > +		return ret;
> > +
> > +	kref_get(&priv->kref);
> > +	return ret;
> >  }
> > =20
> >  static void vfio_pci_dma_buf_unmap(struct dma_buf_attachment *attachme=
nt,
> >  				   struct sg_table *sgt,
> >  				   enum dma_data_direction dir)
> >  {
> > +	struct vfio_pci_dma_buf *priv =3D attachment->dmabuf->priv;
> > +
> > +	dma_resv_assert_held(priv->dmabuf->resv);
> > +
> >  	dma_buf_free_sgt(attachment, sgt, dir);
> > +	kref_put(&priv->kref, vfio_pci_dma_buf_done);
> >  }
> > =20
> >  static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
> > @@ -287,6 +308,9 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_c=
ore_device *vdev, u32 flags,
> >  		goto err_dev_put;
> >  	}
> > =20
> > +	kref_init(&priv->kref);
> > +	init_completion(&priv->comp);
> > +
> >  	/* dma_buf_put() now frees priv */
> >  	INIT_LIST_HEAD(&priv->dmabufs_elm);
> >  	down_write(&vdev->memory_lock);
> > @@ -326,6 +350,8 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_dev=
ice *vdev, bool revoked)
> >  	lockdep_assert_held_write(&vdev->memory_lock);
> > =20
> >  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> > +		unsigned long wait;
> > +
> >  		if (!get_file_active(&priv->dmabuf->file))
> >  			continue;
> > =20
> > @@ -333,7 +359,37 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_de=
vice *vdev, bool revoked)
> >  			dma_resv_lock(priv->dmabuf->resv, NULL);
> >  			priv->revoked =3D revoked;
> >  			dma_buf_invalidate_mappings(priv->dmabuf);
> > +			dma_resv_wait_timeout(priv->dmabuf->resv,
> > +					      DMA_RESV_USAGE_BOOKKEEP, false,
> > +					      MAX_SCHEDULE_TIMEOUT);
> >  			dma_resv_unlock(priv->dmabuf->resv);
> > +			if (revoked) {
> > +				kref_put(&priv->kref, vfio_pci_dma_buf_done);
> > +				/* Let's wait till all DMA unmap are completed. */
> > +				wait =3D wait_for_completion_timeout(
> > +					&priv->comp, secs_to_jiffies(1));
> > +				/*
> > +				 * If you see this WARN_ON, it means that
> > +				 * importer didn't call unmap in response to
> > +				 * dma_buf_invalidate_mappings() which is not
> > +				 * allowed.
> > +				 */
> > +				WARN(!wait,
> > +				     "Timed out waiting for DMABUF unmap, importer has a broken in=
validate_mapping()");
>=20
> You can do the revoke to do your resource management, for example re-use =
the backing store for something else.
>=20
> But it is mandatory that you keep the mapping around indefinitely until t=
he importer closes it.
>=20
> Before that you can't do things like runtime PM or remove or anything whi=
ch would make the DMA addresses invalid.
>=20
> As far as I can see vfio_pci_dma_buf_move() is used exactly for that use =
case so this here is an absolutely clear NAK from my side for this approach.
>=20
> You can either split up the functionality of vfio_pci_dma_buf_move() into=
 vfio_pci_dma_buf_invalidate_mappings() and vfio_pci_dma_buf_flush() and th=
en call the later whenever necessary or you keep it in one function and blo=
ck everybody until the importer has dropped all mappings.

No problem, I can change it to be:

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci=
_dmabuf.c
index d087d018d547..53772a84c93b 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -357,23 +357,7 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device=
 *vdev, bool revoked)
                        dma_resv_unlock(priv->dmabuf->resv);
                        if (revoked) {
                                kref_put(&priv->kref, vfio_pci_dma_buf_done=
);
-                               /*
-                                * Let's wait for 1 second till all DMA unm=
ap
-                                * are completed. It is supposed to catch d=
ma-buf
-                                * importers which lied about their support
-                                * of dmabuf revoke. See dma_buf_invalidate=
_mappings()
-                                * for the expected behaviour.
-                                */
-                               wait =3D wait_for_completion_timeout(
-                                       &priv->comp, secs_to_jiffies(1));
-                               /*
-                                * If you see this WARN_ON, it means that
-                                * importer didn't call unmap in response to
-                                * dma_buf_invalidate_mappings() which is n=
ot
-                                * allowed.
-                                */
-                               WARN(!wait,
-                                    "Timed out waiting for DMABUF unmap, i=
mporter has a broken invalidate_mapping()");
+                               wait_for_completion(&priv->comp);
                        } else {
                                /*
                                 * Kref is initialize again, because when r=
evoke

Do you want me to send v6?

Thanks

>=20
> > +			} else {
> > +				/*
> > +				 * Kref is initialize again, because when revoke
> > +				 * was performed the reference counter was decreased
> > +				 * to zero to trigger completion.
> > +				 */
> > +				kref_init(&priv->kref);
> > +				/*
> > +				 * There is no need to wait as no mapping was
> > +				 * performed when the previous status was
> > +				 * priv->revoked =3D=3D true.
> > +				 */
> > +				reinit_completion(&priv->comp);
> > +			}
> >  		}
> >  		fput(priv->dmabuf->file);
>=20
> This is also extremely questionable. Why doesn't the dmabuf have a refere=
nce while on the linked list?
>=20
> Regards,
> Christian.
>=20
> >  	}
> > @@ -346,6 +402,8 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_=
device *vdev)
> > =20
> >  	down_write(&vdev->memory_lock);
> >  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> > +		unsigned long wait;
> > +
> >  		if (!get_file_active(&priv->dmabuf->file))
> >  			continue;
> > =20
> > @@ -354,7 +412,14 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core=
_device *vdev)
> >  		priv->vdev =3D NULL;
> >  		priv->revoked =3D true;
> >  		dma_buf_invalidate_mappings(priv->dmabuf);
> > +		dma_resv_wait_timeout(priv->dmabuf->resv,
> > +				      DMA_RESV_USAGE_BOOKKEEP, false,
> > +				      MAX_SCHEDULE_TIMEOUT);
> >  		dma_resv_unlock(priv->dmabuf->resv);
> > +		kref_put(&priv->kref, vfio_pci_dma_buf_done);
> > +		wait =3D wait_for_completion_timeout(&priv->comp,
> > +						   secs_to_jiffies(1));
> > +		WARN_ON(!wait);
> >  		vfio_device_put_registration(&vdev->vdev);
> >  		fput(priv->dmabuf->file);
> >  	}
> >=20
>=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
