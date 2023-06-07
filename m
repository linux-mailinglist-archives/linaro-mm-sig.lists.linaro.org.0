Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4F2725482
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 08:41:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4DA2449EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 06:41:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 04A813F937
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jun 2023 06:41:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bQg+1HP7;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A55A6636E2;
	Wed,  7 Jun 2023 06:41:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90074C433EF;
	Wed,  7 Jun 2023 06:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686120067;
	bh=Px4yR+6OsZ1b/yH6ZdWEW0dyGLZ2w09Hzl1kzNrtJw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bQg+1HP7Qdi4iQUKM9u6T9UtZIm5jIp8wQ9ZmIp5NRyJ86hGU+vePDRhiuSAYNRm6
	 Jqk3k+DVuCc5FGFzNbK5Rn2ivpsN+lXHm6xghGiAaTBw+vXoIb8b+rIQrhXf8LZe1D
	 FzfQShhS4fXXIzN2QaQKrcs2vOf4o+QNrU1ke91Petu2OhppYwnsN47DUoVLk+GuO1
	 YiT05Z7VfeTyJguCpkfDhKUfEdcHdRCHcQ2CZ1BEHDJysLT+AcRemIMpF/WoZkbiEj
	 ITOzCH9XmQGcZJTlesoEmjljCT20DtVddq8SEALOmI5RK4DGy2iRhf7brapBRnVvTY
	 SRomxqX/O+acQ==
Date: Wed, 7 Jun 2023 08:41:04 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Conor Dooley <conor@kernel.org>
Message-ID: <ifgjvonhkzcwrklzch5efguor2x6az4m737dwte4uyow7ar5dr@z4glaxse6dou>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602-uncommon-rejoicing-e73c0c475f9f@spud>
 <TY3P286MB26116576E3E502CAE53834599852A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <1991848.PYKUYFuaPT@diego>
 <20230606-geometry-blurb-1f0f07d4bf6a@spud>
MIME-Version: 1.0
In-Reply-To: <20230606-geometry-blurb-1f0f07d4bf6a@spud>
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[sntech.de,starfivetech.com,outlook.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,edgeble.ai,hotmail.com];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 04A813F937
X-Spamd-Bar: --------
Message-ID-Hash: H7AJ56PJAAEXJIBJMBFTAVFKNNABFINY
X-Message-ID-Hash: H7AJ56PJAAEXJIBJMBFTAVFKNNABFINY
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Keith Zhao <keith.zhao@starfivetech.com>, Shengyu Qu <wiagn233@outlook.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@sta
 rfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dt-bindings: display: Add yamls for JH7110 display subsystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7AJ56PJAAEXJIBJMBFTAVFKNNABFINY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4558407235022921398=="


--===============4558407235022921398==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fpldas4cn62wqe46"
Content-Disposition: inline


--fpldas4cn62wqe46
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 06, 2023 at 11:37:53PM +0100, Conor Dooley wrote:
> On Wed, Jun 07, 2023 at 12:22:33AM +0200, Heiko St=FCbner wrote:
> > Am Dienstag, 6. Juni 2023, 20:41:17 CEST schrieb Shengyu Qu:
> > > > On Fri, Jun 02, 2023 at 03:40:35PM +0800, Keith Zhao wrote:
> > > >> Add bindings for JH7110 display subsystem which
> > > >> has a display controller verisilicon dc8200
> > > >> and an HDMI interface.
>=20
> > > >> +description:
> > > >> +  The StarFive SoC uses the HDMI signal transmiter based on innos=
ilicon IP
> > > > Is innosilicon the same thing as verisilicon? Also
> > > > s/transmiter/transmitter/, both here and in the title.
> > >=20
> > > I think that is not the same, I remember Rockchip has used a HDMI=20
> > > transmitter from
> > >=20
> > > Innosilicon, and there is a existing driver for that in mainline.
> >=20
> > Yep, I think Innosilicon is the company you turn to when you want to sa=
ve
> > a bit of money ;-) . In the bigger SoCs Rockchip most of the time uses
> > Designware hdmi blocks and looking at the history only the rk3036 ever
> > used an Innosilicon block.
> >=20
> > Looking at the history, 2016 really was a long time ago :-D.
> >=20
> > > So Keith, if that's true, I think it is better to seperate the HDMI=
=20
> > > stuff and reuse existing driver.
> >=20
> > I'm not so sure about that - at least from a cursory glance :-) .
> >=20
> > The registers do look slightly different and I don't know how much
> > the IP changed between the rk3036-version and the jh7110 version.
> >=20
> > At the very least, I know my rk3036 board isn't booting right now, so
> > I can't really provide help for generalizing the rockchip-driver.
> >=20
> > At the very least both the binding and driver could drop the "starfive-=
hdmi"
> > and actually use the Innosilicon in the naming somewhere, so that it's
> > clear for future developers :-)
>=20
> Seeing "based on" always makes me a little bit nervous to be honest when
> it comes to using a compatible from the IP. Is it the IP? What version
> is it? etc. Perhaps "starfive,jh7110-hdmi" & falling back to some sort
> of "innosilicon,hdmi" would be more future/IP-silliness proof.
> Driver can always be generic & bind against "innosilicon,hdmi" until
> that becomes impossible.

Given that Neil was saying that there's at least two
generations/revisions/models of an HDMI controller from Innosilicon, I'm
not sure that compatible is enough to reach that goal anyway.

Maxime

--fpldas4cn62wqe46
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZIAmgAAKCRDj7w1vZxhR
xaQ+AQDViFCjrmBh/FOmfkZnsbFEZqUbyPu3G+ff5Kfs9al3LgEA4TGU5Z1tubCB
079K0fi4BmqB2ZgKk65Uxw0vctIlIAE=
=TcBS
-----END PGP SIGNATURE-----

--fpldas4cn62wqe46--

--===============4558407235022921398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4558407235022921398==--
