Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB59B70F2F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:36:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8B774140E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:36:27 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by lists.linaro.org (Postfix) with ESMTPS id 7AD583EF13
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:53:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=hGYIQsrs;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.128.65 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-3f608074b50so1207625e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 01:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684745588; x=1687337588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r4JxhaVexhQpy8daiRNDw+XTd4Z91THI1tcDfW2c6HE=;
        b=hGYIQsrsHnFEjQuK41XgS3jgFHGmSkmDmGtZqfqKbMqaw1+roK7luzJGgf6MkEI2zf
         LqSzON1Zmed3SV4ToTWAPBXTyvtUhV9/8BCRoPKLguRVN5e4YBErEdR6/iXkgr3w9zE5
         W4aKjz3F4KTe2c3j6kFwE4TdtneueV0LY7ZEt0yjmGJmTeBgneLZHGLd9Y5ags2ZDhae
         Q0TT+80cDnDkrcVtC6mKi1S3g1p/XIxKWym0HyRrbbgeMEikjwyJ03sHhQcufI7aiV4Q
         NEDGLQcwWgPgAjXuMgjJUDQE1/rby2Z3aJWEmCe4axLQbKwyT3jCR2BgkZU+gClV7wO/
         ACMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684745588; x=1687337588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r4JxhaVexhQpy8daiRNDw+XTd4Z91THI1tcDfW2c6HE=;
        b=ehq8C3GNCHnqhDwwxs32yXFQRhXhFiNM9aDhm3GjkUNOt/OXuvOjdCvlwRWxIv9P4s
         sfGfapIeQofEnmPfs/BiQIRVNZXbx+RFfr37rdEba8WjcI7gIWGiyd4elX6zxKsAaB+k
         Taxn6GVwN2zR0YsewMGF6MYScaxEiTfIRJ7IXcijG6W0/5+cwoochiYWKUnjbptq89kg
         FHDIwljo25kgLBFLYLoP6Wd2sJr1cOEoBHlFYt3/ne+3bo4HrzflWGIC4hiajByOLHXt
         kO9uvos9Ja3gOF6Gea/UCZkElE2jFuK9YhvCX/53DGuOKGZ8bOM2t7iMf80nBcvU2xE1
         DLIg==
X-Gm-Message-State: AC+VfDzKeKIwHDTz8dRR92tFU97BxLm0jSlYF9aGyzofsc4B/ISkDAfO
	VBUCapW/Xbf53IvjvPO7WNDOtA==
X-Google-Smtp-Source: ACHHUZ6UBR3+LBI+m8V1SPTaOnzgCK0atCcXfHxkCN2098SLTc/lFSwqy+8q2uw7iLTos5PH9rKVCw==
X-Received: by 2002:a7b:c414:0:b0:3f4:2610:5cc7 with SMTP id k20-20020a7bc414000000b003f426105cc7mr6538472wmi.9.1684745588453;
        Mon, 22 May 2023 01:53:08 -0700 (PDT)
Received: from [10.1.4.6] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id p4-20020a05600c358400b003f1738d0d13sm24745899wmq.1.2023.05.22.01.53.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 01:53:08 -0700 (PDT)
Message-ID: <116712ae-f18b-3288-ac6d-80073aebd458@baylibre.com>
Date: Mon, 22 May 2023 10:53:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
 <c32f0c3f-b43a-7045-38cc-2c11c7bb571e@collabora.com>
Content-Language: en-US
From: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <c32f0c3f-b43a-7045-38cc-2c11c7bb571e@collabora.com>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.65:from];
	DMARC_NA(0.00)[baylibre.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7AD583EF13
X-Spamd-Bar: --
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BJZSGKOIS5FFOLV5RGPPIRCV7JXVQSP6
X-Message-ID-Hash: BJZSGKOIS5FFOLV5RGPPIRCV7JXVQSP6
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:01 +0000
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BJZSGKOIS5FFOLV5RGPPIRCV7JXVQSP6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCk9uIDUvMTcvMjMgMTc6MDQsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOg0K
PiBJbCAxNy8wNS8yMyAxNjo1MiwgQWxleGFuZHJlIEJhaWxvbiBoYSBzY3JpdHRvOg0KPj4gVGhp
cyBhZGRzIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5ncyBmb3IgdGhlIEFQVSBEUk0gZHJpdmVyLg0K
Pj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBCYWlsb24gPGFiYWlsb25AYmF5bGlicmUu
Y29tPg0KPj4gUmV2aWV3ZWQtYnk6IEp1bGllbiBTdGVwaGFuIDxqc3RlcGhhbkBiYXlsaWJyZS5j
b20+DQo+PiAtLS0NCj4+IMKgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9tdGssYXB1LWRy
bS55YW1swqAgfCAzOCArKysrKysrKysrKysrKysrKysrDQo+IA0KPiBtZWRpYXRlayxtdChtb2Rl
bCktYXB1LnlhbWwNCj4gDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQ0K
Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IA0KPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2dwdS9tdGssYXB1LWRybS55YW1sDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvbXRrLGFwdS1kcm0ueWFtbCANCj4+IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9tdGssYXB1LWRybS55YW1sDQo+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMDAwMDAwLi42ZjQzMmQzZWE0NzgN
Cj4+IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9ncHUvbXRrLGFwdS1kcm0ueWFtbA0KPj4gQEAgLTAsMCArMSwzOCBAQA0KPj4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UNCj4+ICsl
WUFNTCAxLjINCj4+ICstLS0NCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L2dwdS9tZWRpYXRlayxhcHUtZHJtLnlhbWwjDQo+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQo+PiArDQo+PiArdGl0bGU6IEFJIFByb2Nl
c3NvciBVbml0IERSTQ0KPj4gKw0KPj4gK3Byb3BlcnRpZXM6DQo+PiArwqAgY29tcGF0aWJsZToN
Cj4+ICvCoMKgwqAgY29uc3Q6IG1lZGlhdGVrLGFwdS1kcm0NCj4gDQo+IGNvbnN0OiBtZWRpYXRl
ayxtdDgxOTUtYXB1IChvciB3aGF0ZXZlciBlbHNlKS4NCj4gDQo+IC4uLmJlc2lkZXMsIEkgZG9u
J3QgdGhpbmsgdGhhdCB0aGlzIHBhdGNoIGV2ZW4gYmVsb25ncyB0byB0aGlzIHNlcmllcz8gOi0p
DQo+IFNwb2lsZXIgYWxlcnQhIDotKQ0KQWN0dWFsbHksIGl0IGRvZXMhDQpJIGZvcmdvdCB0byBz
ZW5kIHRoZSBwYXRjaCB0aGF0IGFkZHMgdGhlIHBsYXRmb3JtIGRyaXZlciBeXicNCg0KVGhhbmtz
LA0KQWxleGFuZHJlDQo+IA0KPiBDaGVlcnMsDQo+IEFuZ2Vsbw0KPiANCj4gDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
