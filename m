Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C841686791D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 15:54:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8452940D80
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 14:54:33 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 1640240C96
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Feb 2024 14:54:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=m594B+Po;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708959265;
	bh=lgkB/ejSf4q1D6g3ACK0ytRcy3yE2UMi3BpNvE8ZFzk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=m594B+PoBP+t/5toUSZNM5KZJCDjrVdr+i4xaIPhIC93UAUl+hEy49GX2kAhZBeI3
	 yeXyrtxtIhPWQ9s2v6rnMq6uhEZ6RkAR9yxHZzyn4trQpaXrr4V3ZBVsOsCnXfosLX
	 4OBPRYmqs6J1Tqhvm64WWBucM7qa8PrG6VClj08RbRBYwxcFdsL5nmjArVkxZ4adW/
	 2SUHJdcCRQEd1sMsLbQhMWd50lGDlBy++4T/8r1gvSNUGIBPNW5BkHdiVtXSyXgEyo
	 4MsKCg+YTSypS4I7Bsu/LV17QcvRRiBJGklejkP3xmfmVx2QEOjxmrvO9DEjH5OHf5
	 OTtb2XXhg0aUg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 17CAB37820CF;
	Mon, 26 Feb 2024 14:54:24 +0000 (UTC)
Message-ID: <53671deb-9c11-43c1-8deb-93fe4708651a@collabora.com>
Date: Mon, 26 Feb 2024 15:54:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1640240C96
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: 3JABPQM6UBIMBYXHHXGCJ24DXOIHMJ2L
X-Message-ID-Hash: 3JABPQM6UBIMBYXHHXGCJ24DXOIHMJ2L
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>, Fabien Parent <fparent@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/18] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3JABPQM6UBIMBYXHHXGCJ24DXOIHMJ2L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 26/02/24 15:01, Alexandre Mergnat ha scritto:
> This serie aim to add the following audio support for the Genio 350-evk:
> - Playback
>    - 2ch Headset Jack (Earphone)
>    - 1ch Line-out Jack (Speaker)
>    - 8ch HDMI Tx
> - Capture
>    - 1ch DMIC (On-board Digital Microphone)
>    - 1ch AMIC (On-board Analogic Microphone)
>    - 1ch Headset Jack (External Analogic Microphone)
> 
> Of course, HDMI playback need the MT8365 display patches [1] and a DTS
> change documented in "mediatek,mt8365-mt6357.yaml".
> 
> [1]: https://lore.kernel.org/all/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com/
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>

Actually, I am cooking a series (I'm finishing the testing....) that brings quite
a bit of cleanups in MTK ASoC, including the commonization of the machine driver
probe, with the dai-link DT nodes, and which also modernizes most of the existing
drivers to use that instead.

If you wait for a day or two, your mt8365-mt6357.c driver's probe function can be
shrunk to ~3 lines or something like that.. very easily :-)

Cheers,
Angelo

> ---
> Alexandre Mergnat (15):
>        ASoC: dt-bindings: mediatek,mt8365-afe: Add audio afe document
>        ASoC: dt-bindings: mediatek,mt8365-mt6357: Add audio sound card document
>        dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
>        ASoC: mediatek: mt8365: Add common header
>        SoC: mediatek: mt8365: support audio clock control
>        ASoC: mediatek: mt8365: Add I2S DAI support
>        ASoC: mediatek: mt8365: Add ADDA DAI support
>        ASoC: mediatek: mt8365: Add DMIC DAI support
>        ASoC: mediatek: mt8365: Add PCM DAI support
>        ASoC: mediatek: mt8365: Add platform driver
>        ASoC: mediatek: Add MT8365 support
>        arm64: defconfig: enable mt8365 sound
>        arm64: dts: mediatek: add mt6357 audio codec support
>        arm64: dts: mediatek: add afe support for mt8365 SoC
>        arm64: dts: mediatek: add audio support for mt8365-evk
> 
> Fabien Parent (1):
>        mfd: mt6397-core: register mt6357 sound codec
> 
> Nicolas Belin (2):
>        ASoc: mediatek: mt8365: Add a specific soundcard for EVK
>        ASoC: codecs: mt6357: add MT6357 codec
> 
>   .../devicetree/bindings/mfd/mediatek,mt6357.yaml   |   11 +
>   .../bindings/sound/mediatek,mt8365-afe.yaml        |  164 ++
>   .../bindings/sound/mediatek,mt8365-mt6357.yaml     |  127 ++
>   arch/arm64/boot/dts/mediatek/mt6357.dtsi           |    6 +-
>   arch/arm64/boot/dts/mediatek/mt8365-evk.dts        |   95 +-
>   arch/arm64/boot/dts/mediatek/mt8365.dtsi           |   47 +-
>   arch/arm64/configs/defconfig                       |    2 +
>   drivers/mfd/mt6397-core.c                          |    3 +
>   sound/soc/codecs/Kconfig                           |    7 +
>   sound/soc/codecs/Makefile                          |    2 +
>   sound/soc/codecs/mt6357.c                          | 1805 +++++++++++++++
>   sound/soc/codecs/mt6357.h                          |  674 ++++++
>   sound/soc/mediatek/Kconfig                         |   20 +
>   sound/soc/mediatek/Makefile                        |    1 +
>   sound/soc/mediatek/mt8365/Makefile                 |   15 +
>   sound/soc/mediatek/mt8365/mt8365-afe-clk.c         |  455 ++++
>   sound/soc/mediatek/mt8365/mt8365-afe-clk.h         |   55 +
>   sound/soc/mediatek/mt8365/mt8365-afe-common.h      |  495 +++++
>   sound/soc/mediatek/mt8365/mt8365-afe-pcm.c         | 2347 ++++++++++++++++++++
>   sound/soc/mediatek/mt8365/mt8365-dai-adda.c        |  355 +++
>   sound/soc/mediatek/mt8365/mt8365-dai-dmic.c        |  475 ++++
>   sound/soc/mediatek/mt8365/mt8365-dai-i2s.c         |  901 ++++++++
>   sound/soc/mediatek/mt8365/mt8365-dai-pcm.c         |  298 +++
>   sound/soc/mediatek/mt8365/mt8365-mt6357.c          |  379 ++++
>   sound/soc/mediatek/mt8365/mt8365-reg.h             |  987 ++++++++
>   25 files changed, 9718 insertions(+), 8 deletions(-)
> ---
> base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
> change-id: 20240226-audio-i350-4e11da088e55
> 
> Best regards,


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
