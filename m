Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 978DA725005
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 00:38:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 484DE3F94E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jun 2023 22:38:07 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 7E1B93F628
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jun 2023 22:38:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="ah/xpfYX";
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 067C6638AE;
	Tue,  6 Jun 2023 22:38:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AFA2C433EF;
	Tue,  6 Jun 2023 22:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686091081;
	bh=+d7JeMeUUdZO2aVYQ8oGUF7pb9l8qtsCjpkX1+tKZ0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ah/xpfYXpLSl/KXOtkf2COQ1AifCQwoMbz5GdNd9ACRL9pAXI9y5pmZwAaJiuFZTy
	 onaUd+OM2JgRXTnepEsVZZZyWcLJkgZfFeKsIsfdH7ovQw9K9sgVTVYjMcqM7D6nA9
	 hp6MJNabTZ5pUEYGZD3ZDKgehKx1/cBeVeWGsAexmiW6Du23w+QR4x5A55TodM83oa
	 91QKw/L/4nPKp2Cz68Z8OsFWACnxb0UsfN1nQG3MO4QLalWNIWmH7MH7HksH3/FyDv
	 mzpv63FSaBnTJ9AtPkRKj+sxtFNOsBR6Y5Sz/icdY9vgSCXdvfBFqUv4w9/M10dyUA
	 jCnwRE4nixJyA==
Date: Tue, 6 Jun 2023 23:37:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Message-ID: <20230606-geometry-blurb-1f0f07d4bf6a@spud>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602-uncommon-rejoicing-e73c0c475f9f@spud>
 <TY3P286MB26116576E3E502CAE53834599852A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <1991848.PYKUYFuaPT@diego>
MIME-Version: 1.0
In-Reply-To: <1991848.PYKUYFuaPT@diego>
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[starfivetech.com,outlook.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,edgeble.ai,hotmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E1B93F628
X-Spamd-Bar: ----
Message-ID-Hash: VVVOUR4UAK7ATXSHJYRVS24WG6XM2UAP
X-Message-ID-Hash: VVVOUR4UAK7ATXSHJYRVS24WG6XM2UAP
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Keith Zhao <keith.zhao@starfivetech.com>, Shengyu Qu <wiagn233@outlook.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>
 , Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dt-bindings: display: Add yamls for JH7110 display subsystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VVVOUR4UAK7ATXSHJYRVS24WG6XM2UAP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1186106360239323761=="


--===============1186106360239323761==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1lwN/EJcI4S+S54L"
Content-Disposition: inline


--1lwN/EJcI4S+S54L
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 07, 2023 at 12:22:33AM +0200, Heiko St=FCbner wrote:
> Am Dienstag, 6. Juni 2023, 20:41:17 CEST schrieb Shengyu Qu:
> > > On Fri, Jun 02, 2023 at 03:40:35PM +0800, Keith Zhao wrote:
> > >> Add bindings for JH7110 display subsystem which
> > >> has a display controller verisilicon dc8200
> > >> and an HDMI interface.

> > >> +description:
> > >> +  The StarFive SoC uses the HDMI signal transmiter based on innosil=
icon IP
> > > Is innosilicon the same thing as verisilicon? Also
> > > s/transmiter/transmitter/, both here and in the title.
> >=20
> > I think that is not the same, I remember Rockchip has used a HDMI=20
> > transmitter from
> >=20
> > Innosilicon, and there is a existing driver for that in mainline.
>=20
> Yep, I think Innosilicon is the company you turn to when you want to save
> a bit of money ;-) . In the bigger SoCs Rockchip most of the time uses
> Designware hdmi blocks and looking at the history only the rk3036 ever
> used an Innosilicon block.
>=20
> Looking at the history, 2016 really was a long time ago :-D.
>=20
> > So Keith, if that's true, I think it is better to seperate the HDMI=20
> > stuff and reuse existing driver.
>=20
> I'm not so sure about that - at least from a cursory glance :-) .
>=20
> The registers do look slightly different and I don't know how much
> the IP changed between the rk3036-version and the jh7110 version.
>=20
> At the very least, I know my rk3036 board isn't booting right now, so
> I can't really provide help for generalizing the rockchip-driver.
>=20
> At the very least both the binding and driver could drop the "starfive-hd=
mi"
> and actually use the Innosilicon in the naming somewhere, so that it's
> clear for future developers :-)

Seeing "based on" always makes me a little bit nervous to be honest when
it comes to using a compatible from the IP. Is it the IP? What version
is it? etc. Perhaps "starfive,jh7110-hdmi" & falling back to some sort
of "innosilicon,hdmi" would be more future/IP-silliness proof.
Driver can always be generic & bind against "innosilicon,hdmi" until
that becomes impossible.

Cheers,
Conor.

--1lwN/EJcI4S+S54L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZH+1QQAKCRB4tDGHoIJi
0ihwAQC+3gfFJAPFBOT76QYpqrSJuQHRjE1iNJt0+04zAqcRDgD+KopK8i99wbS9
4s+s9CpPS+b/RBAa5Zq6Zq0Bynk3jgc=
=XnKq
-----END PGP SIGNATURE-----

--1lwN/EJcI4S+S54L--

--===============1186106360239323761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1186106360239323761==--
