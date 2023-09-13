Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EA79E223
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Sep 2023 10:30:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32EB23F024
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Sep 2023 08:30:57 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id 8210D3EF6B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Sep 2023 08:30:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=X8DoE2yn;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.170 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2bf66a32f25so85737771fa.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Sep 2023 01:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694593851; x=1695198651; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=26teksENA+dQQO6m1YUj6nkAa9mPqWw8dabp0DqJ9V8=;
        b=X8DoE2yn89oh5zvj+BegPNHNSqubzs5qJc10g5kkulXbro9ONbzrH0k8g4dTCkLfkr
         GojFEOCcLIUz3WE+7YcEL/zj3LW4F60RYSkFSmJc+7kq/+Ii7oumw6hg1JB7d0V2nro6
         Gb4EjU5GdsIulqgEJZusqIHbpi4MnKwAfbCCvuqDVR0W0XuyRIyBbfOU+cIWMROCO6nv
         hHnGoLT4gYHm9C5Di2NkSBiEOjBsbnw42IxSdwgX9QTjV/HA25gZvn8D94e4dB/nttDX
         d+Au4Sy8fd9aZj8LznquyeCBXMTEjf9OUUlSceQCNEvSFa68f3YaBFpY4g8pfkfbTLob
         xLdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694593851; x=1695198651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=26teksENA+dQQO6m1YUj6nkAa9mPqWw8dabp0DqJ9V8=;
        b=xG2nhqJ8k2nub+5TD8sUikAGsP7LqhWcWPzmVrRXQH0DoW45EfqKY/lWvnXZE8gwOR
         J+k9uOKjoEmf7XYdjsMPi+/gT+elAVD09lHKFaIULmU+WdIF/4DcxkokGnZk7b/7OKhR
         5l03QIiTHs3LNEG8s9nO/EaYA1/VGpPiYRrcai8q4vSXFXVPe985X8iatRhB+Owd7AFD
         eNA8iEfsT4H+vQyP2W9BeLMW4i785b4pL+5GjmEyD0uDaQTtk3qCHXU2R0hDIj7M9gRG
         Dj+0sVqcJoRth2UNAThHiFiRS0aNShN2ZxONHogKycd9XsUHKLq2BmxQ4rq2LC6ZjJv9
         84fg==
X-Gm-Message-State: AOJu0YyIwIz5CsDfkF5dXED6jHu0aXQUA00BM/0v+wonxOeojwjpHovE
	m14kUQ126ZVqmRlKPT0Tt2I=
X-Google-Smtp-Source: AGHT+IH2/KxD8HRd+/8D+6uqgFhSyd8oI5b2Jvm/JVpo0uqkvk9+3wNdGqJvpbQmoSGuz0Cu9iLiSg==
X-Received: by 2002:a2e:9f4e:0:b0:2bc:b75e:b88 with SMTP id v14-20020a2e9f4e000000b002bcb75e0b88mr2019335ljk.18.1694593850754;
        Wed, 13 Sep 2023 01:30:50 -0700 (PDT)
Received: from [10.254.108.106] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id m10-20020a7bcb8a000000b003fed7fa6c00sm1341375wmi.7.2023.09.13.01.30.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 01:30:50 -0700 (PDT)
Message-ID: <82b4b49a-1893-ea4d-3856-693a7824e939@gmail.com>
Date: Wed, 13 Sep 2023 10:30:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "jstultz@google.com" <jstultz@google.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-4-yong.wu@mediatek.com>
 <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
 <CANDhNCrQyiFZ+8DnG0iyKBXC0H1698K1a9d2AxOq4whDsZBn+Q@mail.gmail.com>
 <23e71d1f-08c1-3834-5b1f-2b5714c7bfaa@gmail.com>
 <255ae6b9ac1b6bea9262069747824b8461475e70.camel@mediatek.com>
 <95797f3d-65bf-1bd9-9e19-6de42605cfe3@gmail.com>
 <8140975aa1f5c3cbdfa2e6f42aecebe3701f29da.camel@ndufresne.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <8140975aa1f5c3cbdfa2e6f42aecebe3701f29da.camel@ndufresne.ca>
X-Rspamd-Queue-Id: 8210D3EF6B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,kernel.org,lists.infradead.org,lists.linaro.org,mediatek.com,arm.com,collabora.com,google.com,lists.freedesktop.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-lj1-f170.google.com:helo,mail-lj1-f170.google.com:rdns]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: X57IUBM2W5TUGUR3UKL66RAOQB5C5J2P
X-Message-ID-Hash: X57IUBM2W5TUGUR3UKL66RAOQB5C5J2P
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel
 @lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X57IUBM2W5TUGUR3UKL66RAOQB5C5J2P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDkuMjMgdW0gMTY6NTggc2NocmllYiBOaWNvbGFzIER1ZnJlc25lOg0KPiBMZSBtYXJk
aSAxMiBzZXB0ZW1icmUgMjAyMyDDoCAxNjo0NiArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyBhIMOp
Y3JpdMKgOg0KPj4gQW0gMTIuMDkuMjMgdW0gMTA6NTIgc2NocmllYiBZb25nIFd1ICjlkLTli4cp
Og0KPj4+IFtTTklQXQ0KPj4+PiBCdXQgd2hhdCB3ZSBzaG91bGQgdHJ5IHRvIGF2b2lkIGlzIHRo
YXQgbmV3bHkgbWVyZ2VkIGRyaXZlcnMgcHJvdmlkZQ0KPj4+PiBib3RoIGEgZHJpdmVyIHNwZWNp
ZmljIFVBUEkgYW5kIERNQS1oZWFwcy4gVGhlIGp1c3RpZmljYXRpb24gdGhhdA0KPj4+PiB0aGlz
DQo+Pj4+IG1ha2VzIGl0IGVhc2llciB0byB0cmFuc2l0IHVzZXJzcGFjZSB0byB0aGUgbmV3IFVB
UEkgZG9lc24ndCByZWFsbHkNCj4+Pj4gY291bnQuDQo+Pj4+DQo+Pj4+IFRoYXQgd291bGQgYmUg
YWRkaW5nIFVBUEkgYWxyZWFkeSB3aXRoIGEgcGxhbiB0byBkZXByZWNhdGUgaXQgYW5kDQo+Pj4+
IHRoYXQNCj4+Pj4gaXMgbW9zdCBsaWtlbHkgbm90IGhlbHBmdWwgY29uc2lkZXJpbmcgdGhhdCBV
QVBJIG11c3QgYmUgc3VwcG9ydGVkDQo+Pj4+IGZvcmV2ZXIgYXMgc29vbiBhcyBpdCBpcyB1cHN0
cmVhbS4NCj4+PiBTb3JyeSwgSSBkaWRuJ3QgdW5kZXJzdGFuZCB0aGlzLiBJIHRoaW5rIHdlIGhh
dmUgbm90IGNoYW5nZSB0aGUgVUFQSS4NCj4+PiBXaGljaCBjb2RlIGFyZSB5b3UgcmVmZXJyaW5n
IHRvPw0KPj4gV2VsbCwgd2hhdCBkbyB5b3UgbmVlZCB0aGlzIGZvciBpZiBub3QgYSBuZXcgVUFQ
ST8NCj4+DQo+PiBNeSBhc3N1bXB0aW9uIGhlcmUgaXMgdGhhdCB5b3UgbmVlZCB0byBleHBvcnQg
dGhlIERNQS1oZWFwIGFsbG9jYXRpb24NCj4+IGZ1bmN0aW9uIHNvIHRoYXQgeW91IGNhbiBzZXJ2
ZXIgYW4gVUFQSSBpbiB5b3VyIG5ldyBkcml2ZXIuIE9yIHdoYXQgZWxzZQ0KPj4gaXMgdGhhdCBn
b29kIGZvcj8NCj4+DQo+PiBBcyBmYXIgYXMgSSB1bmRlcnN0YW5kIHlvdSB0cnkgdG8gdXBzdHJl
YW0geW91ciBuZXcgdmNvZGVjIGRyaXZlci4gU28NCj4+IHdoaWxlIHRoaXMgY2hhbmdlIGhlcmUg
c2VlbXMgdG8gYmUgYSBnb29kIGlkZWEgdG8gY2xlYW4gdXAgZXhpc3RpbmcNCj4+IGRyaXZlcnMg
aXQgZG9lc24ndCBsb29rIGxpa2UgYSBnb29kIGlkZWEgZm9yIGEgbmV3bHkgY3JlYXRlZCBkcml2
ZXIuDQo+IE1USyBWQ09ERUMgaGFzIGJlZW4gdXBzdHJlYW0gZm9yIHF1aXRlIHNvbWUgdGltZSBu
b3cuIFRoZSBvdGhlciBwYXRjaHNldCBpcw0KPiB0cnlpbmcgdG8gYWRkIHNlY3VyZSBkZWNvZGlu
Zy9lbmNvZGluZyBzdXBwb3J0IHRvIHRoYXQgZXhpc3RpbmcgdXBzdHJlYW0gZHJpdmVyLg0KPg0K
PiBSZWdhcmRpbmcgdGhlIHVBUEksIGl0IHNlZW1zIHRoYXQgdGhpcyBhZGRpdGlvbiB0byBkbWFi
dWYgaGVhcCBpbnRlcm5hbCBBUEkgaXMNCj4gZXhhY3RseSB0aGUgb3Bwb3NpdGUuIEJ5IG1ha2lu
ZyBoZWFwcyBhdmFpbGFibGUgdG8gZHJpdmVycywgbW9kaWZpY2F0aW9uIHRvIHRoZQ0KPiBWNEwy
IHVBUEkgaXMgYmVpbmcgcmVkdWNlZCB0byBhZGRpbmcgIlNFQ1VSRV9NT0RFIiArICJTRUNVUkVf
SEVBUF9JRCIgY29udHJvbHMNCj4gKHRoaXMgaXMgbm90IGRlYmF0ZWQgeWV0IGhhcyBhbiBhcHBy
b2FjaCkuIFRoZSBoZWFwcyBpcyBiZWluZyB1c2VkIGludGVybmFsbHkgaW4NCj4gcmVwbGFjZW1l
bnQgdG8gZXZlcnkgYWxsb2NhdGlvbiwgdXNlciB2aXNpYmxlIG9yIG5vdC4NCg0KVGhhbmtzIGEg
bG90IGZvciB0aGF0IGV4cGxhbmF0aW9uLCBJIHdhcyByZWFsbHkgd29uZGVyaW5nIHdoYXQgdGhl
IHVzZSANCmNhc2UgZm9yIHRoaXMgaXMgaWYgaXQncyBub3QgdG8gc2VydmUgbmV3IFVBUEkuDQoN
CkluIHRoaXMgY2FzZSBJIGRvbid0IHNlZSBhbnkgcmVhc29uIHdoeSB3ZSBzaG91bGRuJ3QgZG8g
aXQuIEl0J3MgaW5kZWVkIA0KbXVjaCBjbGVhbmVyLg0KDQpDaHJpc3RpYW4uDQoNCj4NCj4gTmlj
b2xhcw0KPg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4+PiBTbyBJIHRoaW5r
IHRoaXMgcGF0Y2ggaXMgYSBsaXR0bGUgY29uZnVzaW5nIGluIHRoaXMgc2VyaWVzLCBhcyBJDQo+
Pj4+IGRvbid0DQo+Pj4+PiBzZWUgbXVjaCBvZiBpdCBhY3R1YWxseSBiZWluZyB1c2VkIGhlcmUg
KHRob3VnaCBmb3JnaXZlIG1lIGlmIEknbQ0KPj4+Pj4gbWlzc2luZyBpdCkuDQo+Pj4+Pg0KPj4+
Pj4gSW5zdGVhZCwgSXQgc2VlbXMgaXQgZ2V0IHVzZWQgaW4gYSBzZXBhcmF0ZSBwYXRjaCBzZXJp
ZXMgaGVyZToNCj4+Pj4+ICAgICAgDQo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDIzMDkxMTEyNTkzNi4xMDY0OC0xLXl1bmZlaS5kb25nQG1lZGlhdGVrLmNvbS8NCj4+Pj4NCj4+
Pj4gUGxlYXNlIHRyeSB0byBhdm9pZCBzdHVmZiBsaWtlIHRoYXQgaXQgaXMgcmVhbGx5IGNvbmZ1
c2luZyBhbmQgZWF0cw0KPj4+PiByZXZpZXdlcnMgdGltZS4NCj4+PiBNeSBmYXVsdCwgSSB0aG91
Z2h0IGRtYS1idWYgYW5kIG1lZGlhIGJlbG9uZ2VkIHRvIHRoZSBkaWZmZXJlbnQgdHJlZSwNCj4+
PiBzbyBJIHNlbmQgdGhlbSBzZXBhcmF0ZWx5LiBUaGUgY292ZXIgbGV0dGVyIGp1c3Qgc2FpZCAi
VGhlIGNvbnN1bWVycyBvZg0KPj4+IHRoZSBuZXcgaGVhcCBhbmQgbmV3IGludGVyZmFjZSBhcmUg
b3VyIGNvZGVjcyBhbmQgRFJNLCB3aGljaCB3aWxsIGJlDQo+Pj4gc2VudCB1cHN0cmVhbSBzb29u
IiwgYW5kIHRoZXJlIHdhcyBubyB2Y29kZWMgbGluayBhdCB0aGF0IHRpbWUuDQo+Pj4NCj4+PiBJ
biB0aGUgbmV4dCB2ZXJzaW9uLCB3ZSB3aWxsIHB1dCB0aGUgZmlyc3QgdGhyZWUgcGF0Y2hlcyBp
bnRvIHRoZQ0KPj4+IHZjb2RlYyBwYXRjaHNldC4NCj4+Pg0KPj4+IFRoYW5rcy4NCj4+Pg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
