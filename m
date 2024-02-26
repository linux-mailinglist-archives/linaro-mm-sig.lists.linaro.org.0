Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4809867B30
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 17:09:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDBD34121D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 16:09:45 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 678AB3EFF3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Feb 2024 16:09:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gFKSjVwP;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CC160CE0018;
	Mon, 26 Feb 2024 16:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3858C433F1;
	Mon, 26 Feb 2024 16:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708963774;
	bh=544qUMhqgYQOHGl46eHK6g/2ihFgsZn/LHzZzuoNf14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gFKSjVwP60i6oW9D7LFMScKauvLLEEnmQASp+Uth6mTofKuSpkIQq72+2SDSFXZ6R
	 Lq1ZT4yI+OaSa41rwTMpeOj5sbsruVuvaxytpdeoM3mWQ6iV+7K1OeNGrhBLoCz/2i
	 dTrZH7dG03AaoXC267IIp6BIqJ2w1vurx7gjm8QLgpfD5U7WkqMKQYhBBbyRT9fpOc
	 HDalcrYaW3e2HphJwpjaqrUVi3BGrjIH2eQGKh6nHJGgmqSAQnXBCyaFcFggWxVqn5
	 vJqdYB/klAj/39MMDPZHvGtUhlGcsH9DLE4+bQbCDJWVo2dydZozgQ9SPNQ+YZwRHv
	 7TuEZXZlVRG3A==
Date: Mon, 26 Feb 2024 16:09:25 +0000
From: Mark Brown <broonie@kernel.org>
To: amergnat@baylibre.com
Message-ID: <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
X-Cookie: Walk softly and carry a BFG-9000.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 678AB3EFF3
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
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
Message-ID-Hash: JYPF6H27Z2WUMUE33KSISAHEDSMGILGJ
X-Message-ID-Hash: JYPF6H27Z2WUMUE33KSISAHEDSMGILGJ
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JYPF6H27Z2WUMUE33KSISAHEDSMGILGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4537942046676590553=="


--===============4537942046676590553==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CwpsPPtJ8s7wyugW"
Content-Disposition: inline


--CwpsPPtJ8s7wyugW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 26, 2024 at 03:01:50PM +0100, amergnat@baylibre.com wrote:

> index 000000000000..13e95c227114
> --- /dev/null
> +++ b/sound/soc/codecs/mt6357.c
> @@ -0,0 +1,1805 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * MT6357 ALSA SoC audio codec driver
> + *

Please use a C++ comment for the whole comment to make it clearer that
this is intentional.

> +static void set_playback_gpio(struct mt6357_priv *priv, bool enable)
> +{
> +	if (enable) {
> +		/* set gpio mosi mode */
> +		regmap_write(priv->regmap, MT6357_GPIO_MODE2_CLR, GPIO_MODE2_CLEAR_ALL);
> +		regmap_write(priv->regmap, MT6357_GPIO_MODE2_SET, GPIO8_MODE_SET_AUD_CLK_MOSI |
> +								  GPIO9_MODE_SET_AUD_DAT_MOSI0 |
> +								  GPIO10_MODE_SET_AUD_DAT_MOSI1 |
> +								  GPIO11_MODE_SET_AUD_SYNC_MOSI);

This would be a lot more legible if you worked out the values to set and
then had a single set of writes, currently the indentation makes it very
hard to read.  Similarly for other similar functions.

> +static int mt6357_put_volsw(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(component);
> +	struct soc_mixer_control *mc = (struct soc_mixer_control *)kcontrol->private_value;
> +	unsigned int reg;
> +	int ret;
> +
> +	ret = snd_soc_put_volsw(kcontrol, ucontrol);
> +	if (ret < 0)
> +		return ret;
> +
> +	switch (mc->reg) {
> +	case MT6357_ZCD_CON2:
> +		regmap_read(priv->regmap, MT6357_ZCD_CON2, &reg);
> +		priv->ana_gain[ANALOG_VOLUME_HPOUTL] =
> +			(reg & AUD_HPL_GAIN_MASK) >> AUD_HPL_GAIN_SFT;
> +		priv->ana_gain[ANALOG_VOLUME_HPOUTR] =
> +			(reg & AUD_HPR_GAIN_MASK) >> AUD_HPR_GAIN_SFT;
> +		break;

It would probably be less code and would definitely be clearer and
simpler to just read the values when we need them rather than constatly
keeping a cache separate to the register cache.

> +	/* ul channel swap */
> +	SOC_SINGLE("UL LR Swap", MT6357_AFE_UL_DL_CON0, AFE_UL_LR_SWAP_SFT, 1, 0),

On/off controls should end in Switch.

> +static const char * const hslo_mux_map[] = {
> +	"Open", "DACR", "Playback", "Test mode"
> +};
> +
> +static int hslo_mux_map_value[] = {
> +	0x0, 0x1, 0x2, 0x3,
> +};

Why not just use a normal mux here, there's no missing values or
reordering?  Similarly for other muxes.

> +static unsigned int mt6357_read(struct snd_soc_component *codec, unsigned int reg)
> +{
> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
> +	unsigned int val;
> +
> +	pr_debug("%s() reg = 0x%x", __func__, reg);
> +	regmap_read(priv->regmap, reg, &val);
> +	return val;
> +}

Remove these, there are vastly more logging facilities as standard in
the regmap core.

> +/* Reg bit defines */
> +/* MT6357_GPIO_DIR0 */
> +#define GPIO8_DIR_MASK				BIT(8)
> +#define GPIO8_DIR_INPUT				0

Please namespace your defines, these look very generic.

--CwpsPPtJ8s7wyugW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXct7QACgkQJNaLcl1U
h9Agkgf7BBrglcg7jMvSrH2s1xIYkCIuoub5OdCpv9Ph6xdo47W9uy2hoGlAK6nD
BS+w4kyaZmwgueREI0Rf/l6hYRPKJtWv9emek2zz9z5r4R7xzhdbzj2R4MVJkcJH
O9QTkYk0PoAJkgVJnH6XNqFGriEYmNxkuRdF4l3Mdbn6KiHlf4XwaqWx29KLmXci
bxoCisLzrR5rPaZAKPMuf8lPvMAQr19dvvk1RlMkyZ2Di1mpakxQIn+QZY7ja2GI
dJs9hbr+UAJTCKhf0uhtslARm+WZfNCHtGbr8YUjZnzQ+z6vAcNdTTfgDBYINKSC
AWTgPQtQPSt9Ti03CsQj0ka+/ujatQ==
=uDQI
-----END PGP SIGNATURE-----

--CwpsPPtJ8s7wyugW--

--===============4537942046676590553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4537942046676590553==--
