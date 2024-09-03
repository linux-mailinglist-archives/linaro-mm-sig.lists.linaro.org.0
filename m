Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9383B96A521
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Sep 2024 19:14:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2F3D40C37
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Sep 2024 17:14:49 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id F39373F3C2
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Sep 2024 17:14:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GuRAngMw;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4CF73A429C2;
	Tue,  3 Sep 2024 17:14:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 238D9C4CEC4;
	Tue,  3 Sep 2024 17:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725383686;
	bh=qW0RktGoVkbp3dbELJ0XnlGsWcBLW434fwCOzn74Vkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GuRAngMw4FtK7TyflROsYBV1lYCTKtUT1bir8ZZY8wNReUFtnfddZvBvkFwjVTRym
	 b0Ao6qM8UI9rNBWicO+BMdEQMpNhOj1Rvbvou5lenbKL5r7AYzNMtp66G4GV83QiO4
	 ySeux05NNkyQIkpAOs/iEeofWo4KInG6x3Kb53MbNhZYux9jHVNuAzD9w56B3eHRb1
	 1wMjoqQy7sVJedE2hizsg2pd5hE7tb8i9AZ/dzRaIFxBNpWbiTBRKHnvhdoNgvgS8q
	 +5FSuI3B0GX3tCbf6hjjFEbar8JPcn2SRQOGe3JJw7ivrMWZk+JHr9Gz0KhHSqDJcH
	 b1fj3m/Ktu8gg==
Date: Tue, 3 Sep 2024 18:14:38 +0100
From: Mark Brown <broonie@kernel.org>
To: amergnat@baylibre.com
Message-ID: <c386c74c-9008-48ea-ad79-524eb85c370b@sirena.org.uk>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <20240226-audio-i350-v7-12-6518d953a141@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v7-12-6518d953a141@baylibre.com>
X-Cookie: Please take note:
X-Rspamd-Action: no action
X-Spamd-Bar: ----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F39373F3C2
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_IN_DNSWL_FAIL(0.00)[100.75.92.58:server fail];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	DNSWL_BLOCKED(0.00)[147.75.193.91:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: J4E3AIJ2LSICFCEHKVP7TOHMKQ3JVU24
X-Message-ID-Hash: J4E3AIJ2LSICFCEHKVP7TOHMKQ3JVU24
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 12/16] ASoC: codecs: add MT6357 support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J4E3AIJ2LSICFCEHKVP7TOHMKQ3JVU24/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2609050465251771954=="


--===============2609050465251771954==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OMC7w3ub4Px9anag"
Content-Disposition: inline


--OMC7w3ub4Px9anag
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 22, 2024 at 08:53:41AM +0200, amergnat@baylibre.com wrote:
> From: Nicolas Belin <nbelin@baylibre.com>
>=20
> Add the support of MT6357 PMIC audio codec.

This breaks the build:

/build/stage/linux/sound/soc/codecs/mt6357.c: In function =E2=80=98mt6357_p=
latform_driver_probe=E2=80=99:
/build/stage/linux/sound/soc/codecs/mt6357.c:1824:55: error: too many argum=
ents for format [-Werror=3Dformat-extra-args]
 1824 |                 return dev_err_probe(&pdev->dev, ret, "Failed to pa=
rse dts\n", __func__);
      |                                                       ^~~~~~~~~~~~~=
~~~~~~~~~~
cc1: all warnings being treated as errors

--OMC7w3ub4Px9anag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbXQ/0ACgkQJNaLcl1U
h9CpOQf/TZgfm5Me95NAaeAf3HC8+QtPbX8C2nII9zKTnbEfLCDi/g1gWoJoK6ge
FBcp4NuLABoPKK/c0mXC0iSzZ8mjHoHX08LBYnh3Q+BZFvOy+6hXTs/cr6/RMtDR
OQ7lNNGHEhH5YZvCMPrt+3p2BnWcLGvbreX+xIa1PfT91BvUGpEhxPMkPe/UQKkk
+sGgJdVgQRZgjtoaqZXWBsVYD2fUK6CJwb4w14Gm+BwFYwvrIj7Tq8FpnDdmUawg
SYP7QBsvrhWdYaAOAfRi0cpusU8wgwSjvUOu2md93uMVLke+S0T+8dkw/tkPnJcS
XvtVy+qXZ/rNyGhr44XT3XZmwXdOTw==
=ZHfg
-----END PGP SIGNATURE-----

--OMC7w3ub4Px9anag--

--===============2609050465251771954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2609050465251771954==--
