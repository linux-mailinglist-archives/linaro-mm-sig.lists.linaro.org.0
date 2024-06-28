Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CB591C018
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 15:57:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C3574424C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 13:57:57 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id 2723643D15
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 13:57:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kyLDPZs2;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.167.47 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52bbf73f334so572449e87.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 06:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719583073; x=1720187873; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lt9CFtU6VQjl5rQikn0RMmEwksOG2DhuVbtC+FM5Dq8=;
        b=kyLDPZs2eEVa8d+GEtX6LeHD1FkGET9jSdZZKgHxlvwpzLvz+YD9EtQ51CM2Qa9Dyv
         XsmfcqlQDDVrTL2a0a4pt4prH6+1Qwx/jKUPU7SA9xJmsBsFfioYOx89w2sp7b7eWL7U
         vg8VY/rvEtUWDWXZ9PTgwNMM5I9fz5hvtDLX1eTvsYqyU12I6UxyKFJ4d4oeplT0aUrW
         r3MmpaVwDadB3HizP+UQd+nr9BL2Xpl54l+ChXRNf+HaSONPZ4BjqThCNIQc8RIsM070
         oaa5To3GyAqV+e6fOkKAVMvoJW4wgC3dUqs4HE6ivqykMri3LyjCNOUHUoalC68GaUI5
         DItg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719583073; x=1720187873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lt9CFtU6VQjl5rQikn0RMmEwksOG2DhuVbtC+FM5Dq8=;
        b=Ky8cgK5xZhpsEzEvwGSqxF98CEzNfXJaGkZzNb87wY/TVVnzuv9P04OV9g8K3PRNsG
         ZcTYch+X8dCh3FauIwc6E4WZ9qhxcKIM68lJCKvRcAH1D75v46J9LsngwaegqaTPzw26
         S0KAAG+14IXNpEaZtUVwqQZI4AncITfh8cyfwIaXu9U4qvgUeYlUDY5Zl5MJfq+ltgK5
         BAf0552+DWR4LWbHYIRL8fe/SPJM4YA1S2Dy+OvzfZ4mpkt0yuLecsdJMve9RfR27PDD
         w87e9wna4cQ3tVKj1+SF1LIvajXvEQ5v2ya00PTv2KQuBfPXm6rk2Ug+K4ddBTVYJ1gU
         M+wA==
X-Forwarded-Encrypted: i=1; AJvYcCX70aeM7uLpfnJLvLm+z/FDgB9If1Gks2LEsCmZ39boGtTuJRJa12OClaeUk3R3vT0w5AaTfkMVEdr1R3tCYc0pBLj0KBrihdxIYVD7DpQ=
X-Gm-Message-State: AOJu0YwdQaHjn5f+9+/072iNTl/aIhel2NQw73PhTVj6qjlm4uPsMYCL
	EI4sEobdyVQtgbkNZ4LcJ+fTKkqmnlqYYKrfHQiCklZM6a+aLuhc
X-Google-Smtp-Source: AGHT+IF/NqMEU+y8hWP3NpUQFYLF4+7Vv+2H8/MUU3lKxcXQyxo//MvGoCXc6K8zeKDidYtxCSRYXQ==
X-Received: by 2002:a05:6512:1304:b0:52c:fd49:d42 with SMTP id 2adb3069b0e04-52cfd490d9emr7491193e87.14.1719583072185;
        Fri, 28 Jun 2024 06:57:52 -0700 (PDT)
Received: from orome (p200300e41f162000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f16:2000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0cd784sm2435261f8f.7.2024.06.28.06.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 06:57:51 -0700 (PDT)
Date: Fri, 28 Jun 2024 15:57:49 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <fh37zowioui7hcabzrco7xqxttze2lufijq67wbzylah3e3ry6@ahwnr2rspt3l>
References: <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
 <ZnxWWtdShekGSUif@phenom.ffwll.local>
 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
 <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
 <w3xcvakoytubud6dw4wxr6ntbe6uvfrldihnd26vai6uyyto6j@vcq7gizxolag>
 <c96f82e3-bbd6-407e-a71b-3a794a56585b@amd.com>
MIME-Version: 1.0
In-Reply-To: <c96f82e3-bbd6-407e-a71b-3a794a56585b@amd.com>
X-Rspamd-Queue-Id: 2723643D15
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,mediatek.com,ffwll.ch,quicinc.com,collabora.com,linaro.org,google.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.47:from];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Y33NWJA5TCXB4BRVYT65KXFRTOREV4H5
X-Message-ID-Hash: Y33NWJA5TCXB4BRVYT65KXFRTOREV4H5
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "mripard@kernel.org" <mripard@kernel.org>, Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.c
 om>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y33NWJA5TCXB4BRVYT65KXFRTOREV4H5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8947691521768758366=="


--===============8947691521768758366==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="reicrtljkywsfrhv"
Content-Disposition: inline


--reicrtljkywsfrhv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 28, 2024 at 02:34:24PM GMT, Christian K=C3=B6nig wrote:
> Am 28.06.24 um 13:47 schrieb Thierry Reding:
> > [SNIP]
> > > > The reason I ask is that encryption here looks just like another pa=
rameter
> > > > for the buffer, e.g. like format, stride, tilling etc..
> > > >=20
> > > > So instead of this during buffer import:
> > > >=20
> > > > mtk_gem->secure =3D (!strncmp(attach->dmabuf->exp_name, "restricted=
", 10));
> > > > mtk_gem->dma_addr =3D sg_dma_address(sg->sgl);
> > > > mtk_gem->size =3D attach->dmabuf->size;
> > > > mtk_gem->sg =3D sg;
> > > >=20
> > > > You can trivially say during use hey this buffer is encrypted.
> > > >=20
> > > > At least that's my 10 mile high view, maybe I'm missing some extens=
ive key
> > > > exchange or something like that.
> > > That doesn't work in all cases, unfortunately.
> > >=20
> > > If you're doing secure video playback, the firmware is typically in
> > > charge of the frame decryption/decoding, and you'd get dma-buf back t=
hat
> > > aren't accessible by the CPU (or at least, not at the execution level
> > > Linux runs with).
> > Can you clarify which firmware you're talking about? Is this secure
> > firmware, or firmware running on the video decoding hardware?
> >=20
> > > So nobody can map that buffer, and the firmware driver is the one who
> > > knows that this buffer cannot be accessed by anyone. Putting this on =
the
> > > userspace to know would be pretty weird, and wouldn't solve the case
> > > where the kernel would try to map it.
> > Doesn't userspace need to know from the start whether it's trying to do
> > secure playback or not? Typically this involves more than just the
> > decoding part. You'd typically set up things like HDCP as part of the
> > process, so userspace probably already does know that the buffers being
> > passed around are protected.
> >=20
> > Also, the kernel shouldn't really be mapping these buffers unless
> > explicitly told to. In most cases you also wouldn't want the kernel to
> > map these kinds of buffers, right? Are there any specific cases where
> > you expect the kernel to need to map these?
> >=20
> > I've been looking at this on the Tegra side recently and the way it
> > works on these chips is that you basically get an opaque carveout region
> > that has been locked down by secure firmware or early bootloaders, so
> > only certain hardware blocks can access it. We can allocate from that
> > carveout and then pass the buffers around.
> >=20
> > It may be possible to use these protected carveout regions exclusively
> > from the DRM/KMS driver and share them with multimedia engines via DMA-
> > BUF, but I've also been looking into perhaps using DMA-BUF heaps to
> > expose the carveout, which would make this a bit more flexible and allow
> > either userspace to allocate the buffers or have multiple kernel drivers
> > share the carveout via the DMA-BUF heap. Though the latter would require
> > that there be in-kernel APIs for heaps, so not too sure about that yet.
>=20
> Yeah as far as I can see that would be a perfectly valid use case for
> DMA-Buf heaps.
>=20
> One question here: How does the HDCP setup work on Tegra? From your comme=
nt
> I guess you pass most of the information through userspace as well.

Well, we don't currently support HDCP at all. I do have proof-of-concept
patches from a long time ago and, yes, judging by that we'd need to
control all of this from userspace. The way I imagine that this would
work is that userspace needs to first set the "Content Protection" and
"HDCP Content Type" properties and wait for the state change. Once that
has happened it can go and allocate the protected memory and start
decoding into it and then scan out from these buffers.

> Or is there any info inside the DMA-buf for this? In other words would you
> also need to know if a buffer is then allocated from this special carveou=
t?

I don't think so. It's possible to scan out an unprotected buffer with
HDCP enabled. It may also be possible to scan out a protected buffer
even if HDCP wasn't enabled, though you would obviously want to prevent
that somehow. Not sure if there's a common way to do this, but I guess
in end-user devices you'd need a fully trusted boot chain to do that in
a compliant way.

It's been a long time since I looked at this, but I seem to recall that
at the time all software that could do DRM-protected playback on Linux
was proprietary for reasons like these.

Thierry

--reicrtljkywsfrhv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmZ+wVoACgkQ3SOs138+
s6FYRg//ZUUMosKJeOf/03Cgop+FIjgV4O7IqRtSAfEN/qoxOIEVEe0GYmr4XT07
XmvxGHLuPu+uMb/mJneL/1i/GUcgJCas5qtVNZvMTieifqhIl4CzoCIu+HLNgotN
HmEAxVC84SG/nLpogfy5FRz2qnP1vZb7G+8pJADjqqmCj//6p+/xFEZM04iaM5aQ
RAX47cvOq8t/d83lphT3oexDkBmVA5yOnTptGf0+TCyjDp3mrFqECDMSNKDysqqc
t2HrGUIsG+hpoAXxDrMSRSPwWaFXJwHqXOzoCRWY5eFpL6+3aVeYag00D3rhHaF5
E3J6HOq0UXftdkH9sb2dnqJhWb8zi8GVx0EsVhH2j6xXC0d6Afd+y8JxhWebkjp1
yuASrgIzvoh3PAsXWDs54MA+0q/QEDFwX3ePC4XKTVhR7XD3h7TkQ/i8dRH6mu89
tY7FUN2p/Yr3EIviljnSkwqgEe/3aH3rgHyTCHjSYOY1coQgSf8c5gs/J95G5FYD
Y7ccQGGfiAYxvHlxkZSRVNpGLyrKeQYr2GvWE1fPnEtEGINdXa3UNXM+N01CoUlv
ch2icB9764M1/Eh1Tso3ymqdwVRq7bfoE15/efyLBb5bW+UChZTs9f1F6PSGb0sJ
pppVGYLhBLuMSb2NSRud/tly7J6Wz8gcD8V0FnbJ03hjIRRTR3w=
=Ib2U
-----END PGP SIGNATURE-----

--reicrtljkywsfrhv--

--===============8947691521768758366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8947691521768758366==--
