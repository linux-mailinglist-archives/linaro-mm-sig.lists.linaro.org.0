Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D820689DFDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 17:59:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE4BC400E3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 15:59:06 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id C6190400E3
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 15:59:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=NZ3xjh2N;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.208.170 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d485886545so101959271fa.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Apr 2024 08:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712678343; x=1713283143; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+/spKUkA9slzNHp8vKtqr5Sqc4bQ9ZR/k/vJJvywmg=;
        b=NZ3xjh2NZRfVBLZ0yMhqJ+YINiBIvqEnucOFyLhjWc49EJTm2pjyijeGERgWaIrY+n
         CkcUnRwkwJlytibCHkK7TE0+9JKnrwpZhF8clz+sBDHnysR16V6v6WMMZrL8iZQzqXB3
         t/bcXZGRWEoO0os5iuwVFUQGHWpunR6V1RZAS9+JmrJnZf8HJkKna7512qcdKJiS4GSp
         QW0Zro/VFwWy+QhrVJg8fGPfCAeDHoVlB5i+R6sFEJy1YOTyQdL1OE1kOgW26roXmj7N
         37UzWl30xNZZPIKGKJJ7B1unhe1L4JQM06T1KG9fbU9seNGH5kZrnccMVNntHvwJGplb
         cqjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712678343; x=1713283143;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y+/spKUkA9slzNHp8vKtqr5Sqc4bQ9ZR/k/vJJvywmg=;
        b=Nozs+/eeDHOPDuHyeWoAw5faypdYQY9XmazPcgltb8tCsAbeCTOi2ef/TPXtp6EI8L
         O2tJwgSEkrHiusIh8f4s+19F/UG2Tzv1xyMPAE5XJo2gCTXYGC980q10IFYMfLShxPBz
         tyymf36nwn5P6mZ5dtCZ0yvfBTpcbLRnkQBHber6U6Z3BWO+0j88Ewgiy2y4t2gdatpv
         CN5DwpXGlQdo4LlOROi13qupqQqW6GThn2CGVMCprEaSWGOgMP7d2jpHmyJRSTlrxKFx
         FlbWWyy4lAZuftI9chsByFaiEWQREBDcOrKxxbWDI8BNu8atvqFhQ5AT5wGfQARlGlYO
         TKHw==
X-Forwarded-Encrypted: i=1; AJvYcCWgZkviMVKPthV6qjkDcMQ+4Y//u2W6ML5lBR3ld5Y2cMTlzVe09McVIk/EzZPNBZbA/uEfGTJfaJCCq2R7atG/GDL+n4qblf2VGc0Nzr4=
X-Gm-Message-State: AOJu0YyEyIlSnmJ8B29gc3GYlPHI7p4hci5X5of9jf90qT+qP54iStVS
	hza5o62sNKEKG4R+97jbDFXNtdc1DBzp+LKrp8uO5ewrib7yLDrV7zXJQACCMNdzyg==
X-Google-Smtp-Source: AGHT+IEwmvmvRUWELqbbts3tqSXfa50z4eY5lQY39SDTovI1YrizSuwrb6EVAJvqAhL1f+F/VWmctA==
X-Received: by 2002:a2e:8303:0:b0:2d8:6a04:3bcd with SMTP id a3-20020a2e8303000000b002d86a043bcdmr222197ljh.3.1712678343286;
        Tue, 09 Apr 2024 08:59:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id dm14-20020a170907948e00b00a4e24d259edsm5749071ejc.167.2024.04.09.08.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 08:59:02 -0700 (PDT)
Message-ID: <60fd9942-1621-452d-b7ae-40dd11ee1ae0@linaro.org>
Date: Tue, 9 Apr 2024 17:58:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>
References: <20240226-audio-i350-v3-0-16bb2c974c55@baylibre.com>
 <20240226-audio-i350-v3-16-16bb2c974c55@baylibre.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240226-audio-i350-v3-16-16bb2c974c55@baylibre.com>
X-Rspamd-Queue-Id: C6190400E3
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	URIBL_BLOCKED(0.00)[baylibre.com:email,linaro.org:dkim,mail-lj1-f170.google.com:helo,mail-lj1-f170.google.com:rdns];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LD7YHXPP4NRR3HAW5TOLK56MYWED3SD2
X-Message-ID-Hash: LD7YHXPP4NRR3HAW5TOLK56MYWED3SD2
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 16/18] arm64: dts: mediatek: add mt6357 audio codec support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LD7YHXPP4NRR3HAW5TOLK56MYWED3SD2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 09/04/2024 15:42, Alexandre Mergnat wrote:
> Add audio codec support of MT6357 PMIC.
> Update the file header.

Why?

> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt6357.dtsi | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6357.dtsi b/arch/arm64/boot/dts/mediatek/mt6357.dtsi
> index 3330a03c2f74..ade410851524 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6357.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6357.dtsi
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: (GPL-2.0 OR MIT)
>  /*
>   * Copyright (c) 2020 MediaTek Inc.
> - * Copyright (c) 2023 BayLibre Inc.
> + * Copyright (c) 2024 BayLibre Inc.

That's not a reasonable change. The file was published on 2023, wasn't
it? If this is not correct, please explain why/how and make it separate
patch.

>   */
>  
>  #include <dt-bindings/input/input.h>
> @@ -10,6 +10,9 @@ &pwrap {
>  	mt6357_pmic: pmic {
>  		compatible = "mediatek,mt6357";
>  
> +		mt6357_codec: codec {
> +		};

There is no single point of having empty nodes.

NAK.



Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
