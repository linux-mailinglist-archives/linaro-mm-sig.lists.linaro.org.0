Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D74976D7E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Sep 2024 17:17:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B749D4400C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Sep 2024 15:17:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 366A53F098
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Sep 2024 15:17:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=LAxiGqLY;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1FD6A5C5B51;
	Thu, 12 Sep 2024 15:17:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E35AC4CEC3;
	Thu, 12 Sep 2024 15:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726154249;
	bh=2UwdqZFC9xO/m0eQjrelfthM5Arpc7S3EOd9x/RSR+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LAxiGqLYn+sNKb+kgEcfh7PhpwNdMHrkCSj8xVs3HJf+6+0Ki/yi1Jy511Apeomr7
	 xRqu/opQo83N4OEJAgarhmBFQOYqPcZYNrRguTXxanX8cdMtdp9r8e+ZHUrm2WaYS0
	 ZkjQjZbYOhxSy+P9/CkPQPC9ppzlbX86wdmiQypiLdgca+oUvNLsOedxPmuTXY6XG+
	 9m/tXPEpXrrP6kj2hmhItobsBHtXng/Gk0SgS71eIn10yxrPHLYEZDe+s88Pmu9Ojc
	 vzxJIv0lJOunfh5pCUgNLlW5hKCOUUY/5LuFqLUpO/ZTDhMyEzrT76YPZgLCFlRE7G
	 Qj2f2QPFuvzjA==
Date: Thu, 12 Sep 2024 16:17:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee@kernel.org>
Message-ID: <10c1217b-d8a3-489c-93fc-6de45dcbe47c@sirena.org.uk>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
 <20240912145100.GE24460@google.com>
MIME-Version: 1.0
In-Reply-To: <20240912145100.GE24460@google.com>
X-Cookie: Happiness is the greatest good.
X-Rspamd-Action: no action
X-Spamd-Bar: --------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 366A53F098
X-Spamd-Result: default: False [-8.19 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.59)[98.16%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,baylibre.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: OXEPH4I4Y7KHBX6D4BAAWCIS4OG3KK5F
X-Message-ID-Hash: OXEPH4I4Y7KHBX6D4BAAWCIS4OG3KK5F
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Mergnat <amergnat@baylibre.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <n
 belin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OXEPH4I4Y7KHBX6D4BAAWCIS4OG3KK5F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3408884802539611534=="


--===============3408884802539611534==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y3oLGwx0CbwVg8fa"
Content-Disposition: inline


--Y3oLGwx0CbwVg8fa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 12, 2024 at 03:51:00PM +0100, Lee Jones wrote:
> On Wed, 04 Sep 2024, Mark Brown wrote:

> > [03/16] dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
> >         commit: 761cab667898d86c04867948f1b7aec1090be796

> Did you mean to hoover this up?

It seemed to go along with the series and had a DT review so it looked
like you'd just left it to the DT people to review, there wasn't any
other MFD content in the series.

--Y3oLGwx0CbwVg8fa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbjBgAACgkQJNaLcl1U
h9B5NQf/ZWJ40S0xb5uKIaaPLShhD3p7geYHZwZ9a66tMrFPvLQPcedOcWej18uU
fY+5w+dmP0Ga6zV3m5paFAgei5w8LIJvnnPSmTUshEfxuFuhJ/83qu69Abj+Ewm9
V8j06cS1jSPE+onhQv5NOUTHkDWyL3HGf2uyps5Y0c7Mqd9ABe3AiJK1MSAiWiXN
4PDBhsNjMNMuEVfKRmNzGc2Z4deVPu+xzeXk+KWcccz4vUjUuCLlFnHklaT29sTa
2WON5KGah1lT7hyVYvf4wA+x6MTorlvAczP4W7fm+yd2s3anZO05OB/xFSqniPr7
x6OaFpBbyGm4Wivn5Ikvo3Wbze2Usw==
=cfaI
-----END PGP SIGNATURE-----

--Y3oLGwx0CbwVg8fa--

--===============3408884802539611534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3408884802539611534==--
