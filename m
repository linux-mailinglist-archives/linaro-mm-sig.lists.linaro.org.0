Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C59F8C9B4D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 May 2024 12:30:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA6343F441
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 May 2024 10:30:22 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id E80023F453
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 May 2024 10:30:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=MSaBSEkV;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716201016;
	bh=4aFYaGvqOiJ+8i1j+s6ErI95fgrhOe7P9QJgg8TqH9A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MSaBSEkVvttyh3zC6ZrNwFY+aBzRc9cFbbcgiHlUiepPokaejOwLmNuGgEqycHlqx
	 AEoQBlbur8mu86CMP526zqViSmJNtihuvl6Gda6Oh7Q22+sa9wjF+WM/3eey6DKvBG
	 SJAJ/4AqSqPAzoajY1o8Tv10n7oCmny+XX0tygTD/U7Z+zfnRjHVZJf2ris6EKKSUE
	 9azsQpRI1ojbzbwCwPA6MVOtM9NmktAS7zgL8CdDFztavEOnJZo8PKnvgATlGxcNfD
	 fWdDPxb0FgDZtOyP8HztJe0ADF4Ruo0VWKGXVOxwQ5XMztZoPS9PXNwRHPCFeQbwPU
	 +hbDuok8X+gGw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5FF4F3782191;
	Mon, 20 May 2024 10:30:14 +0000 (UTC)
Message-ID: <e53833a2-42a9-409c-9f98-306e0a0292a1@collabora.com>
Date: Mon, 20 May 2024 12:30:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: amergnat@baylibre.com, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
 <20240226-audio-i350-v4-10-082b22186d4c@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240226-audio-i350-v4-10-082b22186d4c@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E80023F453
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
	RCPT_COUNT_TWELVE(0.00)[26];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[baylibre.com:email,collabora.com:dkim,collabora.com:email,madrid.collaboradmins.com:helo,madrid.collaboradmins.com:rdns];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: HWXUYQ5UIMY6ESZHHQLRZPBFYBXMLWYM
X-Message-ID-Hash: HWXUYQ5UIMY6ESZHHQLRZPBFYBXMLWYM
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 10/16] ASoc: mediatek: mt8365: Add a specific soundcard for EVK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HWXUYQ5UIMY6ESZHHQLRZPBFYBXMLWYM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 26/04/24 19:22, amergnat@baylibre.com ha scritto:
> From: Nicolas Belin <nbelin@baylibre.com>
> 
> Add a specific soundcard for mt8365-evk. It supports audio jack
> in/out, dmics, the amic and lineout.
> 
> Signed-off-by: Nicolas Belin <nbelin@baylibre.com>
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>   sound/soc/mediatek/mt8365/mt8365-mt6357.c | 348 ++++++++++++++++++++++++++++++
>   1 file changed, 348 insertions(+)
> 
> diff --git a/sound/soc/mediatek/mt8365/mt8365-mt6357.c b/sound/soc/mediatek/mt8365/mt8365-mt6357.c
> new file mode 100644
> index 000000000000..a65f668103da
> --- /dev/null
> +++ b/sound/soc/mediatek/mt8365/mt8365-mt6357.c
> @@ -0,0 +1,348 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Mediatek MT8365 Sound Card driver
> + *
> + * Copyright (c) 2024 MediaTek Inc.
> + * Authors: Nicolas Belin <nbelin@baylibre.com>
> + */
> +
> +#include <linux/module.h>
> +#include <linux/of_gpio.h>
> +#include <sound/soc.h>
> +#include <sound/pcm_params.h>
> +#include "mt8365-afe-common.h"
> +#include <linux/pinctrl/consumer.h>
> +#include "../common/mtk-soc-card.h"
> +#include "../common/mtk-soundcard-driver.h"
> +

..snip..

> +
> +static const struct mtk_soundcard_pdata mt8365_mt6357_card = {
> +	.card_name = "mt8365-mt6357",
> +	.card_data = &(struct mtk_platform_card_data) {
> +		.card = &mt8365_mt6357_soc_card,
> +	},
> +	.soc_probe = mt8365_mt6357_dev_probe
> +};
> +
> +static const struct of_device_id mt8365_mt6357_dt_match[] = {
> +	{
> +		.compatible = "mediatek,mt8365-mt6357",
> +		.data = &mt8365_mt6357_card,
> +	},
> +	{ }

Please, compress and add sentinel

{ .compatible = "mediatek,mt8365-mt6357", .data = &mt8365_mt6357_card },
{ /* sentinel */ }

after which

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
