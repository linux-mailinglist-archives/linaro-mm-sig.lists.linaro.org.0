Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 908B59125C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 14:44:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80C7D44113
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 12:44:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id EC4153F68F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 12:44:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=l8IKh8rP;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8D73162612;
	Fri, 21 Jun 2024 12:44:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4569EC2BBFC;
	Fri, 21 Jun 2024 12:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718973868;
	bh=bwqf13fJbLJEoJ55Fq8cVIZa/qvXiPcZ4TMFf7szj6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l8IKh8rPJ6LhZPucaRVWP/8fVx7Xxn6rv2vU7HIlfwyi9Q96L78zxrZ3zhmjtudB0
	 J3tju9CVfyLjhlAOJWMauyHtWsdLjK3txtaalshO/dngDUizd1XzDP6LMIUbZBXavB
	 +8KE0WLENQ6jEdfgeJYwijdzrlgFvpOTR2HFnkBrAc0rdcKAXPoTkZLV4bV/cTusbH
	 OBtLDjkQPYR3wotR+Wn7W5zr040SNYXGr1ZQRN8QKzEvEtgTV8xggmtD7my/kpv1qT
	 wLn6blkh/cY091zWPbqahLn59Luh3YNHrKn/lEiz3fKB1cxWABQ/Sb62GAvK/7RrdJ
	 tIK9yeZk6HlDg==
Date: Fri, 21 Jun 2024 13:44:20 +0100
From: Mark Brown <broonie@kernel.org>
To: amergnat@baylibre.com
Message-ID: <1ca27c79-a83a-42a7-9e9b-766da0064c73@sirena.org.uk>
References: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
 <20240226-audio-i350-v6-12-f754ec1a7634@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v6-12-f754ec1a7634@baylibre.com>
X-Cookie: Androphobia:
X-Rspamd-Queue-Id: EC4153F68F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3QN5XULWT3RGGMPZLAVFKNFKCLQHHNLL
X-Message-ID-Hash: 3QN5XULWT3RGGMPZLAVFKNFKCLQHHNLL
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 12/16] ASoC: codecs: add MT6357 support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3QN5XULWT3RGGMPZLAVFKNFKCLQHHNLL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1940821538882927327=="


--===============1940821538882927327==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y31DJCgxhlUXFcNQ"
Content-Disposition: inline


--Y31DJCgxhlUXFcNQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 19, 2024 at 04:46:48PM +0200, amergnat@baylibre.com wrote:

> +	/* gain default values*/
> +	regmap_update_bits(priv->regmap, MT6357_AUDENC_ANA_CON0, MT6357_AUDPREAMPLGAIN_MASK,
> +			   UL_GAIN_0DB << MT6357_AUDPREAMPLGAIN_SFT);
> +	regmap_update_bits(priv->regmap, MT6357_AUDENC_ANA_CON1, MT6357_AUDPREAMPRGAIN_MASK,
> +			   UL_GAIN_0DB << MT6357_AUDPREAMPRGAIN_SFT);
> +
> +	regmap_update_bits(priv->regmap, MT6357_ZCD_CON1,
> +			   MT6357_AUD_LOL_GAIN_MASK |
> +			   MT6357_AUD_LOR_GAIN_MASK,
> +			   DL_GAIN_0DB << MT6357_AUD_LOL_GAIN_SFT |
> +			   DL_GAIN_0DB << MT6357_AUD_LOR_GAIN_SFT);
> +
> +	regmap_update_bits(priv->regmap, MT6357_ZCD_CON2,
> +			   MT6357_AUD_HPL_GAIN_MASK |
> +			   MT6357_AUD_HPR_GAIN_MASK,
> +			   DL_GAIN_0DB << MT6357_AUD_HPL_GAIN_SFT |
> +			   DL_GAIN_0DB << MT6357_AUD_HPR_GAIN_SFT);
> +
> +	regmap_update_bits(priv->regmap, MT6357_ZCD_CON3,
> +			   MT6357_AUD_HS_GAIN_MASK, DL_GAIN_0DB);

We generally leave everything at chip defaults, why is this different?

> +static int mt6357_codec_probe(struct snd_soc_component *codec)
> +{
> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
> +
> +	mt6357_codec_init(priv);
> +	return 0;
> +}

Why not just inline mt6357_codec_init() into the one user?

> +static unsigned int mt6357_read(struct snd_soc_component *codec, unsigned int reg)
> +{
> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
> +	unsigned int val;
> +
> +	regmap_read(priv->regmap, reg, &val);
> +	return val;
> +}
> +
> +static int mt6357_write(struct snd_soc_component *codec, unsigned int reg, unsigned int value)
> +{
> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
> +
> +	return regmap_update_bits(priv->regmap, reg, 0xffff, value);
> +}

Why open code these, the core has standard adaptors for regmap?

> +static const u32 micbias_values[MT6357_MICBIAS_ARRAY_SIZE] = {
> +	1700000, 1800000, 1900000, 2000000,
> +	2100000, 2500000, 2600000, 2700000
> +};

Just use ARRAY_SIZE() for the size then the number can't be out of sync.


--Y31DJCgxhlUXFcNQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZ1daMACgkQJNaLcl1U
h9DFewf+M/CBa2qN5RnVF8Zc5QWTvxC4SKpFwRma8NGXYRkdIuRXOhTpxRG85BYY
w0ndJAb81OyrS1X3S8EpFu0cTQdBB7po6aGY3/n1tnY0JIkQ820QI+XDGlduderG
aPJ1LFil592z/y4CEYhDWzOsFWLLyJKyRI490d6BuyRNdljzSLS1QmJ2HrpnPI/S
D63ThavR4gijP3ePCZ6Bajond76rmR5CDUo3/LtUBAliMvLcIpwdKqcEjjdpMm7G
BuKS/CUvpRgJ5D+hyi9xFWRSBajwhFVLHJ1R/jtOLU/DQiYH/x78dMej8JApEp6X
Gohk7DuuhbfZflRiEj17qKTMYvMWvA==
=P5mN
-----END PGP SIGNATURE-----

--Y31DJCgxhlUXFcNQ--

--===============1940821538882927327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1940821538882927327==--
