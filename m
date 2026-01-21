Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBueC1WRcGljYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:41:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB3953BB8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:41:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B759140175
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:41:55 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 6917F3F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 08:41:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="N/jftV8W";
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 00E0B60051;
	Wed, 21 Jan 2026 08:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7174C116D0;
	Wed, 21 Jan 2026 08:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768984909;
	bh=vX9ez30UqQH8Ea7faskYAe/RcTUI4WeiZy+2L8FsrmA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/jftV8WqKnsm2maFReUTyS1FKZrVxHQAluTkW3EpHJ4ervet/wKOmSASptNsqcn8
	 YCUzQehY130BGt6cUU9BFs3H9AF/0B02h/cwqe1DJtbIVQn1O0baHcQoVTQ4ECkrKj
	 2eY60EIQdA2ElUlO9F+1P5ikr5b7v9ZGk6mmC2XusS1ZE2PrwNWovFFzfgQo56DnSf
	 RBQuuCWVT7WPdSGkQQLmpBx1Aohcb+mdN3pnRJHuhScYqnsOPK8OkZ0n/Q7YnxOFCo
	 mWv0ZGyr+NyMttlGy80VgLqW+5iigg0WaDm1Zt85kap7Vth+hi3cX+K4uvuAZIXBk1
	 /elzGAkYMChww==
Date: Wed, 21 Jan 2026 10:41:43 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260121084143.GW13201@unreal>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-1-b7e0b07b8214@nvidia.com>
 <59762c7e-f00b-49c6-bfab-ff647d3fe05d@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59762c7e-f00b-49c6-bfab-ff647d3fe05d@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: FGA55NVI6QTXXLN2YIHLVE7WPJ3FOJWJ
X-Message-ID-Hash: FGA55NVI6QTXXLN2YIHLVE7WPJ3FOJWJ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/7] dma-buf: Rename .move_notify() callback to a clearer identifier
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGA55NVI6QTXXLN2YIHLVE7WPJ3FOJWJ/>
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
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: ACB3953BB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 09:33:27AM +0100, Christian K=F6nig wrote:
> On 1/20/26 15:07, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >=20
> > Rename the .move_notify() callback to .invalidate_mappings() to make its
> > purpose explicit and highlight that it is responsible for invalidating
> > existing mappings.
> >=20
> > Suggested-by: Christian K=F6nig <christian.koenig@amd.com>
> > Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
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

<...>

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
>=20
> Thinking more about it we can keep the function names as they are in the =
importers, but renaming renaming this framework function as well would be r=
eally nice to have.

Let me prepare an additional patch on top of this series. I'd prefer to
avoid unnecessary resubmissions caused solely by renaming.

Thanks

>=20
> Regards,
> Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
