Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF8C867A49
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 16:30:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A11540D80
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 15:30:11 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 0BBCF40D84
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Feb 2024 15:30:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=Y68N6UCu;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708961402;
	bh=1dPT6v1I08Wyw5hcrN7bcgojMxnYVXIX2j0GluKbE6Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Y68N6UCuVbVFFasJj+ySVlHijeOnuqq7y8A5tsZ0r2I5+eHsdn6kGbuIQEhK7g7eh
	 9xrlqCRvZTuDtW8PiCKK+RnlkYifQubrxK/ifQjhcDxUuEeLgqnHmMYB3ARUCjhxJj
	 T5OONjkP2MYwvgu1TBRjX6KjEImlNeFxDuUqGdrT+ZyldQzxawK2jN3Y/MEAGVgYnx
	 iks6DyEZIRF4HSGtkr11rFZq481N2a7ZUThufV2fpbjtNHSXZWAQnBSuXZA94ggtor
	 G7R8S41pEbfY3rseYnbtvq4FdHetz7E2Pyy6OTkjE7TP5umlIbZUyaorLZuFMZad8Z
	 u5JPfnYhZgszw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 591A237820C3;
	Mon, 26 Feb 2024 15:30:01 +0000 (UTC)
Message-ID: <e15fdb18-d4de-495f-b90b-ba0e787cbef4@collabora.com>
Date: Mon, 26 Feb 2024 16:30:00 +0100
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
 <20240226-audio-i350-v1-2-4fa1cea1667f@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240226-audio-i350-v1-2-4fa1cea1667f@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0BBCF40D84
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: RUUIFJ645DV4HEKF7G4LAUUM2SPXODMH
X-Message-ID-Hash: RUUIFJ645DV4HEKF7G4LAUUM2SPXODMH
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/18] ASoC: dt-bindings: mediatek,mt8365-mt6357: Add audio sound card document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RUUIFJ645DV4HEKF7G4LAUUM2SPXODMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 26/02/24 15:01, Alexandre Mergnat ha scritto:
> Add soundcard bindings for the MT8365 SoC with the MT6357 audio codec.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>   .../bindings/sound/mediatek,mt8365-mt6357.yaml     | 127 +++++++++++++++++++++
>   1 file changed, 127 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml
> new file mode 100644
> index 000000000000..f469611ec6b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/mediatek,mt8365-mt6357.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek MT8365 sound card with MT6357 sound codec.
> +
> +maintainers:
> +  - Alexandre Mergnat <amergnat@baylibre.com>
> +
> +description:
> +  This binding describes the MT8365 sound card.
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt8365-mt6357
> +
> +  mediatek,hp-pull-down:
> +    description:
> +      Earphone driver positive output stage short to the
> +      audio reference ground.
> +      Default value is false.
> +    type: boolean
> +
> +  mediatek,micbias0-microvolt:
> +    description: |

description: Selects MIC Bias 0 output voltage

> +      Selects MIC Bias 0 output voltage.
> +      [1.7v, 1.8v, 1.9v, 2.0v, 2.1v, 2.5v, 2.6v, 2.7v]
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7]

No, you don't say 0 1 2 3 4 to a property that says "microvolt", that's simply
wrong.

mediatek,micbias0-microvolt = <2100000>;

...so you want a binding that says
enum: [ 1700000, 1800000, this, that, 2700000]

> +
> +  mediatek,micbias1-microvolt:
> +    description: |
> +      Selects MIC Bias 1 output voltage.
> +      [1.7v, 1.8v, 1.9v, 2.0v, 2.1v, 2.5v, 2.6v, 2.7v]
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7]

same here.

> +
> +  mediatek,platform:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: The phandle of MT8365 ASoC platform.
> +
> +  pinctrl-names:
> +    minItems: 1
> +    items:
> +      - const: aud_default
> +      - const: aud_dmic
> +      - const: aud_miso_off
> +      - const: aud_miso_on
> +      - const: aud_mosi_off
> +      - const: aud_mosi_on
> +
> +  vaud28-supply:
> +    description:
> +      2.8 volt supply for the audio codec
> +
> +patternProperties:
> +  "^dai-link-[0-9]+$":
> +    type: object
> +    description:
> +      Container for dai-link level properties and CODEC sub-nodes.
> +
> +    properties:
> +      codec:
> +        type: object
> +        description: Holds subnode which indicates codec dai.
> +
> +        properties:
> +          sound-dai:
> +            maxItems: 1
> +            description: phandle of the codec DAI
> +
> +        additionalProperties: false
> +
> +      link-name:
> +        description:
> +          This property corresponds to the name of the BE dai-link to which
> +          we are going to update parameters in this node.
> +        items:
> +          const: 2ND I2S BE
> +
> +      sound-dai:
> +        maxItems: 1
> +        description: phandle of the CPU DAI
> +
> +    additionalProperties: false
> +
> +    required:
> +      - link-name
> +      - sound-dai
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - mediatek,platform
> +  - pinctrl-names
> +  - vaud28-supply
> +
> +examples:
> +  - |
> +    sound {
> +        compatible = "mediatek,mt8365-mt6357";
> +        mediatek,platform = <&afe>;

Please:

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

Regards,
Angelo

> +        pinctrl-names = "aud_default",
> +            "aud_dmic",
> +            "aud_miso_off",
> +            "aud_miso_on",
> +            "aud_mosi_off",
> +            "aud_mosi_on";
> +        pinctrl-0 = <&aud_default_pins>;
> +        pinctrl-1 = <&aud_dmic_pins>;
> +        pinctrl-2 = <&aud_miso_off_pins>;
> +        pinctrl-3 = <&aud_miso_on_pins>;
> +        pinctrl-4 = <&aud_mosi_off_pins>;
> +        pinctrl-5 = <&aud_mosi_on_pins>;
> +        vaud28-supply = <&mt6357_vaud28_reg>;
> +
> +        /* hdmi interface */
> +        dai-link-0 {
> +            sound-dai = <&afe>;
> +            link-name = "2ND I2S BE";
> +
> +            codec {
> +                sound-dai = <&it66121hdmitx>;
> +            };
> +        };
> +    };
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
