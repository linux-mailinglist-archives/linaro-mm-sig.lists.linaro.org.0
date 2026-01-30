Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP6tKtmyfGmbOQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:32:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AC4BB0CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:32:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A62F3F909
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:32:08 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id DAFAB3F7C4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:32:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZSRGu88o;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5BA6760129;
	Fri, 30 Jan 2026 13:32:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FD92C4CEF7;
	Fri, 30 Jan 2026 13:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769779921;
	bh=2FHGfR1+rV5y9fo03gsLXeuoUugXCjI+I0ti0U1qLic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZSRGu88oOI6vFqCqJnrQ+KdrSIipu/Ozty1sylFz+RbFPPyjnlAJ/HjGdup7aqYLv
	 UCNh0h7nNCDkto8xxur99HwOGax0Zo3pXngTXRMDyOBg7x+BergpU619Wgs8kSTacU
	 /dbzA22SXGkyn3txC5yj3zHLn5CTyp33w7SvUc7L0C2t4G58QWEQUgpMq60uSlqUZE
	 RaoP+yW1lk+F319fNb4aOuBrSb+SO0oIoM+aKSxw0wYPh7vy/IrTLNPDT2MuNNVmzl
	 3zerbgU/brTA56iz+tEHYLONlqT51pF1E++w2syhg6xVdMxkIUo2vfvC1qR509aY+U
	 Kndw9S+US0M+A==
Date: Fri, 30 Jan 2026 15:31:57 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260130133157.GP10992@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
 <d25bead8-8372-4791-a741-3371342f4698@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d25bead8-8372-4791-a741-3371342f4698@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: MWVSIZRDJY2RGTTFAEGVRMNIG7S3F5QW
X-Message-ID-Hash: MWVSIZRDJY2RGTTFAEGVRMNIG7S3F5QW
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MWVSIZRDJY2RGTTFAEGVRMNIG7S3F5QW/>
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
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 19AC4BB0CF
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 02:21:08PM +0100, Christian K=F6nig wrote:
> On 1/30/26 14:01, Leon Romanovsky wrote:
> > On Fri, Jan 30, 2026 at 09:30:59AM +0100, Christian K=F6nig wrote:
> >> On 1/24/26 20:14, Leon Romanovsky wrote:
> >>> From: Leon Romanovsky <leonro@nvidia.com>
> >>>
> >>> dma-buf invalidation is handled asynchronously by the hardware, so VF=
IO
> >>> must wait until all affected objects have been fully invalidated.
> >>>
> >>> In addition, the dma-buf exporter is expecting that all importers unm=
ap any
> >>> buffers they previously mapped.
> >>>
> >>> Fixes: 5d74781ebc86 ("vfio/pci: Add dma-buf export support for MMIO r=
egions")
> >>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> >>> ---
> >>>  drivers/vfio/pci/vfio_pci_dmabuf.c | 71 ++++++++++++++++++++++++++++=
++++++++--
> >>>  1 file changed, 68 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vf=
io_pci_dmabuf.c
> >>> index d8ceafabef48..485515629fe4 100644
> >>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> >>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> >>> @@ -17,6 +17,8 @@ struct vfio_pci_dma_buf {
> >>>  	struct dma_buf_phys_vec *phys_vec;
> >>>  	struct p2pdma_provider *provider;
> >>>  	u32 nr_ranges;
> >>> +	struct kref kref;
> >>> +	struct completion comp;
> >>>  	u8 revoked : 1;
> >>>  };
> >>> =20
> >>> @@ -44,27 +46,46 @@ static int vfio_pci_dma_buf_attach(struct dma_buf=
 *dmabuf,
> >>>  	return 0;
> >>>  }
> >>> =20
> >>> +static void vfio_pci_dma_buf_done(struct kref *kref)
> >>> +{
> >>> +	struct vfio_pci_dma_buf *priv =3D
> >>> +		container_of(kref, struct vfio_pci_dma_buf, kref);
> >>> +
> >>> +	complete(&priv->comp);
> >>> +}
> >>> +
> >>>  static struct sg_table *
> >>>  vfio_pci_dma_buf_map(struct dma_buf_attachment *attachment,
> >>>  		     enum dma_data_direction dir)
> >>>  {
> >>>  	struct vfio_pci_dma_buf *priv =3D attachment->dmabuf->priv;
> >>> +	struct sg_table *ret;
> >>> =20
> >>>  	dma_resv_assert_held(priv->dmabuf->resv);
> >>> =20
> >>>  	if (priv->revoked)
> >>>  		return ERR_PTR(-ENODEV);
> >>> =20
> >>> -	return dma_buf_phys_vec_to_sgt(attachment, priv->provider,
> >>> -				       priv->phys_vec, priv->nr_ranges,
> >>> -				       priv->size, dir);
> >>> +	ret =3D dma_buf_phys_vec_to_sgt(attachment, priv->provider,
> >>> +				      priv->phys_vec, priv->nr_ranges,
> >>> +				      priv->size, dir);
> >>> +	if (IS_ERR(ret))
> >>> +		return ret;
> >>> +
> >>> +	kref_get(&priv->kref);
> >>> +	return ret;
> >>>  }
> >>> =20
> >>>  static void vfio_pci_dma_buf_unmap(struct dma_buf_attachment *attach=
ment,
> >>>  				   struct sg_table *sgt,
> >>>  				   enum dma_data_direction dir)
> >>>  {
> >>> +	struct vfio_pci_dma_buf *priv =3D attachment->dmabuf->priv;
> >>> +
> >>> +	dma_resv_assert_held(priv->dmabuf->resv);
> >>> +
> >>>  	dma_buf_free_sgt(attachment, sgt, dir);
> >>> +	kref_put(&priv->kref, vfio_pci_dma_buf_done);
> >>>  }
> >>> =20
> >>>  static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
> >>> @@ -287,6 +308,9 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci=
_core_device *vdev, u32 flags,
> >>>  		goto err_dev_put;
> >>>  	}
> >>> =20
> >>> +	kref_init(&priv->kref);
> >>> +	init_completion(&priv->comp);
> >>> +
> >>>  	/* dma_buf_put() now frees priv */
> >>>  	INIT_LIST_HEAD(&priv->dmabufs_elm);
> >>>  	down_write(&vdev->memory_lock);
> >>> @@ -326,6 +350,8 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_d=
evice *vdev, bool revoked)
> >>>  	lockdep_assert_held_write(&vdev->memory_lock);
> >>> =20
> >>>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> >>> +		unsigned long wait;
> >>> +
> >>>  		if (!get_file_active(&priv->dmabuf->file))
> >>>  			continue;
> >>> =20
> >>> @@ -333,7 +359,37 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_=
device *vdev, bool revoked)
> >>>  			dma_resv_lock(priv->dmabuf->resv, NULL);
> >>>  			priv->revoked =3D revoked;
> >>>  			dma_buf_invalidate_mappings(priv->dmabuf);
> >>> +			dma_resv_wait_timeout(priv->dmabuf->resv,
> >>> +					      DMA_RESV_USAGE_BOOKKEEP, false,
> >>> +					      MAX_SCHEDULE_TIMEOUT);
> >>>  			dma_resv_unlock(priv->dmabuf->resv);
> >>> +			if (revoked) {
> >>> +				kref_put(&priv->kref, vfio_pci_dma_buf_done);
> >>> +				/* Let's wait till all DMA unmap are completed. */
> >>> +				wait =3D wait_for_completion_timeout(
> >>> +					&priv->comp, secs_to_jiffies(1));
> >>> +				/*
> >>> +				 * If you see this WARN_ON, it means that
> >>> +				 * importer didn't call unmap in response to
> >>> +				 * dma_buf_invalidate_mappings() which is not
> >>> +				 * allowed.
> >>> +				 */
> >>> +				WARN(!wait,
> >>> +				     "Timed out waiting for DMABUF unmap, importer has a broken =
invalidate_mapping()");
> >>
> >> You can do the revoke to do your resource management, for example re-u=
se the backing store for something else.
> >>
> >> But it is mandatory that you keep the mapping around indefinitely unti=
l the importer closes it.
> >>
> >> Before that you can't do things like runtime PM or remove or anything =
which would make the DMA addresses invalid.
> >>
> >> As far as I can see vfio_pci_dma_buf_move() is used exactly for that u=
se case so this here is an absolutely clear NAK from my side for this appro=
ach.
> >>
> >> You can either split up the functionality of vfio_pci_dma_buf_move() i=
nto vfio_pci_dma_buf_invalidate_mappings() and vfio_pci_dma_buf_flush() and=
 then call the later whenever necessary or you keep it in one function and =
block everybody until the importer has dropped all mappings.
> >=20
> > No problem, I can change it to be:
> >=20
> > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio=
_pci_dmabuf.c
> > index d087d018d547..53772a84c93b 100644
> > --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > @@ -357,23 +357,7 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_de=
vice *vdev, bool revoked)
> >                         dma_resv_unlock(priv->dmabuf->resv);
> >                         if (revoked) {
> >                                 kref_put(&priv->kref, vfio_pci_dma_buf_=
done);
> > -                               /*
> > -                                * Let's wait for 1 second till all DMA=
 unmap
> > -                                * are completed. It is supposed to cat=
ch dma-buf
> > -                                * importers which lied about their sup=
port
> > -                                * of dmabuf revoke. See dma_buf_invali=
date_mappings()
> > -                                * for the expected behaviour.
> > -                                */
> > -                               wait =3D wait_for_completion_timeout(
> > -                                       &priv->comp, secs_to_jiffies(1)=
);
> > -                               /*
> > -                                * If you see this WARN_ON, it means th=
at
> > -                                * importer didn't call unmap in respon=
se to
> > -                                * dma_buf_invalidate_mappings() which =
is not
> > -                                * allowed.
> > -                                */
> > -                               WARN(!wait,
> > -                                    "Timed out waiting for DMABUF unma=
p, importer has a broken invalidate_mapping()");
> > +                               wait_for_completion(&priv->comp);
> >                         } else {
> >                                 /*
> >                                  * Kref is initialize again, because wh=
en revoke
> >=20
> > Do you want me to send v6?
>=20
> That would work for me.
>=20
> Question is if you really want to do it this way? See usually exporters t=
ry to avoid blocking such functions.
>=20
> What exporters usually do instead is to grab references, e.g. call pm_run=
time_get_sync() when either a DMA-buf, a DMA-buf attachment or in your case=
 here a mapping of this attachment is made.

I view this as an enhancement that can be addressed later down the road.

>=20
> But all of this is just a suggestion, if you are fine with blocking then =
feel free to add my rb.

It is fine for initial version. We need to start somewhere.

Thanks

>=20
> Regards,
> Christian.
>=20
> >=20
> > Thanks
> >=20
> >>
> >>> +			} else {
> >>> +				/*
> >>> +				 * Kref is initialize again, because when revoke
> >>> +				 * was performed the reference counter was decreased
> >>> +				 * to zero to trigger completion.
> >>> +				 */
> >>> +				kref_init(&priv->kref);
> >>> +				/*
> >>> +				 * There is no need to wait as no mapping was
> >>> +				 * performed when the previous status was
> >>> +				 * priv->revoked =3D=3D true.
> >>> +				 */
> >>> +				reinit_completion(&priv->comp);
> >>> +			}
> >>>  		}
> >>>  		fput(priv->dmabuf->file);
> >>
> >> This is also extremely questionable. Why doesn't the dmabuf have a ref=
erence while on the linked list?
> >>
> >> Regards,
> >> Christian.
> >>
> >>>  	}
> >>> @@ -346,6 +402,8 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_cor=
e_device *vdev)
> >>> =20
> >>>  	down_write(&vdev->memory_lock);
> >>>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> >>> +		unsigned long wait;
> >>> +
> >>>  		if (!get_file_active(&priv->dmabuf->file))
> >>>  			continue;
> >>> =20
> >>> @@ -354,7 +412,14 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_co=
re_device *vdev)
> >>>  		priv->vdev =3D NULL;
> >>>  		priv->revoked =3D true;
> >>>  		dma_buf_invalidate_mappings(priv->dmabuf);
> >>> +		dma_resv_wait_timeout(priv->dmabuf->resv,
> >>> +				      DMA_RESV_USAGE_BOOKKEEP, false,
> >>> +				      MAX_SCHEDULE_TIMEOUT);
> >>>  		dma_resv_unlock(priv->dmabuf->resv);
> >>> +		kref_put(&priv->kref, vfio_pci_dma_buf_done);
> >>> +		wait =3D wait_for_completion_timeout(&priv->comp,
> >>> +						   secs_to_jiffies(1));
> >>> +		WARN_ON(!wait);
> >>>  		vfio_device_put_registration(&vdev->vdev);
> >>>  		fput(priv->dmabuf->file);
> >>>  	}
> >>>
> >>
> >>
>=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
