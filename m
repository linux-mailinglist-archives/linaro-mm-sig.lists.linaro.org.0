Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4577889DFE7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 18:00:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D6C943C6E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 16:00:22 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by lists.linaro.org (Postfix) with ESMTPS id E595C43C3E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 16:00:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=sxbbmrQm;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.221.54 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-345e1c64695so1057084f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Apr 2024 09:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712678419; x=1713283219; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Vl2WAWZiRqw9Ns4ylVujkmqdUMbnF+5lRwOPnf5XU7k=;
        b=sxbbmrQmei83sDou1TCoJChTjJzRHTRY+MG/7a5+UNF1EAsDIVNzyvMUa1r98xf3AL
         BrFYyf/s9JBA71TXtqyBznwgi+hL/CoXiJaQ0+wM5V7aiBc+/26kfOm46HW0KznBLKoA
         jXZuvO7MGlKt8cL1LOTk5RPx9xT5kBN0PVC3vEha2VhBQvOFfOd8ETFS7xTTYrgywR2B
         DjZEketRjvFkRupaziGBXBv4biNc50gsRRuCwJg+PiKRMqgDwyZUQU5B1FXq2vsH3wxU
         SiI0CdZh7nsLgfq+RJRDvJbxOvMzvmBCEMTYSxN7KWzVHaDHoQthiCz9a8EQuAon4NRp
         4WEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712678419; x=1713283219;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vl2WAWZiRqw9Ns4ylVujkmqdUMbnF+5lRwOPnf5XU7k=;
        b=ZWxLgsxb4W1jDyhmtS+8pkkAa6Zb6KaWnYpbjkpWREO/wV/JkmyKcIvFPx13W6bulb
         bHMlha/erbjjwsggeIIxIMq0bUHJ76ZwLP25E0HBWAh573xCEKntZdLlnYx3xUoXvyvn
         +ywvFaN/ZvWMnPQEka6bP8tGZ9HVhDRoBiC/vQvaUepPWZ/iZI2Yv3x3j8156mmoHaUO
         wYayqzIuB+na1hcADZuEvrFaaVSmSS8CvkR2Z5FAE2Xc3xrSo7pXyRxEwjCVSLoupzjI
         A/h0GKHdY0ikC+hUTOmek+/aQNsM0cA7APUyczAyvZ9tVWxn2X8NK1SqKGJcC3hOdnLu
         fcfA==
X-Forwarded-Encrypted: i=1; AJvYcCVSuUlJEREb4BqjDEdcw+q6Her9iKNqwLnV8RnZKGcr2J0cy0Nbxy5MeaeG9CI3OtYhrylKkvj66ZkUzA58rxY95C52SYkdvoG+8blPTjM=
X-Gm-Message-State: AOJu0Yx4TB+j6/kO364RXFJ08HW1bnjJn8iajdCpvchmaiL+6sIAi9bi
	xBZzGDjL8xwEXzl53BsG/lsnq/Ogj6lg9B5JZmv0Kz3tyZeX7/g+qqadLXQL4LE7vQ==
X-Google-Smtp-Source: AGHT+IHXyvG8mKfTY4naLXWGXb6e7X0FvCeImKpBuVDysC36RkLPoOdejDcQfesyOgvubSVgZ97dCw==
X-Received: by 2002:adf:f1c4:0:b0:341:e4f4:4399 with SMTP id z4-20020adff1c4000000b00341e4f44399mr83235wro.68.1712678418814;
        Tue, 09 Apr 2024 09:00:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id k2-20020adff282000000b0033e9d9f891csm11740838wro.58.2024.04.09.09.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 09:00:18 -0700 (PDT)
Message-ID: <62b1f2fe-7892-405c-bbb9-4bc77173a801@linaro.org>
Date: Tue, 9 Apr 2024 18:00:16 +0200
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
 <20240226-audio-i350-v3-18-16bb2c974c55@baylibre.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240226-audio-i350-v3-18-16bb2c974c55@baylibre.com>
X-Rspamd-Queue-Id: E595C43C3E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	URIBL_BLOCKED(0.00)[baylibre.com:email,linaro.org:dkim];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.54:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OKVMWZRO6AVCUMOGSXEK54YEMEPD4NM5
X-Message-ID-Hash: OKVMWZRO6AVCUMOGSXEK54YEMEPD4NM5
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 18/18] arm64: dts: mediatek: add audio support for mt8365-evk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OKVMWZRO6AVCUMOGSXEK54YEMEPD4NM5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDkvMDQvMjAyNCAxNTo0MiwgQWxleGFuZHJlIE1lcmduYXQgd3JvdGU6DQo+IEFkZCB0aGUg
c291bmQgbm9kZSB3aGljaCBpcyBsaW5rZWQgdG8gdGhlIE1UODM2NSBTb0MgQUZFIGFuZA0KPiB0
aGUgTVQ2MzU3IGF1ZGlvIGNvZGVjLg0KPiANCj4gVXBkYXRlIHRoZSBmaWxlIGhlYWRlci4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBNZXJnbmF0IDxhbWVyZ25hdEBiYXlsaWJyZS5j
b20+DQo+IC0tLQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgzNjUtZXZrLmR0
cyB8IDk4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
OTQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODM2NS1ldmsuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9tZWRpYXRlay9tdDgzNjUtZXZrLmR0cw0KPiBpbmRleCA1MGNiYWVmYTFhOTkuLmViMGM1
ZjA3NmRkNCAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgz
NjUtZXZrLmR0cw0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODM2NS1l
dmsuZHRzDQo+IEBAIC0xLDkgKzEsOSBAQA0KPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjANCj4gIC8qDQo+IC0gKiBDb3B5cmlnaHQgKGMpIDIwMjEtMjAyMiBCYXlMaWJyZSwg
U0FTLg0KPiAtICogQXV0aG9yczoNCj4gLSAqIEZhYmllbiBQYXJlbnQgPGZwYXJlbnRAYmF5bGli
cmUuY29tPg0KPiAtICogQmVybmhhcmQgUm9zZW5rcsOkbnplciA8YmVyb0BiYXlsaWJyZS5jb20+
DQo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgQmF5TGlicmUsIFNBUy4NCg0KDQpXaGF0IGlzIGhh
cHBlbmluZyB3aXRoIHlvdXIgY29weXJpZ2h0cz8gV2h5IGRvIHlvdSBjaGFuZ2UgZXhpc3Rpbmcg
b25lcz8NCg0KPiArICogQXV0aG9yczogRmFiaWVuIFBhcmVudCA8ZnBhcmVudEBiYXlsaWJyZS5j
b20+DQo+ICsgKgkgICAgQmVybmhhcmQgUm9zZW5rcsOkbnplciA8YmVyb0BiYXlsaWJyZS5jb20+
DQo+ICsgKgkgICAgQWxleGFuZHJlIE1lcmduYXQgPGFtZXJnbmF0QGJheWxpYnJlLmNvbT4NCj4g
ICAqLw0KPiAgDQo+ICAvZHRzLXYxLzsNCj4gQEAgLTg2LDYgKzg2LDI5IEBAIG9wdGVlX3Jlc2Vy
dmVkOiBvcHRlZUA0MzIwMDAwMCB7DQo+ICAJCQlyZWcgPSA8MCAweDQzMjAwMDAwIDAgMHgwMGMw
MDAwMD47DQo+ICAJCX07DQo+ICAJfTsNCj4gKw0KPiArCXNvdW5kOiBzb3VuZCB7DQo+ICsJCWNv
bXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MzY1LW10NjM1NyI7DQo+ICsJCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCIsDQo+ICsJCQkJImRtaWMiLA0KPiArCQkJCSJtaXNvX29mZiIsDQo+ICsJCQkJ
Im1pc29fb24iLA0KPiArCQkJCSJtb3NpX29mZiIsDQo+ICsJCQkJIm1vc2lfb24iOw0KPiArCQlw
aW5jdHJsLTAgPSA8JmF1ZF9kZWZhdWx0X3BpbnM+Ow0KPiArCQlwaW5jdHJsLTEgPSA8JmF1ZF9k
bWljX3BpbnM+Ow0KPiArCQlwaW5jdHJsLTIgPSA8JmF1ZF9taXNvX29mZl9waW5zPjsNCj4gKwkJ
cGluY3RybC0zID0gPCZhdWRfbWlzb19vbl9waW5zPjsNCj4gKwkJcGluY3RybC00ID0gPCZhdWRf
bW9zaV9vZmZfcGlucz47DQo+ICsJCXBpbmN0cmwtNSA9IDwmYXVkX21vc2lfb25fcGlucz47DQo+
ICsJCW1lZGlhdGVrLHBsYXRmb3JtID0gPCZhZmU+Ow0KPiArCQlzdGF0dXMgPSAib2theSI7DQoN
CldoZXJlIGRpZCB5b3UgZGlzYWJsZSB0aGUgbm9kZT8NCg0KPiArCX07DQo+ICt9Ow0KPiArDQo+
ICsmYWZlIHsNCj4gKwltZWRpYXRlayxkbWljLW1vZGUgPSA8MT47DQo+ICsJc3RhdHVzID0gIm9r
YXkiOw0KPiAgfTsNCj4gIA0KPiAgJmNwdTAgew0KPiBAQCAtMTc0LDYgKzE5NywxMiBAQCAmbW1j
MSB7DQo+ICAJc3RhdHVzID0gIm9rYXkiOw0KPiAgfTsNCj4gIA0KPiArJm10NjM1N19jb2RlYyB7
DQo+ICsJbWVkaWF0ZWssbWljYmlhczAtbWljcm92b2x0ID0gPDE5MDAwMDA+Ow0KPiArCW1lZGlh
dGVrLG1pY2JpYXMxLW1pY3Jvdm9sdCA9IDwxNzAwMDAwPjsNCj4gKwltZWRpYXRlayx2YXVkMjgt
c3VwcGx5ID0gPCZtdDYzNTdfdmF1ZDI4X3JlZz47DQo+ICt9Ow0KPiArDQo+ICAmbXQ2MzU3X3Bt
aWMgew0KPiAgCWludGVycnVwdHMtZXh0ZW5kZWQgPSA8JnBpbyAxNDUgSVJRX1RZUEVfTEVWRUxf
SElHSD47DQo+ICAJaW50ZXJydXB0LWNvbnRyb2xsZXI7DQo+IEBAIC0xODEsNiArMjEwLDY3IEBA
ICZtdDYzNTdfcG1pYyB7DQo+ICB9Ow0KPiAgDQo+ICAmcGlvIHsNCj4gKwlhdWRfZGVmYXVsdF9w
aW5zOiBhdWRpb2RlZmF1bHQtcGlucyB7DQo+ICsJCXBpbnMgew0KPiArCQlwaW5tdXggPSA8TVQ4
MzY1X1BJTl83Ml9DTURBVDRfX0ZVTkNfSTJTM19CQ0s+LA0KPiArCQkJIDxNVDgzNjVfUElOXzcz
X0NNREFUNV9fRlVOQ19JMlMzX0xSQ0s+LA0KPiArCQkJIDxNVDgzNjVfUElOXzc0X0NNREFUNl9f
RlVOQ19JMlMzX01DSz4sDQo+ICsJCQkgPE1UODM2NV9QSU5fNzVfQ01EQVQ3X19GVU5DX0kyUzNf
RE8+Ow0KDQpZb3UgaGF2ZSBicm9rZW4gaW5kZW50YXRpb24gZXZlcnl3aGVyZS4NCg0KQmVzdCBy
ZWdhcmRzLA0KS3J6eXN6dG9mDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
