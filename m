Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F171986AEC7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Feb 2024 13:09:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 064F33EFE2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Feb 2024 12:09:16 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 675C83EFE2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Feb 2024 12:09:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jZR+KD04;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.218.54 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a3f893ad5f4so747679266b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Feb 2024 04:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709122147; x=1709726947; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WDRYe/KHQlnSYq9IEFbpIIgAFOjpXxlEkxELgPs5a8I=;
        b=jZR+KD04OUpqTL3r0Z0EVfTko/CQz4f0kHS5XMJrD2hyGf8zcveTghR5b3PdiynSOg
         V0QXJtjtE4wDlOAX72ILjGaYGZgL26ohSfBOYiGbC/Q8KEKvWdO32sBN1mczKqEcyjkE
         grDrpUljDpoUUS8uhFEdrjFGcRf72OoVBRxQs1H9SfTlG8MMpQMiwW7VGyj1MZwijFH3
         fR+XuozX6QmibmkNGZf5+04DLQL76x7VGrqTV4v7I1uEAdoJWXamVCviy56R9YGPQBjK
         YfnuqO+prKh0hgdn5KA+ixc/iHWBN+ehCNvq/Pm7yeMUk2v0mrgEHqUz+cllvjhFp7AD
         b0WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709122147; x=1709726947;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDRYe/KHQlnSYq9IEFbpIIgAFOjpXxlEkxELgPs5a8I=;
        b=VCRzKGU6/NbWyvHNLiG+kwO31OBKU+DMd9iq9s1zG3GfhCMnAVZ3ZMEposC/y1+0+W
         uWZujpLujdjO2s/cGDHTIyv72epxwt8/yRRe7g95EF0VqEvvOXuuI41j0r1BA6M+cGWn
         +w1RpWQ3UPsAMO1UXeUuO2T6/1rjZQ9wsTT3jlUrsDdIrraMUtpNVJxwx8fracQt6ocW
         y9Inpk2Nk4KGa1vXnK/hxld2wvCOJQz6t7x1SowFai3h5R0SUyXyhiFbLt5acYN2JQ2U
         pbVe+Qzo5VfP4rVy8xirXKmE/OuYc2PgObdqcevnjVSSWOu6zzFUZxqg7tOucuwpIpnT
         5ypw==
X-Forwarded-Encrypted: i=1; AJvYcCVNfUnUDuz21ah+Xs4BXp44aGmOvFeGaKEC8BX/1zzJ8ctsCI32U54K7qzpzKnDzGvlcxh0CkcLKjAQ1lWok7IJ3outCUO3VV7cDKTDxlQ=
X-Gm-Message-State: AOJu0YwLumW8+PBGJGehcDIyrxMNZ9EzmCzTDWAN4p4IEVXWBW3wQT8A
	ylbzTwRpXAPVx69Em80rIf85UffnDw66sHQf8qxUsg8Y2vESovzjjjVoTbNhfv6PiA==
X-Google-Smtp-Source: AGHT+IFdLV5ldkp0x2cr3dhraZTRWmFPQrhdR1DDCvm1U1uhhE7FIv9Lhc4520o628RK8mW0PxrgKw==
X-Received: by 2002:a17:906:c196:b0:a40:a615:a9c4 with SMTP id g22-20020a170906c19600b00a40a615a9c4mr8913393ejz.65.1709122147305;
        Wed, 28 Feb 2024 04:09:07 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id ps3-20020a170906bf4300b00a42ed7421b8sm1790012ejb.93.2024.02.28.04.09.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 04:09:06 -0800 (PST)
Message-ID: <35e0d5e6-9a65-4a96-93d8-0007b4dee3d7@linaro.org>
Date: Wed, 28 Feb 2024 13:09:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Alexandre Mergnat <amergnat@baylibre.com>,
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
 <20240226-audio-i350-v1-1-4fa1cea1667f@baylibre.com>
 <ce5f71a9-1b5f-4724-89db-dae2f64e8008@linaro.org>
 <eeb3329b-0558-4237-8343-4e11f65a6a35@baylibre.com>
 <bd4bf6ae-350e-4ee6-a924-7dd31b2c6034@linaro.org>
 <66e527af-0253-4565-9822-04ed84e5817c@baylibre.com>
 <bb86b986-ecd7-416a-9036-082a3cff2176@collabora.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <bb86b986-ecd7-416a-9036-082a3cff2176@collabora.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 675C83EFE2
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.59 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[collabora.com,baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.218.54:from,178.197.222.116:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: YTUCPCUZNURO7E55ZKB3BYZVZDL4NZKF
X-Message-ID-Hash: YTUCPCUZNURO7E55ZKB3BYZVZDL4NZKF
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/18] ASoC: dt-bindings: mediatek,mt8365-afe: Add audio afe document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YTUCPCUZNURO7E55ZKB3BYZVZDL4NZKF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 28/02/2024 11:25, AngeloGioacchino Del Regno wrote:
> Il 28/02/24 10:57, Alexandre Mergnat ha scritto:
>> I think I got it.
>>
>> - mediatek,i2s-shared-clock: will be remove from DT
>> - mediatek,dmic-iir-on: will be remove from DT
>> - mediatek,dmic-irr-mode: will be remove from DT
>> - mediatek,dmic-two-wire-mode: rephrase description needed
>>
>> I've did abstraction (despite me) that IIR settings are runtime config because the 
>> driver implement its usage like a one-time-setup -_-'
>>
> 
> Yes but just one more thing I just noticed: `mediatek,dmic-two-wire-mode` - can we
> please rename this to `mediatek,dmic-mode` ?
> 
> That'd be for consistency check mt6359.yaml and mt6358.txt
> 
>    mediatek,dmic-mode:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description: |
>        Indicates how many data pins are used to transmit two channels of PDM
>        signal. 0 means two wires, 1 means one wire. Default value is 0.
>      enum:
>        - 0 # one wire
>        - 1 # two wires

Thanks for checking. Now I wonder if entire binding just ignored
existing work and started doing things from scratch...

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
