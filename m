Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D83D3A9D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 14:02:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35CA13F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:02:54 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id A6CDC3F6B6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 13:02:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=scELuI2G;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0C5FC60127;
	Mon, 19 Jan 2026 13:02:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4F21C116C6;
	Mon, 19 Jan 2026 13:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768827768;
	bh=cCxg8035viPJsz2XBq1ifbK2lrZlRG1OCR5jkwA4Q7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=scELuI2GW3wYYW2ZENuAuFSaCJYKTwxSRnj2LRAqiwezAEBgiUivhNWu7wR7lsvrp
	 JMiPt96eHalhzJp6zdj/VOztYexbL9CNdValyZad3QIoRwUqy2SNCBXDS5ZUmr2r5B
	 3Q2LYZFjRo+TpYc7rFstqRHfbtMAFjLvRsXdqreX7yo2gyOr+diw1+LoloRIJTcEFf
	 H3YM1NaUjV02Jdtuy+J3LR9/YjENpaZ6LVp9bzMZphF9Lehv4mUuhwTkRGGGpb2kcJ
	 Ej14CRJRVv6csc6KuHzgzAe+xhdGGLSRvHHCsaiwAmERVJ+yIM5atMLB3FZRNKxX/w
	 fRLM6YcjAxsPA==
Date: Mon, 19 Jan 2026 15:02:44 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260119130244.GN13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-4-a03bb27c0875@nvidia.com>
 <bd37adf0-afd0-49c4-b608-7f9aa5994f7b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd37adf0-afd0-49c4-b608-7f9aa5994f7b@amd.com>
X-Rspamd-Queue-Id: A6CDC3F6B6
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YJPTS4TC37QUJRLSDRKJ6HHSJCQRPENK
X-Message-ID-Hash: YJPTS4TC37QUJRLSDRKJ6HHSJCQRPENK
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rd
 ma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio: Add pinned interface to perform revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJPTS4TC37QUJRLSDRKJ6HHSJCQRPENK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 01:12:45PM +0100, Christian K=F6nig wrote:
> On 1/18/26 13:08, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >=20
> > DMABUF ->pin() interface is called when the DMABUF importer perform
> > its DMA mapping, so let's use this opportunity to check if DMABUF
> > exporter revoked its buffer or not.
> >=20
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_dmabuf.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >=20
> > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio=
_pci_dmabuf.c
> > index d4d0f7d08c53..af9c315ddf71 100644
> > --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > @@ -20,6 +20,20 @@ struct vfio_pci_dma_buf {
> >  	u8 revoked : 1;
> >  };
> > =20
> > +static int vfio_pci_dma_buf_pin(struct dma_buf_attachment *attachment)
> > +{
> > +	struct vfio_pci_dma_buf *priv =3D attachment->dmabuf->priv;
> > +
> > +	dma_resv_assert_held(priv->dmabuf->resv);
> > +
> > +	return dma_buf_attachment_is_revoke(attachment) ? 0 : -EOPNOTSUPP;
>=20
> It's probably better to do that check in vfio_pci_dma_buf_attach.

I assume you are proposing to add this check in both
vfio_pci_dma_buf_attach() and vfio_pci_dma_buf_pin(). Otherwise,
importers that lack .invalidate_mapping() will invoke dma_buf_pin()
and will not fail.

>=20
> And BTW the function vfio_pci_dma_buf_move() seems to be broken:
>=20
> void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoke=
d)
> {
>         struct vfio_pci_dma_buf *priv;
>         struct vfio_pci_dma_buf *tmp;
>=20
>         lockdep_assert_held_write(&vdev->memory_lock);
>=20
>         list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
>                 if (!get_file_active(&priv->dmabuf->file))
>                         continue;
>=20
>                 if (priv->revoked !=3D revoked) {
>                         dma_resv_lock(priv->dmabuf->resv, NULL);
>                         priv->revoked =3D revoked;
>                         dma_buf_move_notify(priv->dmabuf);
>=20
> A dma_buf_move_notify() just triggers asynchronous invalidation of the ma=
pping!
>=20
> You need to use dma_resv_wait() to wait for that to finish.

We (VFIO and IOMMUFD) followed the same pattern used in =20
amdgpu_bo_move_notify(), which also does not wait.

I'll add wait here.

Thanks

>=20
>                         dma_resv_unlock(priv->dmabuf->resv);
>                 }
>                 fput(priv->dmabuf->file);
>         }
> }
>=20
> Regards,
> Christian.
>=20
>=20
> > +}
> > +
> > +static void vfio_pci_dma_buf_unpin(struct dma_buf_attachment *attachme=
nt)
> > +{
> > +	/* Do nothing */
> > +}
> > +
> >  static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
> >  				   struct dma_buf_attachment *attachment)
> >  {
> > @@ -76,6 +90,8 @@ static void vfio_pci_dma_buf_release(struct dma_buf *=
dmabuf)
> >  }
> > =20
> >  static const struct dma_buf_ops vfio_pci_dmabuf_ops =3D {
> > +	.pin =3D vfio_pci_dma_buf_pin,
> > +	.unpin =3D vfio_pci_dma_buf_unpin,
> >  	.attach =3D vfio_pci_dma_buf_attach,
> >  	.map_dma_buf =3D vfio_pci_dma_buf_map,
> >  	.unmap_dma_buf =3D vfio_pci_dma_buf_unmap,
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
