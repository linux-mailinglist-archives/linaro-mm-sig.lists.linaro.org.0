Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D1E90E796
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 11:57:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2B804491E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 09:57:31 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 1940444C82
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 09:56:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=JF8R5ZHE;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718790972;
	bh=Y7T7l2wiKLsecC0XGOVIJK4YUv24/jXrKqNK1hO4nr4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JF8R5ZHE0cX3H6/04BxiQ7Pdcrk2wx2KDP/Ze3hLJFTAZFbNfQX0Rb1hawmRHhpQL
	 piFvcjTZudgEUrlKkBirxpnPZVMrlJDd2DpPE5bNHIgVpi/StY9nNTVJU6owj+/aw7
	 MQw37Kx3g7jlV+4tu3vSZm/Hbxz4HwcHZGt6rIW4XhoKukdtmsRjSF3/ESylXasWSa
	 r2yojhWkdOP50umZnJDyvcxO12s5ShAgHrEYD4VbcGEsOotA3MjS121lbACc/2CTtb
	 Vy4YE0Pb07+W9lh/6yzdWkmAxwfifU3pYl/B/AFM99ZtgTN7999e2cCvc8jxYhXPnm
	 j7XE8hnzb7TMg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9A91B37821C0;
	Wed, 19 Jun 2024 09:56:10 +0000 (UTC)
Message-ID: <40e8fdb8-bec8-4dd0-a0c0-c7409f1a3af8@collabora.com>
Date: Wed, 19 Jun 2024 11:56:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
 <20240226-audio-i350-v5-13-54827318b453@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240226-audio-i350-v5-13-54827318b453@baylibre.com>
X-Rspamd-Queue-Id: 1940444C82
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194:c];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[baylibre.com:email,collabora.com:email,collabora.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RWUJHTZVY75UJ4W2DXZPDWZNXCUBWU7P
X-Message-ID-Hash: RWUJHTZVY75UJ4W2DXZPDWZNXCUBWU7P
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND v5 13/16] ASoC: mediatek: Add MT8365 support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RWUJHTZVY75UJ4W2DXZPDWZNXCUBWU7P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 14/06/24 09:27, Alexandre Mergnat ha scritto:
> - Add specific config to enable:
>    - MT8365 sound support
>    - MT6357 audio codec support
> - Add the mt8365 directory and all drivers under it.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>   sound/soc/mediatek/Kconfig         | 20 ++++++++++++++++++++
>   sound/soc/mediatek/Makefile        |  1 +
>   sound/soc/mediatek/mt8365/Makefile | 15 +++++++++++++++
>   3 files changed, 36 insertions(+)
> 
> diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
> index 5a8476e1ecca..c1c86ecc0601 100644
> --- a/sound/soc/mediatek/Kconfig
> +++ b/sound/soc/mediatek/Kconfig
> @@ -298,3 +298,23 @@ config SND_SOC_MT8195_MT6359
>   	  boards with the MT6359 and other I2S audio codecs.
>   	  Select Y if you have such device.
>   	  If unsure select "N".
> +
> +config SND_SOC_MT8365
> +	tristate "ASoC support for Mediatek MT8365 chip"
> +	depends on ARCH_MEDIATEK
> +	select SND_SOC_MEDIATEK
> +	help
> +	  This adds ASoC platform driver support for Mediatek MT8365 chip
> +	  that can be used with other codecs.
> +	  Select Y if you have such device.
> +	  If unsure select "N".
> +
> +config SND_SOC_MT8365_MT6357
> +	tristate "ASoC Audio driver for MT8365 with MT6357 codec"
> +	depends on SND_SOC_MT8365 && MTK_PMIC_WRAP
> +	select SND_SOC_MT6357
> +	help
> +	  This adds support for ASoC machine driver for Mediatek MT8365

s/Mediatek/MediaTek/g (here and everywhere else in other commits as well)

> +	  boards with the MT6357 codec.

MT6357 PMIC codec

after which

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
