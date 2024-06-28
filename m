Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B526B91BFBE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 15:40:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7853448F9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 13:40:28 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 437EC44886
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 13:40:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qaAwq6zc;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D365F60C3D;
	Fri, 28 Jun 2024 13:40:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08C32C116B1;
	Fri, 28 Jun 2024 13:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719582025;
	bh=UWPWV5xOWPvWRohvXp3jsd5OyLdElhEyWkgsMgthC0s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qaAwq6zcOXnpgYUwN0NVIO0yqpZ0Zb5n2YZUgJX5BmAQYP2Cluav1xiJq0hZ1F060
	 swoFvPvWsQ7X032KHtT6ExmTb2egebRNSVrf4Be3qEMXEjjOWdH0RacwDbG/wbJ/IL
	 Lr5X0sHIKotDF4a8APUYV/YhbMEi97yJeuTM4Ndsjf4JMs3/HwJanR6v9/QibvkRsl
	 44QEsuf0ytcePzl2v7ab0R9CGcp6eTRGf74VnAJH2ag50Yux/d5x/xrGpW/74HHWh3
	 x7UXvQscwRb5ZzQo/H0341550qV2Cd13sb0hgnEiICw+icYbkcsRrPH5hsfSsGqiQB
	 YLRRLIPVBVGow==
Date: Fri, 28 Jun 2024 15:40:22 +0200
From: "mripard@kernel.org" <mripard@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20240628-cuddly-brave-squid-e1cb22@houat>
References: <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
 <ZnxWWtdShekGSUif@phenom.ffwll.local>
 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
 <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
 <304c9faa-5a9c-4520-a3d8-0818f76dd7c9@amd.com>
MIME-Version: 1.0
In-Reply-To: <304c9faa-5a9c-4520-a3d8-0818f76dd7c9@amd.com>
X-Rspamd-Queue-Id: 437EC44886
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	FROM_DN_EQ_ADDR(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_TWELVE(0.00)[34];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,ffwll.ch,quicinc.com,collabora.com,linaro.org,kernel.org,google.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IR7BU2RJDR7PZA27VIF5MAPO2RWSKMSI
X-Message-ID-Hash: IR7BU2RJDR7PZA27VIF5MAPO2RWSKMSI
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg
 @gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IR7BU2RJDR7PZA27VIF5MAPO2RWSKMSI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1392707615970413562=="


--===============1392707615970413562==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wmmpztlpkqqsn5hy"
Content-Disposition: inline


--wmmpztlpkqqsn5hy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 28, 2024 at 01:42:27PM GMT, Christian K=F6nig wrote:
> Am 27.06.24 um 16:40 schrieb mripard@kernel.org:
> > [SNIP]
> > > > > > > > Why can't you get this information from userspace?
> > > > > > Same reason amd and i915/xe also pass this around internally in=
 the
> > > > > kernel, it's just that for those gpus the render and kms node are=
 the
> > > > > same
> > > > > driver so this is easy.
> > > > >=20
> > > The reason I ask is that encryption here looks just like another para=
meter
> > > for the buffer, e.g. like format, stride, tilling etc..
> > >=20
> > > So instead of this during buffer import:
> > >=20
> > > mtk_gem->secure =3D (!strncmp(attach->dmabuf->exp_name, "restricted",=
 10));
> > > mtk_gem->dma_addr =3D sg_dma_address(sg->sgl);
> > > mtk_gem->size =3D attach->dmabuf->size;
> > > mtk_gem->sg =3D sg;
> > >=20
> > > You can trivially say during use hey this buffer is encrypted.
> > >=20
> > > At least that's my 10 mile high view, maybe I'm missing some extensiv=
e key
> > > exchange or something like that.
> > That doesn't work in all cases, unfortunately.
> >=20
> > If you're doing secure video playback, the firmware is typically in
> > charge of the frame decryption/decoding, and you'd get dma-buf back that
> > aren't accessible by the CPU (or at least, not at the execution level
> > Linux runs with).
>=20
> Yeah, that's perfectly fine. At least the AMD encryption solution
> works exactly like that as well.

> > So nobody can map that buffer, and the firmware driver is the one who
> > knows that this buffer cannot be accessed by anyone.
>=20
> On most hw I know you can actually map that buffer, it's just that the
> CPU sees only garbage in it because you don't have the necessary
> decryption keys around.

So you can always map and access the buffer, but only if you're in the
right "context" the content would be correct?

I think that part is pretty different than what ARM SoCs are doing,
where they would typically prevent any CPU access and fault on access.

> > Putting this on the userspace to know would be pretty weird, and
> > wouldn't solve the case where the kernel would try to map it.
>=20
> But that's exactly how all other implementations work as far as I know. I
> mean what do you do if the kernel maps the encrypted buffer?
>=20
> On AMD we also block userspace and kernel CPU accesses, but that is only
> done to make it easier to find bugs not for correctness.
>=20
> And userspace absolutely needs to be aware that a buffer is encrypted, ca=
use
> otherwise it could potentially try to access it with the CPU.

I absolutely agree. I guess our discussion is whether it's something
that should be implicit and understood by applications, or if it should
be explicit and discoverable.

Maxime

--wmmpztlpkqqsn5hy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZn69RgAKCRDj7w1vZxhR
xW5vAQD0vblFH/q1MbM1OY/GsWrJEN+h1Zy8F/ROqZxXJoSP4wEA7MhRTaakqRAd
6+tOX4+3tzAEZ0WOa+EHzLr+lzLYvQ0=
=ivoa
-----END PGP SIGNATURE-----

--wmmpztlpkqqsn5hy--

--===============1392707615970413562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1392707615970413562==--
