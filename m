Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 376DC91BEB6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 14:38:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BE944486D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 12:38:24 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 23D1143D1C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 12:38:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=e27mKGPA;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4256eec963eso3541045e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 05:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719578301; x=1720183101; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UkB9FJLP2us4SWIDZi7Xked72Jv5/nb/0qDRVeIMogM=;
        b=e27mKGPAirEUtjinXR4qZwrBWpo04F8+Ic8LXwkCCGq9hdGxemIpbC9/4+bLpBGdG0
         zJ+sJT6WEzn3hhscnXpISLnQL2tA5gN8NXQ1l2sOYdFxv+6bw+DhI0Tc7JiWafvsQ98+
         2+nxmgileiUAGJHmM+VTGCAAbA9RfziLyYJHvrAQQQokOFRKHpCx96l8wnGvf9X2O7AA
         FyWiuZFE/IQtCoT4CULQQfu84sWYqp/zotENE807ifruZR8f/LyI948AyBBQ9qyV1lFQ
         D/bbhq9zdkIyG+s+koUnN73MfWHcpx53BaASUGP3atmz0qiNgYo98dBL5jWmq6OiNKN0
         /8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719578301; x=1720183101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UkB9FJLP2us4SWIDZi7Xked72Jv5/nb/0qDRVeIMogM=;
        b=ddRXgPAzxViwTP3DsPzgceCexF1RZxVNHfrVR9SIIzpO7E4QzDVh9p6pGnP/4hkNbP
         Nk2fMn2HHICI04ki89oEyIHfeKxeBV7caVmdfr3xgVN3Z131/29MPpbUxRV7UMv04fvs
         Vn6tagZHsNJTy34dY0fCaVBXVaxtG/vFwQa61zbr14QtAS1DcDu0///b7zsRFyU72NCk
         7BLd6lNmg4JM6O5JzBUEjd1VLNeHJAyIB4PP+2ULFzT5RkuvGGlQjKWQhW19EOM6qDh4
         5IIsMZMCjKeGj8drMFmIrKWWmugJJWH+tAH8hxy4xbytHXShYaJ7Y9J/1s8kGnGWjVzi
         M42w==
X-Forwarded-Encrypted: i=1; AJvYcCXvpOIKxll2es6oRhw+4PURTNIY9Yj8fPhlAxTJ8Yd5gSOqEq2kim1766H0v0ozesa6qiXyhsdAaJAc+eF/4LClwetZfjgov+A8552NKLE=
X-Gm-Message-State: AOJu0YyBW55DmvFsl8GJQSZhIi2lgb2N2J/kGM0GNwF0tHLeWzu2s724
	MNyjtTCCmzlwVDLNtu1FlVJ+BZIEx0ttQpMx0qNw1dxPKZm5bgWZUC7CDw==
X-Google-Smtp-Source: AGHT+IGKPig1mllBhdyoWDfOAICdvFqpjzxk+CF0oztCa+Z2hIe/+Ak7GWhb6YuhdCYfjXEa57wE4g==
X-Received: by 2002:adf:fd4b:0:b0:367:2ae1:9c4d with SMTP id ffacd0b85a97d-3672ae19d30mr5464759f8f.29.1719578300608;
        Fri, 28 Jun 2024 05:38:20 -0700 (PDT)
Received: from orome (p200300e41f162000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f16:2000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0fc4c9sm2197872f8f.86.2024.06.28.05.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 05:38:20 -0700 (PDT)
Date: Fri, 28 Jun 2024 14:38:18 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <pmweipswfysn3sjwf7jphwcjkt36s5d2o5ox6e63btqiyj7taj@kti5j36ttfbc>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-8-yong.wu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20240515112308.10171-8-yong.wu@mediatek.com>
X-Rspamd-Queue-Id: 23D1143D1C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	URIBL_BLOCKED(0.00)[mediatek.com:email,mail-wm1-f51.google.com:helo,mail-wm1-f51.google.com:rdns];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,amd.com,linaro.org,linux-foundation.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,infradead.org,deltatee.com,ffwll.ch,mediatek.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OUUL6K5A7YLLYYXELH6RGT74TREM3G7E
X-Message-ID-Hash: OUUL6K5A7YLLYYXELH6RGT74TREM3G7E
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, willy@inf
 radead.org, Logan Gunthorpe <logang@deltatee.com>, Daniel Vetter <daniel@ffwll.ch>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 7/9] dma-buf: heaps: restricted_heap: Add MediaTek restricted heap and heap_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OUUL6K5A7YLLYYXELH6RGT74TREM3G7E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2994645067660432265=="


--===============2994645067660432265==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5z4oex5oy2lm7v2z"
Content-Disposition: inline


--5z4oex5oy2lm7v2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2024 at 07:23:06PM GMT, Yong Wu wrote:
> Add a MediaTek restricted heap which uses TEE service call to restrict
> buffer. Currently this restricted heap is NULL, Prepare for the later
> patch. Mainly there are two changes:
> a) Add a heap_init ops since TEE probe late than restricted heap, thus
>    initialize the heap when we require the buffer the first time.
> b) Add a priv_data for each heap, like the special data used by MTK
>    (such as "TEE session") can be placed in priv_data.
>=20
> Currently our heap depends on CMA which could only be bool, thus
> depend on "TEE=3Dy".
>=20
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/Kconfig               |   7 ++
>  drivers/dma-buf/heaps/Makefile              |   1 +
>  drivers/dma-buf/heaps/restricted_heap.c     |  11 ++
>  drivers/dma-buf/heaps/restricted_heap.h     |   2 +
>  drivers/dma-buf/heaps/restricted_heap_mtk.c | 115 ++++++++++++++++++++
>  5 files changed, 136 insertions(+)
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap_mtk.c
>=20
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index e54506f480ea..84f748fb2856 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -21,3 +21,10 @@ config DMABUF_HEAPS_RESTRICTED
>  	  heap is to manage buffers that are inaccessible to the kernel and use=
r space.
>  	  There may be several ways to restrict it, for example it may be encry=
pted or
>  	  protected by a TEE or hypervisor. If in doubt, say N.
> +
> +config DMABUF_HEAPS_RESTRICTED_MTK
> +	bool "MediaTek DMA-BUF Restricted Heap"
> +	depends on DMABUF_HEAPS_RESTRICTED && TEE=3Dy
> +	help
> +	  Enable restricted dma-buf heaps for MediaTek platform. This heap is b=
acked by
> +	  TEE client interfaces. If in doubt, say N.
> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makef=
ile
> index a2437c1817e2..0028aa9d875f 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)		+=3D cma_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED)	+=3D restricted_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED_MTK)	+=3D restricted_heap_mtk.o
>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+=3D system_heap.o
> diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/he=
aps/restricted_heap.c
> index 4e45d46a6467..8bc8a5e3f969 100644
> --- a/drivers/dma-buf/heaps/restricted_heap.c
> +++ b/drivers/dma-buf/heaps/restricted_heap.c
> @@ -151,11 +151,22 @@ restricted_heap_allocate(struct dma_heap *heap, uns=
igned long size,
>  			 unsigned long fd_flags, unsigned long heap_flags)
>  {
>  	struct restricted_heap *rheap =3D dma_heap_get_drvdata(heap);
> +	const struct restricted_heap_ops *ops =3D rheap->ops;
>  	struct restricted_buffer *restricted_buf;
>  	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>  	struct dma_buf *dmabuf;
>  	int ret;
> =20
> +	/*
> +	 * In some implements, TEE is required to protect buffer. However TEE p=
robe
> +	 * may be late, Thus heap_init is performed when the first buffer is re=
quested.
> +	 */
> +	if (ops->heap_init) {
> +		ret =3D ops->heap_init(rheap);
> +		if (ret)
> +			return ERR_PTR(ret);
> +	}

I wonder if we should make this parameterized rather than the default.
Perhaps we can add a "init_on_demand" (or whatever other name) flag to
struct restricted_heap_ops and then call this from heap initialization
if possible and defer initialization depending on the restricted heap
provider?

> +
>  	restricted_buf =3D kzalloc(sizeof(*restricted_buf), GFP_KERNEL);
>  	if (!restricted_buf)
>  		return ERR_PTR(-ENOMEM);
> diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/he=
aps/restricted_heap.h
> index 6d9599a4a34e..2a33a1c7a48b 100644
> --- a/drivers/dma-buf/heaps/restricted_heap.h
> +++ b/drivers/dma-buf/heaps/restricted_heap.h
> @@ -19,6 +19,8 @@ struct restricted_heap {
>  	const char		*name;
> =20
>  	const struct restricted_heap_ops *ops;
> +
> +	void			*priv_data;

Honestly, I would just get rid of any of this extra padding/indentation
in these structures. There's really no benefit to this, except maybe if
you *really* like things to be aligned, in which case the above is now
probably worse than if you didn't try to align in the first place.

Thierry

--5z4oex5oy2lm7v2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmZ+rroACgkQ3SOs138+
s6EB/hAAlquMNwNzbko/vJ18thfHMMKEC/LnnxyK/L6hWo7sf3oV1B8fuUN/r+A5
qzDZZmYdzjgCrR7bY/80cCOUVhJz1/y+eiQXSyBoG/5UM7SDPSSnRHCDYxGk8PUs
6Tl7I1KmB994jWeX3qBUs8jM1EQym+2aYPevhR9E7bmKUfdGaaeBOwOv85Ku0rC9
DhnQfteSJx9jRhnMzQE+ADzjqtnVhR4oSmfpugMPXV/WkVhJ81fMLDr6O3YAfFMy
59NfXGreJN+yG/9FmuF6aIsesBcH8loA6UyM+RIv7eubHAZCCzAbXrHvdBg3neGN
F2lRw/QN3PYdXAayYTDTw1619gN9oABCreu1TMJEPZmxypM8T89h17rSl06wUjxe
tgFwkbvdsYQzpYBT54Jugie8+HCkQAxItrb2uFHI4zHKcg4OuvrlQP4ZLpA2qh4q
2DK34GYRim44TCdKhL+R3LWAGVEIbzdnIUFt69k44rwj0qwTXaFofMQhDC/zS8Z6
H1g4Ls4sNl7iPhnwfxtphdhvtw33ofgAqKtffPYlJKzSR+T08vOTENLDWIWf62NZ
5R0I+LJ8DHBzZKprzeBkA7KL4mlctZKGEaf/d3G2cPoWBoCdBkRDOi+XTFtiVHKa
kuNAR3Rsd/TbSDZYGcozLxD+mGBgZclxEO8kyHNENQR+xvetWiY=
=oI/a
-----END PGP SIGNATURE-----

--5z4oex5oy2lm7v2z--

--===============2994645067660432265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2994645067660432265==--
