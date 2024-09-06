Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E2F96FB32
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 20:27:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C4BF40D56
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 18:27:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id F04813F485
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 18:27:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="P/I7XYPm";
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E038E5C5AFD;
	Fri,  6 Sep 2024 18:27:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ED90C4CEC7;
	Fri,  6 Sep 2024 18:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725647224;
	bh=Z24H6l7+L7v9bNFDB/ZvwU/G0rjimLtpHDYOhlthb1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P/I7XYPmrMkTy8lg9iD6wdrIeZ/OVa1oVD/ogiXpxtfpe2vAq6qGn7V7XBGyXt78b
	 pnWUBjsiLDdACBES1Sa/HY4uP/GcqHNeY0mR41nWiK+DPc+KOy+CzfuXznZzb+LWlG
	 uj4YwTKA+pR9LWu9BQKgN+Ri0KjTi4FeyXDC5Ry7ru6lXcUAPv2f6NkY5U1PIy5kUt
	 rq4I12TIpRm9vMf4g8Bj07TFUKT6eru1vdiAx/E87hcAkIw7KwzVXsJuR8tePAMWbK
	 Vaxt9SWfPovUsGeYkSj5o1x+5N6c5Y7kWOwHv6BZaY+5ZCNQ2roeDdY6DhcA0arm7s
	 7L5zrdcLcoVUQ==
Date: Fri, 6 Sep 2024 19:27:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ZttJdexQFOq2Q9iQ@finisterre.sirena.org.uk>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
 <20240906180348.GA1239602@thelio-3990X>
MIME-Version: 1.0
In-Reply-To: <20240906180348.GA1239602@thelio-3990X>
X-Cookie: Your love life will be... interesting.
X-Rspamd-Action: no action
X-Spamd-Bar: --------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F04813F485
X-Spamd-Result: default: False [-8.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
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
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: XEBGRN7HPBXYPMQPE2BGM5VW4O7UO36G
X-Message-ID-Hash: XEBGRN7HPBXYPMQPE2BGM5VW4O7UO36G
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alexandre Mergnat <amergnat@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@l
 inaro.org>, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XEBGRN7HPBXYPMQPE2BGM5VW4O7UO36G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2681511183865319963=="


--===============2681511183865319963==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RwEXQMD7TlaLYYaq"
Content-Disposition: inline


--RwEXQMD7TlaLYYaq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 06, 2024 at 11:03:48AM -0700, Nathan Chancellor wrote:

> I am seeing several warnings/errors from both GCC and Clang with
> ARCH=arm64 allmodconfig after this series appeared in next-20240906.
> As far as I can tell, they appear to agree. I wondered how this was not
> caught during the series development but perhaps it was written against
> a development tree that did not have Arnd's extrawarn series from 6.10
> in it yet? I was going to work on a series but I was not sure about the
> best way to address the overflow errors, hence just the report.

Are these just warnings introduced by recent versions of the toolchains?
These commits passed an x86 allmodconfig with GCC 12 at each step (I did
catch one warning there with another patch in the series that didn't get
applied) and 0day didn't say anything at any point.

> Clang 19:

That's relatively modern, though some of the warnings don't look
particularly new and exciting.

>   sound/soc/mediatek/mt8365/mt8365-dai-adda.c:93:8: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551614 to 4294967294 [-Werror,-Wconstant-conversion]
>      91 |                 regmap_update_bits(afe->regmap, AFE_ADDA_UL_DL_CON0,
>         |                 ~~~~~~~~~~~~~~~~~~
>      92 |                                    AFE_ADDA_UL_DL_ADDA_AFE_ON,
>      93 |                                    ~AFE_ADDA_UL_DL_ADDA_AFE_ON);
>         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>   1 error generated.

That's a bit surprising, regmap_update_bits() takes an unsigned long?  I
suspect the constants need to be defined as unsigned.

--RwEXQMD7TlaLYYaq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbbSXIACgkQJNaLcl1U
h9DBuQf/SMng3m+4sXP7DvdmWbfXVaamODI/3rczhvAqTkDFclaL1jBsj5p3sj2y
xX6uR8ezbk3frph4AS2355DNa/q+5C/U/zGtas+sjouiNi/UjcHjd1c7RJUK/y+g
shmJSYMNaNvM0/ZNX5yNMvR+G0UWZApUx687YkRyqA4luRVf1KpwDac3Bkw26n9C
L7D5WqLGow4FYbfOirWq3PHcEJliZXxmSoV3A7JBtpUL5QlzwO5YvoI8Pyr1WSJj
rg7L1xqXCMj+Y8zAl2J7Sj6yw7E8cgo5kDfH9JYhabdRiwy5p/ydxTCQLp/BlQNu
Ly/Er+XOlK8Cx0Y7ma8DNbKdGgr9Vg==
=SBAj
-----END PGP SIGNATURE-----

--RwEXQMD7TlaLYYaq--

--===============2681511183865319963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2681511183865319963==--
