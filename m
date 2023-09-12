Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A381079D3FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 16:46:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2313F3F02B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 14:46:39 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 1988D3EF28
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 14:46:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=irHGFiCO;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-401da71b7c5so64904585e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 07:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694529993; x=1695134793; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K8sFu0+D3E77YJ4z9rbydrUcmzYi8cL1xr3GzlsZe4w=;
        b=irHGFiCOzGndjWEHP2bPOQKX0rIlvd7Hbv7QgYoKZLhrOOafS9si0iZM7IwAP9F6YE
         ahRuqHdvhuDBYYxr76wuvLNhw2pgh+96sSejATZDpV3z19ZFtLFsNv7qW0z3L5NXT81T
         NyrTiArYJGRziDkkyheXdjfkFUdYZSYQaCewNDhrfBnGS0iMOWdE9QSpP5la7eb12UTf
         8HsNMxOQ0ApHJl0sC6kvPABNXjPOK3rvTJgjBJ80NnVjVobLG6wNqRsZ+AIAzBG/vi64
         mllJ77iGBcMjI47YgEvKQEo6ig41lsp1pGLOQ4KjiDZKVzNd0ok8qQ4e8gn04XX9iqm9
         SYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694529993; x=1695134793;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K8sFu0+D3E77YJ4z9rbydrUcmzYi8cL1xr3GzlsZe4w=;
        b=stqx6wpwaasoEXkVLO7d0S3FwdOF/SAC/K7Km64umB3YhXSZdimLot95UxsDSf35Bp
         6EkY8Jv100mt1Nb8vMLRDnVjJXmakwLMiXCIxBokj4gYPcjc2vqT9V9XmJICEK44NpwT
         jMiRYgAftIokAzQRKuLAHkh8W97egjCI5CVs0/lCld0ewSdzFywsXgMmDHSbbcpA3qvM
         /Xa4r2MIIWxdoHe5Sm3H2CKjElw1vuFJ/wXy+wqPfqDDHdda0GKX2qgl0a3mG2HDGqUY
         uA8SBB9Oqax8rRsr/+FTT2b2bJIDaAoGx7aC66uGBzE3lMMvuQHzfkSxY0ni9euUn+As
         ixyA==
X-Gm-Message-State: AOJu0YyQyEsslhvnYQI5VGQVCN8xW3veIrORHQ5Ce1mFvZ37KrReAwlh
	SyXQH17VOn/JxNcCgROji7c=
X-Google-Smtp-Source: AGHT+IGHXQb8saBAd6H+9uYnotfhWfZV5PqBMgupUePv5+BNFjR2MQXXacKt9iDypQAL5TYLBL9epA==
X-Received: by 2002:a05:600c:3b1e:b0:402:f536:41c5 with SMTP id m30-20020a05600c3b1e00b00402f53641c5mr10911758wms.3.1694529992631;
        Tue, 12 Sep 2023 07:46:32 -0700 (PDT)
Received: from [10.254.108.106] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id t15-20020a7bc3cf000000b00402be2666bcsm16448614wmj.6.2023.09.12.07.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 07:46:32 -0700 (PDT)
Message-ID: <95797f3d-65bf-1bd9-9e19-6de42605cfe3@gmail.com>
Date: Tue, 12 Sep 2023 16:46:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "jstultz@google.com" <jstultz@google.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-4-yong.wu@mediatek.com>
 <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
 <CANDhNCrQyiFZ+8DnG0iyKBXC0H1698K1a9d2AxOq4whDsZBn+Q@mail.gmail.com>
 <23e71d1f-08c1-3834-5b1f-2b5714c7bfaa@gmail.com>
 <255ae6b9ac1b6bea9262069747824b8461475e70.camel@mediatek.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <255ae6b9ac1b6bea9262069747824b8461475e70.camel@mediatek.com>
X-Rspamd-Queue-Id: 1988D3EF28
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.94%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,kernel.org,lists.infradead.org,lists.linaro.org,mediatek.com,arm.com,collabora.com,google.com,lists.freedesktop.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	BLOCKLISTDE_FAIL(0.00)[165.204.72.6:server fail];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-wm1-f48.google.com:helo,mail-wm1-f48.google.com:rdns]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NC2JHGA4YPWBBHI7MMRQ7HVVIAN54FDJ
X-Message-ID-Hash: NC2JHGA4YPWBBHI7MMRQ7HVVIAN54FDJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel
 @lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NC2JHGA4YPWBBHI7MMRQ7HVVIAN54FDJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDkuMjMgdW0gMTA6NTIgc2NocmllYiBZb25nIFd1ICjlkLTli4cpOg0KPiBbU05JUF0N
Cj4+IEJ1dCB3aGF0IHdlIHNob3VsZCB0cnkgdG8gYXZvaWQgaXMgdGhhdCBuZXdseSBtZXJnZWQg
ZHJpdmVycyBwcm92aWRlDQo+PiBib3RoIGEgZHJpdmVyIHNwZWNpZmljIFVBUEkgYW5kIERNQS1o
ZWFwcy4gVGhlIGp1c3RpZmljYXRpb24gdGhhdA0KPj4gdGhpcw0KPj4gbWFrZXMgaXQgZWFzaWVy
IHRvIHRyYW5zaXQgdXNlcnNwYWNlIHRvIHRoZSBuZXcgVUFQSSBkb2Vzbid0IHJlYWxseQ0KPj4g
Y291bnQuDQo+Pg0KPj4gVGhhdCB3b3VsZCBiZSBhZGRpbmcgVUFQSSBhbHJlYWR5IHdpdGggYSBw
bGFuIHRvIGRlcHJlY2F0ZSBpdCBhbmQNCj4+IHRoYXQNCj4+IGlzIG1vc3QgbGlrZWx5IG5vdCBo
ZWxwZnVsIGNvbnNpZGVyaW5nIHRoYXQgVUFQSSBtdXN0IGJlIHN1cHBvcnRlZA0KPj4gZm9yZXZl
ciBhcyBzb29uIGFzIGl0IGlzIHVwc3RyZWFtLg0KPiBTb3JyeSwgSSBkaWRuJ3QgdW5kZXJzdGFu
ZCB0aGlzLiBJIHRoaW5rIHdlIGhhdmUgbm90IGNoYW5nZSB0aGUgVUFQSS4NCj4gV2hpY2ggY29k
ZSBhcmUgeW91IHJlZmVycmluZyB0bz8NCg0KV2VsbCwgd2hhdCBkbyB5b3UgbmVlZCB0aGlzIGZv
ciBpZiBub3QgYSBuZXcgVUFQST8NCg0KTXkgYXNzdW1wdGlvbiBoZXJlIGlzIHRoYXQgeW91IG5l
ZWQgdG8gZXhwb3J0IHRoZSBETUEtaGVhcCBhbGxvY2F0aW9uIA0KZnVuY3Rpb24gc28gdGhhdCB5
b3UgY2FuIHNlcnZlciBhbiBVQVBJIGluIHlvdXIgbmV3IGRyaXZlci4gT3Igd2hhdCBlbHNlIA0K
aXMgdGhhdCBnb29kIGZvcj8NCg0KQXMgZmFyIGFzIEkgdW5kZXJzdGFuZCB5b3UgdHJ5IHRvIHVw
c3RyZWFtIHlvdXIgbmV3IHZjb2RlYyBkcml2ZXIuIFNvIA0Kd2hpbGUgdGhpcyBjaGFuZ2UgaGVy
ZSBzZWVtcyB0byBiZSBhIGdvb2QgaWRlYSB0byBjbGVhbiB1cCBleGlzdGluZyANCmRyaXZlcnMg
aXQgZG9lc24ndCBsb29rIGxpa2UgYSBnb29kIGlkZWEgZm9yIGEgbmV3bHkgY3JlYXRlZCBkcml2
ZXIuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4+PiBTbyBJIHRoaW5rIHRoaXMgcGF0Y2gg
aXMgYSBsaXR0bGUgY29uZnVzaW5nIGluIHRoaXMgc2VyaWVzLCBhcyBJDQo+PiBkb24ndA0KPj4+
IHNlZSBtdWNoIG9mIGl0IGFjdHVhbGx5IGJlaW5nIHVzZWQgaGVyZSAodGhvdWdoIGZvcmdpdmUg
bWUgaWYgSSdtDQo+Pj4gbWlzc2luZyBpdCkuDQo+Pj4NCj4+PiBJbnN0ZWFkLCBJdCBzZWVtcyBp
dCBnZXQgdXNlZCBpbiBhIHNlcGFyYXRlIHBhdGNoIHNlcmllcyBoZXJlOg0KPj4+ICAgICANCj4+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDkxMTEyNTkzNi4xMDY0OC0xLXl1bmZl
aS5kb25nQG1lZGlhdGVrLmNvbS8NCj4+DQo+PiBQbGVhc2UgdHJ5IHRvIGF2b2lkIHN0dWZmIGxp
a2UgdGhhdCBpdCBpcyByZWFsbHkgY29uZnVzaW5nIGFuZCBlYXRzDQo+PiByZXZpZXdlcnMgdGlt
ZS4NCj4gTXkgZmF1bHQsIEkgdGhvdWdodCBkbWEtYnVmIGFuZCBtZWRpYSBiZWxvbmdlZCB0byB0
aGUgZGlmZmVyZW50IHRyZWUsDQo+IHNvIEkgc2VuZCB0aGVtIHNlcGFyYXRlbHkuIFRoZSBjb3Zl
ciBsZXR0ZXIganVzdCBzYWlkICJUaGUgY29uc3VtZXJzIG9mDQo+IHRoZSBuZXcgaGVhcCBhbmQg
bmV3IGludGVyZmFjZSBhcmUgb3VyIGNvZGVjcyBhbmQgRFJNLCB3aGljaCB3aWxsIGJlDQo+IHNl
bnQgdXBzdHJlYW0gc29vbiIsIGFuZCB0aGVyZSB3YXMgbm8gdmNvZGVjIGxpbmsgYXQgdGhhdCB0
aW1lLg0KPg0KPiBJbiB0aGUgbmV4dCB2ZXJzaW9uLCB3ZSB3aWxsIHB1dCB0aGUgZmlyc3QgdGhy
ZWUgcGF0Y2hlcyBpbnRvIHRoZQ0KPiB2Y29kZWMgcGF0Y2hzZXQuDQo+DQo+IFRoYW5rcy4NCj4N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
