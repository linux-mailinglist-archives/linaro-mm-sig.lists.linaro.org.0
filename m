Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7E99128AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 16:58:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE9EF410E4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 14:58:38 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 34FAA3EF2D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 14:58:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dLNZ5w7O;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4135626AD;
	Fri, 21 Jun 2024 14:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE66C2BBFC;
	Fri, 21 Jun 2024 14:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718981915;
	bh=iTy+ar2v/aPDrGFgYNM/EKjztldR0LbzdgwRrLgUwaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dLNZ5w7OhfaSkX+v1brG7veriBApUjUqkk7BE8esWrTGvoYtGimxMKK3Gl0PPc54O
	 xknBq1zsamjVsrO3GuexV7RVQMc7uVA3vArhI2tkHqL5ya35XV3N272wNYvUFhb8RF
	 bf9IcY23muCRsn/KvT95JTyEk9IpAxIuPZDGb1IDxGQZ22QnIKpWxNgXETaoatEjMb
	 qGA8hBa+roOxP8p89YBJZAiZpoPt26NWrfOLECjww3vw0ggAsly7e4aGb92+iDk8ko
	 B4qe57iWIrTC7lFt1FsMQ3nOueuVOatM7CNelfL4Aohry88xYCRBpxefZ5A/YK1bWK
	 odNViv395bCYg==
Date: Fri, 21 Jun 2024 15:58:27 +0100
From: Mark Brown <broonie@kernel.org>
To: amergnat@baylibre.com
Message-ID: <e6f1e8b6-f542-4cc7-828d-69810209e9b3@sirena.org.uk>
References: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
 <20240226-audio-i350-v6-12-f754ec1a7634@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v6-12-f754ec1a7634@baylibre.com>
X-Cookie: Your supervisor is thinking about you.
X-Rspamd-Queue-Id: 34FAA3EF2D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TCMHAUJ66MEZF26L2INS5JCZ6UJW5ESW
X-Message-ID-Hash: TCMHAUJ66MEZF26L2INS5JCZ6UJW5ESW
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 12/16] ASoC: codecs: add MT6357 support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCMHAUJ66MEZF26L2INS5JCZ6UJW5ESW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0257320421003801703=="


--===============0257320421003801703==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jw2Y2pYWLtcvlWMC"
Content-Disposition: inline


--jw2Y2pYWLtcvlWMC
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 04:46:48PM +0200, amergnat@baylibre.com wrote:
> From: Nicolas Belin <nbelin@baylibre.com>
>=20
> Add the support of MT6357 PMIC audio codec.

This breaks an x86 allmodconfig build:

/build/stage/linux/sound/soc/codecs/mt6357.c: In function =E2=80=98mt_delay=
_250_event=E2=80=99:
/build/stage/linux/sound/soc/codecs/mt6357.c:993:29: error: unused variable=
 =E2=80=98pri
v=E2=80=99 [-Werror=3Dunused-variable]
  993 |         struct mt6357_priv *priv =3D snd_soc_component_get_drvdata(=
cmpnt);
      |                             ^~~~
/build/stage/linux/sound/soc/codecs/mt6357.c: In function =E2=80=98mt6357_p=
latform_drive
r_probe=E2=80=99:
/build/stage/linux/sound/soc/codecs/mt6357.c:1867:55: error: too many argum=
ents=20
for format [-Werror=3Dformat-extra-args]
 1867 |                 return dev_err_probe(&pdev->dev, ret, "Failed to pa=
rse d
ts\n", __func__);
      |                                                       ^~~~~~~~~~~~~=
~~~~~
~~~~~
cc1: all warnings being treated as errors


--jw2Y2pYWLtcvlWMC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZ1lRIACgkQJNaLcl1U
h9A1bwf/V2Qer6d82i9EFIihaq/lGhQ/qfe9gIru+7gJsGI4DqFQH74lqhneOg79
dbDE9ZxWZMSkRPam0eioJpIWXqp6PInaXpjQ/9S2xHdNwc1c/uUCoChWA98NXlo5
RADmcGSWVwtbKq/nplum3hiKS2+GF5VUC6Rce/pnb22YK8EGSfgsMzdtSRVrcqaW
3Rjoh1zf6wzyWBjQmJ1x+8C0lvVH2IbGzQStK9Khpo+Ojz5prAo6tXZA983ktHF5
m4VZoVblQEiohNk7UTYvsUD511IEo2WS1f9NIHZcQLSzjTbst70usLoGwnA9sjmb
+0XWKkjxGKPzqT7CHhn2IW2qzOam0Q==
=OTn4
-----END PGP SIGNATURE-----

--jw2Y2pYWLtcvlWMC--

--===============0257320421003801703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0257320421003801703==--
