Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EEE96FA44
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 20:03:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F8A140D56
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 18:03:55 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id E6A243F485
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 18:03:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qNf4LlgT;
	spf=pass (lists.linaro.org: domain of nathan@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=nathan@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 06D83A451D7;
	Fri,  6 Sep 2024 18:03:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 788F0C4CEC4;
	Fri,  6 Sep 2024 18:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725645832;
	bh=hx2BvcSYEXDXsd30G48n6SaMQB+nEO53TTi/T3dYx4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qNf4LlgTbFvMEsrAmRZpefJfB7LgGkp1GKIdjdZVUrStxdYfdNUhqcYF1Vg4/sWdr
	 iJnKgMx01XSppe7SEn8cgQC0+dut2FaFj6v29fKgojWKyIq1XC4xBHPfJz+/DKvFIO
	 M9GqbtUaLK23Pnn+gVrEYABK/8Q1l1lTpHVSDR5PwSL/ck5ChGn7JVNf8zsHsthyXa
	 L/kZbXhvPgc75ybcuF/M/h/P0wsjULMD560Yjfi/ERrVWuWVzkPRfxtFLHctfGloOs
	 AjOm3siThTDeAQnVWK55dFYxXnGZJ09ZwguIDUjoalkFlw08RO6kRI3OC1SB+aMpXD
	 LqwDIAg+OcoEw==
Date: Fri, 6 Sep 2024 11:03:48 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <20240906180348.GA1239602@thelio-3990X>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E6A243F485
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
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
Message-ID-Hash: TQN6K3NIQC36R47MODJZ4L2PKSMCT7FW
X-Message-ID-Hash: TQN6K3NIQC36R47MODJZ4L2PKSMCT7FW
X-MailFrom: nathan@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <nbelin@baylibre.
 com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TQN6K3NIQC36R47MODJZ4L2PKSMCT7FW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 04, 2024 at 12:16:48PM +0100, Mark Brown wrote:
> [01/16] ASoC: dt-bindings: mediatek,mt8365-afe: Add audio afe document
>         commit: ceb3ca2876243e3ea02f78b3d488b1f2d734de49
> [02/16] ASoC: dt-bindings: mediatek,mt8365-mt6357: Add audio sound card document
>         commit: 76d80dcdd55f70b28930edb97b96ee375e1cce5a
> [03/16] dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
>         commit: 761cab667898d86c04867948f1b7aec1090be796
> [04/16] ASoC: mediatek: mt8365: Add common header
>         commit: 38c7c9ddc74033406461d64e541bbc8268e77f73
> [05/16] ASoC: mediatek: mt8365: Add audio clock control support
>         commit: ef307b40b7f0042d54f020bccb3e728ced292282
> [06/16] ASoC: mediatek: mt8365: Add I2S DAI support
>         commit: 402bbb13a195caa83b3279ebecdabfb11ddee084
> [07/16] ASoC: mediatek: mt8365: Add ADDA DAI support
>         commit: 7c58c88e524180e8439acdfc44872325e7f6d33d
> [08/16] ASoC: mediatek: mt8365: Add DMIC DAI support
>         commit: 1c50ec75ce6c0c6b5736499393e522f73e19d0cf
> [09/16] ASoC: mediatek: mt8365: Add PCM DAI support
>         commit: 5097c0c8634d703e3c59cfb89831b7db9dc46339
> [10/16] ASoc: mediatek: mt8365: Add a specific soundcard for EVK
>         commit: 1bf6dbd75f7603dd026660bebf324f812200dc1b
> [11/16] ASoC: mediatek: mt8365: Add the AFE driver support
>         commit: e1991d102bc2abb32331c462f8f3e77059c69578

I am seeing several warnings/errors from both GCC and Clang with
ARCH=arm64 allmodconfig after this series appeared in next-20240906.
As far as I can tell, they appear to agree. I wondered how this was not
caught during the series development but perhaps it was written against
a development tree that did not have Arnd's extrawarn series from 6.10
in it yet? I was going to work on a series but I was not sure about the
best way to address the overflow errors, hence just the report.

Clang 19:

  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:298:5: error: no previous prototype for function 'mt8365_afe_hd_engen_enable' [-Werror,-Wmissing-prototypes]
    298 | int mt8365_afe_hd_engen_enable(struct mtk_base_afe *afe, bool apll1)
        |     ^
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:298:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
    298 | int mt8365_afe_hd_engen_enable(struct mtk_base_afe *afe, bool apll1)
        | ^
        | static 
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:310:5: error: no previous prototype for function 'mt8365_afe_hd_engen_disable' [-Werror,-Wmissing-prototypes]
    310 | int mt8365_afe_hd_engen_disable(struct mtk_base_afe *afe, bool apll1)
        |     ^
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:310:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
    310 | int mt8365_afe_hd_engen_disable(struct mtk_base_afe *afe, bool apll1)
        | ^
        | static 
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:314:24: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551614 to 4294967294 [-Werror,-Wconstant-conversion]
    313 |                 regmap_update_bits(afe->regmap, AFE_HD_ENGEN_ENABLE,
        |                 ~~~~~~~~~~~~~~~~~~
    314 |                                    AFE_22M_PLL_EN, ~AFE_22M_PLL_EN);
        |                                                    ^~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:317:24: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551613 to 4294967293 [-Werror,-Wconstant-conversion]
    316 |                 regmap_update_bits(afe->regmap, AFE_HD_ENGEN_ENABLE,
        |                 ~~~~~~~~~~~~~~~~~~
    317 |                                    AFE_24M_PLL_EN, ~AFE_24M_PLL_EN);
        |                                                    ^~~~~~~~~~~~~~~
  4 errors generated.

  sound/soc/mediatek/mt8365/mt8365-dai-adda.c:93:8: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551614 to 4294967294 [-Werror,-Wconstant-conversion]
     91 |                 regmap_update_bits(afe->regmap, AFE_ADDA_UL_DL_CON0,
        |                 ~~~~~~~~~~~~~~~~~~
     92 |                                    AFE_ADDA_UL_DL_ADDA_AFE_ON,
     93 |                                    ~AFE_ADDA_UL_DL_ADDA_AFE_ON);
        |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
  1 error generated.

  sound/soc/mediatek/mt8365/mt8365-mt6357.c:293:22: error: unused variable 'platform_node' [-Werror,-Wunused-variable]
    293 |         struct device_node *platform_node;
        |                             ^~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-mt6357.c:295:6: error: unused variable 'i' [-Werror,-Wunused-variable]
    295 |         int i, ret;
        |             ^
  2 errors generated.

  sound/soc/mediatek/mt8365/mt8365-dai-dmic.c:64:7: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551613 to 4294967293 [-Werror,-Wconstant-conversion]
     62 |         regmap_update_bits(afe->regmap, AFE_ADDA_UL_DL_CON0,
        |         ~~~~~~~~~~~~~~~~~~
     63 |                            AFE_ADDA_UL_DL_DMIC_CLKDIV_ON,
     64 |                            ~AFE_ADDA_UL_DL_DMIC_CLKDIV_ON);
        |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  1 error generated.

  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c:388:8: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551613 to 4294967293 [-Werror,-Wconstant-conversion]
    386 |                 regmap_update_bits(afe->regmap, AFE_ASRC_2CH_CON0,
        |                 ~~~~~~~~~~~~~~~~~~
    387 |                                    COEFF_SRAM_CTRL,
    388 |                                    (unsigned long)~COEFF_SRAM_CTRL);
        |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c:396:16: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709549567 to 4294965247 [-Werror,-Wconstant-conversion]
    395 |                 regmap_update_bits(afe->regmap, AFE_ASRC_2CH_CON2,
        |                 ~~~~~~~~~~~~~~~~~~
    396 |                                    IIR_EN, (unsigned long)~IIR_EN);
        |                                            ^~~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c:459:16: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551614 to 4294967294 [-Werror,-Wconstant-conversion]
    458 |                 regmap_update_bits(afe->regmap, AFE_ASRC_2CH_CON0,
        |                 ~~~~~~~~~~~~~~~~~~
    459 |                                    ASM_ON, (unsigned long)~ASM_ON);
        |                                            ^~~~~~~~~~~~~~~~~~~~~~
  3 errors generated.

  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:173:6: error: no previous prototype for function 'mt8365_afe_clk_group_44k' [-Werror,-Wmissing-prototypes]
    173 | bool mt8365_afe_clk_group_44k(int sample_rate)
        |      ^
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:173:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
    173 | bool mt8365_afe_clk_group_44k(int sample_rate)
        | ^
        | static 
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:499:5: error: no previous prototype for function 'mt8365_afe_fe_startup' [-Werror,-Wmissing-prototypes]
    499 | int mt8365_afe_fe_startup(struct snd_pcm_substream *substream,
        |     ^
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:499:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
    499 | int mt8365_afe_fe_startup(struct snd_pcm_substream *substream,
        | ^
        | static 
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:575:9: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709547519 to 4294963199 [-Werror,-Wconstant-conversion]
    573 |                         regmap_update_bits(afe->regmap, AFE_CM2_CON0,
        |                         ~~~~~~~~~~~~~~~~~~
    574 |                                            CM_AFE_CM2_TDM_SEL,
    575 |                                            ~CM_AFE_CM2_TDM_SEL);
        |                                            ^~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:654:29: error: unused variable 'memif' [-Werror,-Wunused-variable]
    654 |         struct mtk_base_afe_memif *memif = &afe->memif[dai_id];
        |                                    ^~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:717:5: error: no previous prototype for function 'mt8365_afe_fe_trigger' [-Werror,-Wmissing-prototypes]
    717 | int mt8365_afe_fe_trigger(struct snd_pcm_substream *substream, int cmd,
        |     ^
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:717:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
    717 | int mt8365_afe_fe_trigger(struct snd_pcm_substream *substream, int cmd,
        | ^
        | static 
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:746:23: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551599 to 4294967279 [-Werror,-Wconstant-conversion]
    745 |                         regmap_update_bits(afe->regmap, AFE_CM1_CON0,
        |                         ~~~~~~~~~~~~~~~~~~
    746 |                                            CM_AFE_CM_ON, ~CM_AFE_CM_ON);
        |                                                          ^~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:750:23: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551599 to 4294967279 [-Werror,-Wconstant-conversion]
    749 |                         regmap_update_bits(afe->regmap, AFE_CM2_CON0,
        |                         ~~~~~~~~~~~~~~~~~~
    750 |                                            CM_AFE_CM_ON, ~CM_AFE_CM_ON);
        |                                                          ^~~~~~~~~~~~~
  7 errors generated.

GCC 14:

  sound/soc/mediatek/mt8365/mt8365-mt6357.c: In function 'mt8365_mt6357_dev_probe':
  sound/soc/mediatek/mt8365/mt8365-mt6357.c:295:13: error: unused variable 'i' [-Werror=unused-variable]
    295 |         int i, ret;
        |             ^
  sound/soc/mediatek/mt8365/mt8365-mt6357.c:293:29: error: unused variable 'platform_node' [-Werror=unused-variable]
    293 |         struct device_node *platform_node;
        |                             ^~~~~~~~~~~~~
  cc1: all warnings being treated as errors

  sound/soc/mediatek/mt8365/mt8365-dai-dmic.c: In function 'audio_dmic_adda_disable':
  sound/soc/mediatek/mt8365/mt8365-dai-dmic.c:64:28: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551613' to '4294967293' [-Werror=overflow]
     64 |                            ~AFE_ADDA_UL_DL_DMIC_CLKDIV_ON);
  sound/soc/mediatek/mt8365/mt8365-dai-dmic.c: At top level:
  sound/soc/mediatek/mt8365/mt8365-dai-dmic.c:134:12: error: 'mt8365_dai_load_dmic_iir_coeff_table' defined but not used [-Werror=unused-function]
    134 | static int mt8365_dai_load_dmic_iir_coeff_table(struct mtk_base_afe *afe)
        |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  cc1: all warnings being treated as errors

  sound/soc/mediatek/mt8365/mt8365-dai-adda.c: In function 'mt8365_dai_disable_adda_on':
  sound/soc/mediatek/mt8365/mt8365-dai-adda.c:93:36: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551614' to '4294967294' [-Werror=overflow]
     93 |                                    ~AFE_ADDA_UL_DL_ADDA_AFE_ON);
  cc1: all warnings being treated as errors

  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:298:5: error: no previous prototype for 'mt8365_afe_hd_engen_enable' [-Werror=missing-prototypes]
    298 | int mt8365_afe_hd_engen_enable(struct mtk_base_afe *afe, bool apll1)
        |     ^~~~~~~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:310:5: error: no previous prototype for 'mt8365_afe_hd_engen_disable' [-Werror=missing-prototypes]
    310 | int mt8365_afe_hd_engen_disable(struct mtk_base_afe *afe, bool apll1)
        |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c: In function 'mt8365_afe_hd_engen_disable':
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:314:52: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551614' to '4294967294' [-Werror=overflow]
    314 |                                    AFE_22M_PLL_EN, ~AFE_22M_PLL_EN);
  sound/soc/mediatek/mt8365/mt8365-afe-clk.c:317:52: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551613' to '4294967293' [-Werror=overflow]
    317 |                                    AFE_24M_PLL_EN, ~AFE_24M_PLL_EN);
  cc1: all warnings being treated as errors

  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c: In function 'mt8365_afe_set_2nd_i2s_asrc':
  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c:388:36: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551613' to '4294967293' [-Werror=overflow]
    388 |                                    (unsigned long)~COEFF_SRAM_CTRL);
  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c:396:44: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709549567' to '4294965247' [-Werror=overflow]
    396 |                                    IIR_EN, (unsigned long)~IIR_EN);
  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c: In function 'mt8365_afe_set_2nd_i2s_asrc_enable':
  sound/soc/mediatek/mt8365/mt8365-dai-i2s.c:459:44: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551614' to '4294967294' [-Werror=overflow]
    459 |                                    ASM_ON, (unsigned long)~ASM_ON);
  cc1: all warnings being treated as errors

  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:173:6: error: no previous prototype for 'mt8365_afe_clk_group_44k' [-Werror=missing-prototypes]
    173 | bool mt8365_afe_clk_group_44k(int sample_rate)
        |      ^~~~~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:499:5: error: no previous prototype for 'mt8365_afe_fe_startup' [-Werror=missing-prototypes]
    499 | int mt8365_afe_fe_startup(struct snd_pcm_substream *substream,
        |     ^~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c: In function 'mt8365_afe_fe_hw_params':
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:575:44: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709547519' to '4294963199' [-Werror=overflow]
    575 |                                            ~CM_AFE_CM2_TDM_SEL);
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c: In function 'mt8365_afe_fe_hw_free':
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:654:36: error: unused variable 'memif' [-Werror=unused-variable]
    654 |         struct mtk_base_afe_memif *memif = &afe->memif[dai_id];
        |                                    ^~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c: At top level:
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:717:5: error: no previous prototype for 'mt8365_afe_fe_trigger' [-Werror=missing-prototypes]
    717 | int mt8365_afe_fe_trigger(struct snd_pcm_substream *substream, int cmd,
        |     ^~~~~~~~~~~~~~~~~~~~~
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c: In function 'mt8365_afe_fe_trigger':
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:746:58: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551599' to '4294967279' [-Werror=overflow]
    746 |                                            CM_AFE_CM_ON, ~CM_AFE_CM_ON);
  sound/soc/mediatek/mt8365/mt8365-afe-pcm.c:750:58: error: conversion from 'long unsigned int' to 'unsigned int' changes value from '18446744073709551599' to '4294967279' [-Werror=overflow]
    750 |                                            CM_AFE_CM_ON, ~CM_AFE_CM_ON);
  cc1: all warnings being treated as errors

Cheers,
Nathan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
