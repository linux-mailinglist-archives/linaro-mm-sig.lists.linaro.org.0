Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC4C911FE1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 11:01:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6ACF447BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 09:00:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 9E75E40D67
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 09:00:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WiR6TTtV;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3F088622BD;
	Fri, 21 Jun 2024 09:00:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 969BAC2BBFC;
	Fri, 21 Jun 2024 09:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718960455;
	bh=9if5fECP7iXZCzmm9T9MC/4MQfBUdrm184DZ11Gr9XM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WiR6TTtVsR6xlP1vNXR8iZ+WUzIkrzjWd8kYt6Rf99D/J1LEJpD/XU/o/7ebCoFAz
	 dmR1oCAJefVCTY0coDd5zB0r/sGWmi5dwjQFBw3X5Dp0eYPUKrrHj/l4KdESmXnQix
	 cYiFnUpuAThPYPXGXRvj7ZK1SjVxX9GRLVUk+TCW4Ky958XK4GYGV8xlrQUtVofjfx
	 oeygrZZiyTJpXgSYxlUWWGgE4oJyhpsyi1R5a/vTus4DyTvkDzzCqNLEdrIVC5QYFI
	 yMPQ6XgbJ3SS+8eF286QAxuVW8xHZPEJ8PjMWabSWMZHAnKIhQjN+y7fohdqs+2kH4
	 v8uwGnUvZUd1g==
Date: Fri, 21 Jun 2024 11:00:53 +0200
From: "mripard@kernel.org" <mripard@kernel.org>
To: Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>
Message-ID: <20240621-colossal-acoustic-cassowary-ee8d05@houat>
References: <20240525232928.5524-1-jason-jh.lin@mediatek.com>
 <20240527-determined-sage-piculet-bfec4a@houat>
 <4828461fa10101eec29e2885bc1aa0e2b7114e7c.camel@mediatek.com>
 <20240530-inventive-nippy-bee-bb6fa6@houat>
 <43db5c0959b387ff049dbd285093b076ed1421fa.camel@mediatek.com>
 <705eb69997333ffaf6efec053e376243a3c80265.camel@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <705eb69997333ffaf6efec053e376243a3c80265.camel@mediatek.com>
X-Rspamd-Queue-Id: 9E75E40D67
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	FROM_DN_EQ_ADDR(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,mediatek.com,lists.linaro.org,kernel.org,mediatek.corp-partner.google.com,ffwll.ch,google.com,lists.freedesktop.org,gmail.com,collabora.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 63XYL4E5NNLM3TY2ECUSHRZZKWYDFP2T
X-Message-ID-Hash: 63XYL4E5NNLM3TY2ECUSHRZZKWYDFP2T
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, Singo Chang =?utf-8?B?KOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "jason-jh.lin@mediatek.corp-partner.google.com" <jason-jh.lin@mediatek.corp-partner.google.com>, Jason-ch Chen =?utf-8?B?KOmZs+W7uuixqik=?= <Jason-ch.Chen@mediatek.com>, Shawn Sung =?utf-8?B?KOWui+WtneismSk=?= <Shawn.Sung@mediatek.com>, Nancy Lin =?utf-8?B?KOael+aso+ieoik=?= <Nancy.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "jkardatzke@google.com" <jkardatzke@google.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/7] Add mediate-drm secure flow for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/63XYL4E5NNLM3TY2ECUSHRZZKWYDFP2T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5649234844584644305=="


--===============5649234844584644305==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sncbl7222dptrev6"
Content-Disposition: inline


--sncbl7222dptrev6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 11, 2024 at 09:13:03AM GMT, Jason-JH Lin (=E6=9E=97=E7=9D=BF=E7=
=A5=A5) wrote:
> Hi Maxime,
>=20
> [snip]
>=20
> > > > > > ---
> > > > > > TODO:
> > > > > > 1) Drop MTK_DRM_IOCTL_GEM_CREATE and use DMA_HEAP_IOCTL_ALLOC
> > > > > > in
> > > > > > userspace
> > > > > > 2) DRM driver use secure mailbox channel to handle normal and
> > > > > > secure flow
> > > > > > 3) Implement setting mmsys routing table in the secure world
> > > > > > series
> > > > >=20
> > > > > I'm not sure what you mean here. Why are you trying to upstream
> > > > > something that still needs to be removed from your patch
> > > > > series?
> > > > >=20
> > > >=20
> > > > Because their is too much patches need to be fixed in this
> > > > series,
> > > > so I
> > > > list down the remaining TODO items and send to review for the
> > > > other
> > > > patches.
> > > >=20
> > > > Sorry for the bothering, I'll drop this at the next version.
> > >=20
> > > If you don't intend to use it, we just shouldn't add it. Removing
> > > the
> > > TODO item doesn't make sense, even more so if heaps should be the
> > > way
> > > you handle this.
> > >=20
> >=20
> > Sorry for this misunderstanding.
> >=20
> > I mean I'll remove the DRM_IOCTL_GEM_CREATE patch and then change
> > user
> > space calling DMA_HEAP_IOCTL_ALLOC to allocate buffer from secure
> > heap.
> >=20
>=20
> I have changed user space to use DMA_HEAP_IOCTL_ALLOC to allocate
> secure buffer, but I still encounter the problem of determining whether
> the buffer is secure in mediatek-drm driver to add some secure
> configure for hardware.
>=20
>=20
> As the comment in [1], dma driver won't provide API for use.
> [1]:=20
> https://patchwork.kernel.org/project/linux-mediatek/patch/20240515112308.=
10171-3-yong.wu@mediatek.com/#25857255
>=20
>=20
> So I use name checking at [PATCH v6 3/7] like this currently:
>=20
> struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device
> *dev,
>             struct dma_buf_attachment *attach, struct sg_table *sg)
> {
>     struct mtk_gem_obj *mtk_gem;
>=20
>     /* check if the entries in the sg_table are contiguous */
>     if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
>         DRM_ERROR("sg_table is not contiguous");
>         return ERR_PTR(-EINVAL);
>     }
>=20
>     mtk_gem =3D mtk_gem_init(dev, attach->dmabuf->size);
>     if (IS_ERR(mtk_gem))
>         return ERR_CAST(mtk_gem);
>=20
> +   mtk_gem->secure =3D (!strncmp(attach->dmabuf->exp_name, "restricted",
> 10));
>     mtk_gem->dma_addr =3D sg_dma_address(sg->sgl);
> +   mtk_gem->size =3D attach->dmabuf->size;
>     mtk_gem->sg =3D sg;
>=20
>     return &mtk_gem->base;
> }
>=20
> But I want to change this name checking to the information brought from
> user space.
> I tried to use arg->flags to append the secure flag in user space and
> call drmPrimeHandleToFD() to pass it to DRM driver, but it will be
> blocked by at the beginning of the drm_prime_handle_to_fd_ioctl().

I agree with you, it's something to discuss mostly with the dma-buf
maintainers but it would be better to just set a flag on the dma-buf,
and use that flag whenever necessary.

It might be related to the recent work I did to introduce allocation
flags too:
https://lore.kernel.org/linux-media/20240515-dma-buf-ecc-heap-v1-0-54cbbd04=
9511@kernel.org/

Maxime

--sncbl7222dptrev6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnVBRAAKCRDj7w1vZxhR
xW0eAQDL7FsolnEpQg0yKYGy2J97ffePbyQRQLT7aLkrr2nOygEA8o8jrPiaA91q
rOBhlLYPPx+pkleZ2bdvAacEXvA3QQA=
=dCqI
-----END PGP SIGNATURE-----

--sncbl7222dptrev6--

--===============5649234844584644305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5649234844584644305==--
