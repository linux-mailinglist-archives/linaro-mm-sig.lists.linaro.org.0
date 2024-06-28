Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C54AC91BDB8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 13:47:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCDAA43D1A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 11:47:08 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 56D6F43D19
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 11:47:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=c+ghg6+q;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52ce6a9fd5cso525807e87.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 04:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719575224; x=1720180024; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=My0FAeINliQSvzugi5EfMpP7k63NjksaUuGOywpYmGM=;
        b=c+ghg6+qHBZ2wB7JPYkvHQoEqJA9cywg5VkNiCt/R/KNjfH0uRAU3MpatZz6eCB82O
         qUI6o5NWcsNqfYquW6zKg4wCGaWhyCAO9GiI8fu4CW/ApA6r7peOa7miHAb9Q4mZFsFN
         /ni3zcMsVHFKR8Sa1lPMg2zqvLQlRrc+gIK/bbGBNTaMEzd9iOxuSb/5PjG5LdZ/1NXr
         C8Kvf2CPD/oYFece9R2q+OKrhiimZnPKar0PHrl8IyPimNDHc85hADmPg9tt6e4TGLFB
         5QAjnSfy/DOEU+BvsNAIDISCG6EhMO3BjWIOdUEcYy/RuVyD7uKiGTgcbLF6UeAtOdjO
         PC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719575224; x=1720180024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=My0FAeINliQSvzugi5EfMpP7k63NjksaUuGOywpYmGM=;
        b=dcI0/5s8x3u7G+BV7jK/BursWURvc/yz4R/EKpTMGsS6lBDF/+//CfXFgDphBGyhB6
         AzafdwJwOZnsfg4u6iii7+ptiYsDdQYLTQuw76PIc/1vbAQg1TjKBBUawg5Wm/Lq34R3
         mPGbg9eUChk1IHPYvAmNXpuKyel4S9tkaBizT4BFFYxfA/wUgqUSb68FDaxymJbPI4Nm
         G0k3zrGpAVfn6vnM+dEKRfz9VQDIgkLRloNf3CmJNAirBp7F2EeuPW16i88AlT7d++sI
         J/U3erc4vjQvzPTgORsJ9wwpuVkrp/Xnn8/8ISbsA3nzm5e4rYeLFBwZ70QEVSDO+FAZ
         jI5w==
X-Forwarded-Encrypted: i=1; AJvYcCXA6lsGXURZdth4Z8MTI3tRdfm206qWiWOTvKxI5HBrPEhdrLbFTgUBtB2KSzzqJXCi/s8eZ1eLTOCCZo0+eJGv9hbKglRSsbQUpS4IbA4=
X-Gm-Message-State: AOJu0YwIsXoVFIl467y820aiG11eSoHiGS3jakVPtgYN8PIt5kskos4X
	oYq6gsCcV3ZJrDFTujkXrfu5I/krPVg+ACmfKDqj3Tq7rUFIJ262
X-Google-Smtp-Source: AGHT+IHht87bUeU/cT7mhZ3k2JhCQvDU1hvJs6iM66ZXK88UerJBYM+ie7/gOngzZlfzA+2zqtsxiA==
X-Received: by 2002:a05:6512:3e27:b0:52e:751a:a177 with SMTP id 2adb3069b0e04-52e751aa337mr2630048e87.54.1719575223334;
        Fri, 28 Jun 2024 04:47:03 -0700 (PDT)
Received: from orome (p200300e41f162000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f16:2000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af55aeasm31527565e9.17.2024.06.28.04.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 04:47:02 -0700 (PDT)
Date: Fri, 28 Jun 2024 13:47:01 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: "mripard@kernel.org" <mripard@kernel.org>
Message-ID: <w3xcvakoytubud6dw4wxr6ntbe6uvfrldihnd26vai6uyyto6j@vcq7gizxolag>
References: <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
 <ZnxWWtdShekGSUif@phenom.ffwll.local>
 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
 <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
MIME-Version: 1.0
In-Reply-To: <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
X-Rspamd-Queue-Id: 56D6F43D19
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mail-lf1-f52.google.com:helo,mail-lf1-f52.google.com:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[amd.com,mediatek.com,ffwll.ch,quicinc.com,collabora.com,linaro.org,kernel.org,google.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MUGHCDJDTL3MTC66HRH4K3SNAXJG5WUL
X-Message-ID-Hash: MUGHCDJDTL3MTC66HRH4K3SNAXJG5WUL
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaig
 nard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MUGHCDJDTL3MTC66HRH4K3SNAXJG5WUL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3115948836894332027=="


--===============3115948836894332027==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k36s42wxenrclcox"
Content-Disposition: inline


--k36s42wxenrclcox
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 27, 2024 at 04:40:02PM GMT, mripard@kernel.org wrote:
> On Thu, Jun 27, 2024 at 08:57:40AM GMT, Christian K=C3=B6nig wrote:
> > Am 27.06.24 um 05:21 schrieb Jason-JH Lin (=E6=9E=97=E7=9D=BF=E7=A5=A5):
> > >=20
> > > On Wed, 2024-06-26 at 19:56 +0200, Daniel Vetter wrote:
> > > >   > External email : Please do not click links or open attachments
> > > until
> > > > you have verified the sender or the content.
> > > >  On Wed, Jun 26, 2024 at 12:49:02PM +0200, Christian K=C3=B6nig wro=
te:
> > > > > Am 26.06.24 um 10:05 schrieb Jason-JH Lin (=E6=9E=97=E7=9D=BF=E7=
=A5=A5):
> > > > > > > > I think I have the same problem as the ECC_FLAG mention in:
> > > > > > > > > > > https://lore.kernel.org/linux-media/20240515-dma-buf-=
ecc-heap-v1-0-54cbbd049511@kernel.org/
> > > > > > > > > > I think it would be better to have the user configurable
> > > > private
> > > > > > > > information in dma-buf, so all the drivers who have the same
> > > > > > > > requirement can get their private information from dma-buf
> > > > directly
> > > > > > > > and
> > > > > > > > no need to change or add the interface.
> > > > > > > > > > What's your opinion in this point?
> > > > > > >  > Well of hand I don't see the need for that.
> > > > > > > > What happens if you get a non-secure buffer imported in your
> > > > secure
> > > > > > > device?
> > > > > > > > > We use the same mediatek-drm driver for secure and
> > > non-secure
> > > > buffer.
> > > > > > If non-secure buffer imported to mediatek-drm driver, it's go to
> > > > the
> > > > > > normal flow with normal hardware settings.
> > > > > > > > > We use different configurations to make hardware have
> > > different
> > > > > > permission to access the buffer it should access.
> > > > > > > > > So if we can't get the information of "the buffer is
> > > allocated
> > > > from
> > > > > > restricted_mtk_cma" when importing the buffer into the driver, =
we
> > > > won't
> > > > > > be able to configure the hardware correctly.
> > > > > > > Why can't you get this information from userspace?
> > > > > Same reason amd and i915/xe also pass this around internally in t=
he
> > > > kernel, it's just that for those gpus the render and kms node are t=
he
> > > > same
> > > > driver so this is easy.
> > > >
> >=20
> > The reason I ask is that encryption here looks just like another parame=
ter
> > for the buffer, e.g. like format, stride, tilling etc..
> >=20
> > So instead of this during buffer import:
> >=20
> > mtk_gem->secure =3D (!strncmp(attach->dmabuf->exp_name, "restricted", 1=
0));
> > mtk_gem->dma_addr =3D sg_dma_address(sg->sgl);
> > mtk_gem->size =3D attach->dmabuf->size;
> > mtk_gem->sg =3D sg;
> >=20
> > You can trivially say during use hey this buffer is encrypted.
> >=20
> > At least that's my 10 mile high view, maybe I'm missing some extensive =
key
> > exchange or something like that.
>=20
> That doesn't work in all cases, unfortunately.
>=20
> If you're doing secure video playback, the firmware is typically in
> charge of the frame decryption/decoding, and you'd get dma-buf back that
> aren't accessible by the CPU (or at least, not at the execution level
> Linux runs with).

Can you clarify which firmware you're talking about? Is this secure
firmware, or firmware running on the video decoding hardware?

> So nobody can map that buffer, and the firmware driver is the one who
> knows that this buffer cannot be accessed by anyone. Putting this on the
> userspace to know would be pretty weird, and wouldn't solve the case
> where the kernel would try to map it.

Doesn't userspace need to know from the start whether it's trying to do
secure playback or not? Typically this involves more than just the
decoding part. You'd typically set up things like HDCP as part of the
process, so userspace probably already does know that the buffers being
passed around are protected.

Also, the kernel shouldn't really be mapping these buffers unless
explicitly told to. In most cases you also wouldn't want the kernel to
map these kinds of buffers, right? Are there any specific cases where
you expect the kernel to need to map these?

I've been looking at this on the Tegra side recently and the way it
works on these chips is that you basically get an opaque carveout region
that has been locked down by secure firmware or early bootloaders, so
only certain hardware blocks can access it. We can allocate from that
carveout and then pass the buffers around.

It may be possible to use these protected carveout regions exclusively
=66rom the DRM/KMS driver and share them with multimedia engines via DMA-
BUF, but I've also been looking into perhaps using DMA-BUF heaps to
expose the carveout, which would make this a bit more flexible and allow
either userspace to allocate the buffers or have multiple kernel drivers
share the carveout via the DMA-BUF heap. Though the latter would require
that there be in-kernel APIs for heaps, so not too sure about that yet.

Thierry

--k36s42wxenrclcox
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmZ+orEACgkQ3SOs138+
s6HPJQ//TcMbu25fcrdPU4jThmu9Smiei9RSdfWPxaxKf2AUTc0QgF26JYL81nBL
6bgeUO8EopK9ixc6TmW9RoTz0M4hR998qzO5/3tWLKPThTp+o7O7Eg/nNf3KLfos
DIylq7s1biNys3T9fcfkF+qopGslyKol0YGoC0PV1JlkSY2usukXK3ZudGFGXLVF
P7ajoJNxLWbIyAmDXzrU6JrSVmskz8AuxObLuy7yBVWXEV9BkIzqpxjCB910Vhex
sklgow0u0/vc9IuFwSyQZeoGGq05oGT+8ECu3MaFe1alM0dFwGMn4s3AFl7xzzea
sDUwIN7JKTRncAHFgUrxyQQlCvhvqc9YeUSNw+92u9P6w8FPM7Fd0+cnBaG1xDeY
R01u4oK8MvFqBIjTel3Y635pMyeF7w41id1lB+RR8NaDlpPIx1v+2Zo6ZL1qkc6s
4TwxBahB5UXwX++uervCeqbCamsX9nd8T/bfrODXTvKLgE4izgfkljh+a6LgQvoh
Gb8NvMc8sVzlq3GDH9nsua1UtcGsp2z7X2xWxu5HhXopWFu7nxMu8qGb5zpIVcT2
wKcaqjvG2mJumA2EWF6u17It1970AF7xzJQqrQBKN8mSRTnbm8Y7cT95fOunTin4
Dn3iTuQGQ8DLJDwnpv4ahQ5RYRIEuuJxtQi4J6k1ayy8XeO9lw8=
=bMCi
-----END PGP SIGNATURE-----

--k36s42wxenrclcox--

--===============3115948836894332027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3115948836894332027==--
