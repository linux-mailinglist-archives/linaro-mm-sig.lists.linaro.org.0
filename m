Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8983055BA99
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 16:50:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91D4A3F2F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 14:50:44 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by lists.linaro.org (Postfix) with ESMTPS id B4A423F1D8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 14:50:38 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id t25so17050293lfg.7
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 07:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version;
        bh=dOaiYvQGA8dtTGj+gTVciKf9Z7xPlq9eoRmvFbM4ABs=;
        b=j2qj+DKyPJa6z2/BA1wnZbSxy4/pUR1+eSpjczkT8Gdv462w+erbzpiWVrLLmnDcER
         AamhE4B5Rl6x4M+BCYYBiIwnkFqVeLxD4h04MRmbQiVKESadT/JYMg2GqG+/IErozfRP
         +3IHUvxM5fW4bn2oXZJa5mxiiq4jAGQMXYfW2GazIMfGUndMatX4F1pmkJNqu9I9TSQt
         OeGQGwLR4dikszRt0rEvIbRpPTDtmelGzqIFfNC/K+pBxbxeCG2tGMega/0zViTSjL79
         0pmtUaLspKp+ienq4BI80tMdXgQnEI9zuSlrPuSkJZkqErPYzwfwLoE+HGpRRF42syyV
         xARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version;
        bh=dOaiYvQGA8dtTGj+gTVciKf9Z7xPlq9eoRmvFbM4ABs=;
        b=l16I2rx7XAX0AgY9O9XpHZh2g3uAF6tO6yoEMCk/i7ou8m7ac3r0ZQRQ10PXkXzuV9
         Vov6F8QW/6rKi+7ovMpTPhOBsKcmK4sevkdR1Kz6uP2VfCItn8F2HG84jaE9EGoc1EhU
         NLnRNORuwYGwzXijMpmcXBANV2JHAZ0lBSmsh3WgSBmTTWtCs8hRGZwujuHaIePwPg4K
         hJ8xUzCTTOpdWSutjkLeYs2Qo5xvQ/pT05l0LBxsaGVGNZCAUA1m3IRC7AwiOQpkI8fQ
         5D+LUnKXpxNM6o2OeDPP7eELJrVwkKQA5390Qv9s9UOZ9EUS4ByqO0tERWCwAkCr6l7/
         IdtA==
X-Gm-Message-State: AJIora/y7hHqpYHDyhjozlvAns3j01iXTgxWnTnlveRo0G4err6CCGyM
	84kjNdbfLfQajSlnlmcEqnI=
X-Google-Smtp-Source: AGRyM1v6lFqWm0FHzrmBm4gbQPzTbokaSItAs4aQArnkXDhvuj7me3ob6iEzkPIAQXmvUf+1dwycDg==
X-Received: by 2002:a05:6512:3e06:b0:47f:7928:a578 with SMTP id i6-20020a0565123e0600b0047f7928a578mr8410754lfv.406.1656341437344;
        Mon, 27 Jun 2022 07:50:37 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id d10-20020a0565123d0a00b0048110fd06c4sm875143lfv.53.2022.06.27.07.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 07:50:36 -0700 (PDT)
Date: Mon, 27 Jun 2022 17:50:26 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Dennis Tsiang <Dennis.Tsiang@arm.com>
Message-ID: <20220627175026.6a5dd239@eldfell>
In-Reply-To: <AS8PR08MB81117652E417826E741154B8F8B99@AS8PR08MB8111.eurprd08.prod.outlook.com>
References: <AS8PR08MB81117652E417826E741154B8F8B99@AS8PR08MB8111.eurprd08.prod.outlook.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Message-ID-Hash: 4W2LHUD7KP6IA73QBPA6S6DOFURKUKAW
X-Message-ID-Hash: 4W2LHUD7KP6IA73QBPA6S6DOFURKUKAW
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"maarten.lankhorst@linux.intel.com\"         <maarten.lankhorst@linux.intel.com>, "@lists.linaro.org,
	mripard@kernel.org, " <mripard@kernel.org>, "@lists.linaro.org,
	tzimmermann@suse.de, " <tzimmermann@suse.de>, "@lists.linaro.org,
	airlied@linux.ie, " <airlied@linux.ie>, "@lists.linaro.org,
	daniel@ffwll.ch, " <daniel@ffwll.ch>, "@lists.linaro.org,
	sumit.semwal@linaro.org,
	" <sumit.semwal@linaro.org>, "@lists.linaro.org,
	christian.koenig@amd.com,
	" <christian.koenig@amd.com>, "@lists.linaro.org,
	linux-kernel@vger.kernel.org,
	" <linux-kernel@vger.kernel.org>, "@lists.linaro.org,
	linux-media@vger.kernel.org,
	" <linux-media@vger.kernel.org>, "@lists.linaro.org,
	linaro-mm-sig@lists.linaro.org, <linaro-mm-sig@lists.linaro.org>,
	Liviu Dudau <Liviu.Dudau@arm.com>,
	Brian Starkey <Brian.Starkey@arm.com>, Lisa Wu <lisa.wu@arm.com>,
	Normunds Rieksts <Normunds.Rieksts@arm.com>, nd <nd@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/1] [RFC] drm/fourcc: Add new unsigned R16_UINT/RG1616_UINT formats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4W2LHUD7KP6IA73QBPA6S6DOFURKUKAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7828670204814551410=="

--===============7828670204814551410==
Content-Type: multipart/signed; boundary="Sig_/X2K583TfsJ/xM11qK+/tNYo";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/X2K583TfsJ/xM11qK+/tNYo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 27 Jun 2022 13:40:04 +0000
Dennis Tsiang <Dennis.Tsiang@arm.com> wrote:

> This patch is an early RFC to discuss the viable options and
> alternatives for inclusion of unsigned integer formats for the DRM API.
>=20
> This patch adds a new single component 16-bit and a two component 32-bit
> DRM fourcc=E2=80=99s that represent unsigned integer formats. The use cas=
e for
> needing UINT formats, in our case, would be to support using raw buffers
> for camera ISPs.
>=20
> For images imported with DRM fourcc + modifier combination, the GPU
> driver needs a way to determine the datatype of the format which
> currently the DRM API does not provide explicitly with a notable
> exception of the floating-point fourccs such as DRM_FORMAT_XRGB16161616F
> as an example. As the DRM fourccs do not currently define the
> interpretation of the data, should the information be made explicit in
> the DRM API similarly to how it is already done in Vulkan?
>=20
> The reason for introducing datatype to the DRM fourcc's is that the
> alternative, for any API (e.g., EGL) that lacks the format datatype
> information for fourcc/modifier combination for dma_buf interop would be
> to introduce explicit additional metadata/attributes that encode this
> information which then would be passed to the GPU driver but the
> drawback of this is that it would require extending multiple graphics
> APIs to support every single platform.
>=20
> By having the DRM API expose the datatype information for formats saves
> a lot of integration/verification work for all of the different graphics
> APIs and platforms as this information could be determined by the DRM
> triple alone for dma_buf interop.
>=20
> It would be good to gather some opinions on what others think about
> introducing datatypes to the DRM API.

Hi,

I didn't quite grasp where this information is necessary, and when it
is necessary, is it that simple to communicate? Does it even belong
with the pixel format at all?

Let us consider the existing problems.

All traditional integer formats in drm_fourcc.h right now are unsigned.
They get interpreted as being in the range [0.0, 1.0] for color
operations, which means converting to another bit depth works
implicitly. That's where the simplicity ends. We assume to have full
quantization range unless otherwise noted in some auxiliary data, like
KMS properties (I forget if there even was a property to say DRM
framebuffer uses limited quantization range). We assume all pixel data
is non-linearly encoded. There is no color space information. YUV-RGB
conversion matrix coefficients are handled by a KMS property IIRC.

Coming back to the nominal range [0.0, 1.0]. That's an implicit
assumption that allows us to apply things like LUTs. It already
breaks down if you choose a floating-point format instead of unsigned
integer format. Is FP pixel value 1.0 the same as nominal 1.0? Or is
the FP pixel value 255.0 the same as nominal 1.0? KMS has no way to
know or control that AFAIK.

If you had UINT format, meaning the nominal value range is [0.0, 65535.0]
(e.g. for 16 bpc) instead of [0.0, 1.0], then how does that work with a
LUT element in the color pipeline? How would it be both meaningful and
different to existing 16 bpc integer format?

What's the actual difference between R16 and R16_UINT, what difference
does it make to a GPU driver?

Maybe that is intimately dependent on the API where the pixel formats
are used?

Maybe for KMS R16 and R16_UINT would be completely equivalent, but not
for some other API?

We also need to be very careful to not load pixel format with meaning
that does not belong there. Non-linear encoding (transfer function) is
obviously something that is completely unrelated to the pixel format,
as long as the pixel format defines a conversion to nominal value
range. Color space (primaries and white point) are another thing that
has nothing to do with pixel format, and so must not be in any way
implied by pixel format.

Should a pixel format define how the raw pixel values are converted to
nominal values?

No, because we have quantization range as a separate property,
currently with "full" and "limited" understood, where "limited" means
different things depending on the color model.

Color model is defined by the pixel formats: we have RGB and YUV
formats, likewise is chroma sub-sampling.

Hmm.


Thanks,
pq

--Sig_/X2K583TfsJ/xM11qK+/tNYo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmK5w7IACgkQI1/ltBGq
qqfJRA//Z7dsCsvuVbnZPOkkYsz76QPv2NXENM4/uQqafBCK2aJGsFPpMZOGXdzM
5GaK+El6TO9OCREs5RrnrAQlX3os+/6RIprHd5Ib5cpRbVlYlWE5wx0UdG3wM9Fx
f0fuPl+Flm1z+g1f8bbZOrioYNewTyHgnkwHF3kScYjxOinHAGAzJhg1DGqFvSvt
QSe3Du9Oayt4RDCT5km0Kw7Ehwm+841Vpa/sOhcAb3sc1AqAOOFazf3u7XLmF0y9
Uvm4n+Nas9vzktf3usdA0Ro1UyLAQrQ4FqWQfKwnowTWMX2dDsVq9OQ63Vyzj0Z4
rIg2fgJnC9iAJzNCf3pzMVQVV841pBksBl/cySL2ZsadhtYp24+ezhq1BKCbZMlI
fR1M0YdzDrfFUGeMI6bkZufC0JONhVYEqWrlpp0E9Nj9hMAGwqvFyqoVFrxf9xtO
0lnQldxVQdLHWfkXK/4v7VK2qKz+kO4EzEn52zxPft4h5vU80m0X5h5UGN5V5RVz
SnJD3V9Xyg7HWpepBPHALSVGwDeuLozKTXBlndS2hXkp28f1ARXyZactFQNnfiPW
tlKR/Lv/BW4u21WxaJ5XCT0y0YST1j+ijDkx5+wugMtJ5CU+0ijy/9J/GUZs7wqx
VeYJPuGRPL7nVGM2UmEwsxN9yZZGRes40/49vaNQaALOATxE2U4=
=GP37
-----END PGP SIGNATURE-----

--Sig_/X2K583TfsJ/xM11qK+/tNYo--

--===============7828670204814551410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7828670204814551410==--
