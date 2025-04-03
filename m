Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FB9A79C88
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 09:04:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A63746112
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 07:04:45 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 25F514610D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Apr 2025 07:04:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DULEKQOb;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0063CA44271;
	Thu,  3 Apr 2025 06:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3B13C4CEE3;
	Thu,  3 Apr 2025 07:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743663871;
	bh=axQRKKtAZkQVbK9Zn3xtCbGhWKRBGumuitQB4lzISSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DULEKQObjDOFleA0YwEKsQL8DNbEOgLvR49c2+gBEbLdWdpMCC1f9Dox3JsG2cD4+
	 CV3eOs9orM6i4QNYHz12Zecw3Z9+h4Dgzm80uRCIBMcWoIHOlRE+VzwRqIuXI0rm+c
	 VCi8vphgVRQzfnRBN3j390MUQJaMVBuKRUZjhXQgoyi9KBeGz3t5ovMFMm4SOty2Ic
	 3j9rE379MF+9Asvbzy/W/w/7ubfZeTleHOGhUzHqVWdguzHRwCdRGfab9unGqXDH9P
	 p06I3hpccJ1Qn1ACFCrYaLOU1N5guo6q8NKKDB+qdkH+gmFgtdPhQgsvrhKsSPpST1
	 h4Ly07jbRBj4g==
Date: Thu, 3 Apr 2025 09:04:28 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250403-elated-cinnamon-tortoise-7b6cb8@houat>
References: <20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@kernel.org>
 <20250401-dma-buf-ecc-heap-v2-1-043fd006a1af@kernel.org>
 <e268d75d-c75a-499e-872d-09f91defed6b@amd.com>
MIME-Version: 1.0
In-Reply-To: <e268d75d-c75a-499e-872d-09f91defed6b@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 25F514610D
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: QTJO6SHYQGWLSID6S62MT6ZJDYH5LYT7
X-Message-ID-Hash: QTJO6SHYQGWLSID6S62MT6ZJDYH5LYT7
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] dma-buf: heaps: system: Remove global variable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTJO6SHYQGWLSID6S62MT6ZJDYH5LYT7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6768683082734434519=="


--===============6768683082734434519==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gld5fz6ykqjpt6sc"
Content-Disposition: inline


--gld5fz6ykqjpt6sc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] dma-buf: heaps: system: Remove global variable
MIME-Version: 1.0

On Tue, Apr 01, 2025 at 05:28:43PM +0200, Christian K=F6nig wrote:
>=20
>=20
> Am 01.04.25 um 17:12 schrieb Maxime Ripard:
> > The system heap has been using its struct dma_heap pointer but wasn't
> > using it anywhere.
> >
> > Since we'll need additional parameters to attach to that heap type,
> > let's create a private structure and set it as the dma_heap drvdata,
> > removing the global variable in the process.
> >
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  drivers/dma-buf/heaps/system_heap.c | 17 ++++++++++++-----
> >  1 file changed, 12 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heap=
s/system_heap.c
> > index 26d5dc89ea1663a0d078e3a5723ca3d8d12b935f..adf422eaa33a52794f952d9=
d4260b8743d37f421 100644
> > --- a/drivers/dma-buf/heaps/system_heap.c
> > +++ b/drivers/dma-buf/heaps/system_heap.c
> > @@ -19,11 +19,13 @@
> >  #include <linux/module.h>
> >  #include <linux/scatterlist.h>
> >  #include <linux/slab.h>
> >  #include <linux/vmalloc.h>
> > =20
> > -static struct dma_heap *sys_heap;
> > +struct system_heap {
> > +	struct dma_heap *heap;
> > +};
> > =20
> >  struct system_heap_buffer {
> >  	struct dma_heap *heap;
> >  	struct list_head attachments;
> >  	struct mutex lock;
> > @@ -422,17 +424,22 @@ static const struct dma_heap_ops system_heap_ops =
=3D {
> >  };
> > =20
> >  static int __init system_heap_create(void)
> >  {
> >  	struct dma_heap_export_info exp_info;
> > +	struct system_heap *sys_heap;
> > +
> > +	sys_heap =3D kzalloc(sizeof(*sys_heap), GFP_KERNEL);
> > +	if (!sys_heap)
> > +		return -ENOMEM;
> > =20
> >  	exp_info.name =3D "system";
> >  	exp_info.ops =3D &system_heap_ops;
> > -	exp_info.priv =3D NULL;
> > +	exp_info.priv =3D sys_heap;
>=20
> Why do you even need this?

Urgh, sorry. I'm not even sure how I ended up with that patch, but
you're correct. I'll send a much simpler version.

Maxime

--gld5fz6ykqjpt6sc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ+4y+wAKCRDj7w1vZxhR
xYtuAP9h8qpbfSL8QdI6gkSoBqCm6iJd/D34aA/O+lgHIZmeZAEA8kN4XsbG3As+
6Hk8D0ZvINLOC3KUYPipNQqNfDSiewQ=
=QlbU
-----END PGP SIGNATURE-----

--gld5fz6ykqjpt6sc--

--===============6768683082734434519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6768683082734434519==--
