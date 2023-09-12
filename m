Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B4679C9EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 10:28:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67F2F3EFF6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 08:28:45 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 85FBD3EAC0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 08:28:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Lba65NZV;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.218.49 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-9a21b6d105cso678543266b.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 01:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507318; x=1695112118; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VLzVKDkkOXZ4N+LBDosJ9GVpBHoDNwCkMSqFqUtTQYE=;
        b=Lba65NZVW3TzTSUsU0VShL+v7Y1oii6ZTDUbgDUuIqgWQ7B5ExmiG/txBszm+iV5kp
         Rb8qgfZF18rhBoZDAnEAAzgCtSXwYCzRA3O6T2Jh48UVd6La+XrMJcHmRAlqWyK3y9IB
         zG9TD3n/6ECjgZnkMC2mHm+zOgI4dB1pMa0ZeeU0rpJoOQgCgDVOz4r37L7ptmtObQvm
         TiB8o1VzPQYTvK59EXcPOcGIDA+mal8qOAlMh+A6gbAUZiZ1HRVa2HkJ92b2p625+kaU
         aRhFxGSwiojc0St2ZSAcmi1o1nBmfnzpQ7WdJ0Avjm41X2UwEnNjN/Tm29PzQCNyxynO
         hT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507318; x=1695112118;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VLzVKDkkOXZ4N+LBDosJ9GVpBHoDNwCkMSqFqUtTQYE=;
        b=gt/UX3GSaqdXpxoMmau7Ki3Jx/vQ9OI9+b8f2+vznGrXzCDwqtzteLmlFd0DxxzVWI
         /JocoptxINgy0GWCmPXaFaVwRTPB0qUTuJqMKK6AwcJkAExrcQ0gz9NVuyzZZ7QIsiaR
         ZTZSrxTwyZclEnQoOQmBfBtff7/Sgtyhpk8kD8l/Qhz3wYper9yYm5mPQp/OLcxy4Xbv
         +uLSAeJeT044g5HgjBOaCPrA6n8o/2paAmAMW54ELaichASHjj81z6pLcAmXJ8ituhqh
         zV2rQBa/Ci5n0V11dUxnYBVWrELJQ9yQqZ/UXW8ggk7vP89soxdH4KSKHZZQx7clU6KK
         xY8w==
X-Gm-Message-State: AOJu0YykRfp8vLgH9e8Vn3RBC0bxb30JGunWXXB9qVgz/XH/SUvlSEBQ
	nSV2DqXt8JYB/lkAmO42K2h5npH8
X-Google-Smtp-Source: AGHT+IHki0HI2dzDOWH07bBWQQqpwLHYoRHu3OffIZhdj/Y17PLOWS/fEeXHSa+TXIl8iuit84dkTA==
X-Received: by 2002:a17:907:2ccb:b0:9a9:ee3d:48e3 with SMTP id hg11-20020a1709072ccb00b009a9ee3d48e3mr9692911ejc.12.1694507318462;
        Tue, 12 Sep 2023 01:28:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id q18-20020a170906a09200b0099b8234a9fesm6507600ejy.1.2023.09.12.01.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:28:37 -0700 (PDT)
Message-ID: <c62a7ed8-d80a-3a82-040a-d4c74a71285a@linaro.org>
Date: Tue, 12 Sep 2023 10:28:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "robh@kernel.org" <robh@kernel.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-9-yong.wu@mediatek.com>
 <20230911154448.GA1279317-robh@kernel.org>
 <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
X-Rspamd-Queue-Id: 85FBD3EAC0
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,amd.com,mediatek.com,arm.com,kernel.org,collabora.com,lists.freedesktop.org,gmail.com];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3HGUJ7VYONOPD7INWSBMJT2IWI56CN5J
X-Message-ID-Hash: 3HGUJ7VYONOPD7INWSBMJT2IWI56CN5J
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg
 @gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HGUJ7VYONOPD7INWSBMJT2IWI56CN5J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMDkvMjAyMyAwODoxNiwgWW9uZyBXdSAo5ZC05YuHKSB3cm90ZToNCj4gSGkgUm9iLA0K
PiANCj4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4NCj4gDQo+IE9uIE1vbiwgMjAyMy0wOS0xMSBh
dCAxMDo0NCAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6DQo+PiAgCSANCj4+IEV4dGVybmFsIGVt
YWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGls
DQo+PiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBjb250ZW50Lg0KPj4gIE9u
IE1vbiwgU2VwIDExLCAyMDIzIGF0IDEwOjMwOjM3QU0gKzA4MDAsIFlvbmcgV3Ugd3JvdGU6DQo+
Pj4gVGhpcyBhZGRzIHRoZSBiaW5kaW5nIGZvciBkZXNjcmliaW5nIGEgQ01BIG1lbW9yeSBmb3Ig
TWVkaWFUZWsNCj4+IFNWUChTZWN1cmUNCj4+PiBWaWRlbyBQYXRoKS4NCj4+DQo+PiBDTUEgaXMg
YSBMaW51eCB0aGluZy4gSG93IGlzIHRoaXMgcmVsYXRlZCB0byBDTUE/DQo+IA0KPj4+DQo+Pj4g
U2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+Pj4gLS0tDQo+
Pj4gIC4uLi9tZWRpYXRlayxzZWN1cmVfY21hX2NodW5rbWVtLnlhbWwgICAgICAgICB8IDQyDQo+
PiArKysrKysrKysrKysrKysrKysrDQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25z
KCspDQo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcmVzZXJ2ZWQtDQo+PiBtZW1vcnkvbWVkaWF0ZWssc2VjdXJlX2NtYV9jaHVua21lbS55
YW1sDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3Jlc2VydmVkLQ0KPj4gbWVtb3J5L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFt
bA0KPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtDQo+PiBt
ZW1vcnkvbWVkaWF0ZWssc2VjdXJlX2NtYV9jaHVua21lbS55YW1sDQo+Pj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmNjMTBlMDBkMzVjNA0KPj4+IC0tLSAv
ZGV2L251bGwNCj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVz
ZXJ2ZWQtDQo+PiBtZW1vcnkvbWVkaWF0ZWssc2VjdXJlX2NtYV9jaHVua21lbS55YW1sDQo+Pj4g
QEAgLTAsMCArMSw0MiBAQA0KPj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkNCj4+PiArJVlBTUwgMS4yDQo+Pj4gKy0tLQ0KPj4+ICsk
aWQ6IA0KPj4gaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcmVzZXJ2ZWQtbWVtb3J5L21l
ZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbCMNCj4+PiArJHNjaGVtYTogaHR0cDovL2Rl
dmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQo+Pj4gKw0KPj4+ICt0aXRsZTog
TWVkaWFUZWsgU2VjdXJlIFZpZGVvIFBhdGggUmVzZXJ2ZWQgTWVtb3J5DQo+Pg0KPj4gV2hhdCBt
YWtlcyB0aGlzIHNwZWNpZmljIHRvIE1lZGlhdGVrPyBTZWN1cmUgdmlkZW8gcGF0aCBpcyBmYWly
bHkgDQo+PiBjb21tb24sIHJpZ2h0Pw0KPiANCj4gSGVyZSB3ZSBqdXN0IHJlc2VydmUgYSBidWZm
ZXIgYW5kIHdvdWxkIGxpa2UgdG8gY3JlYXRlIGEgZG1hLWJ1ZiBzZWN1cmUNCj4gaGVhcCBmb3Ig
U1ZQLCB0aGVuIHRoZSBzZWN1cmUgZW5naW5lcyhWY29kZWMgYW5kIERSTSkgY291bGQgcHJlcGFy
ZQ0KPiBzZWN1cmUgYnVmZmVyIHRocm91Z2ggaXQuDQo+ICANCj4gQnV0IHRoZSBoZWFwIGRyaXZl
ciBpcyBwdXJlIFNXIGRyaXZlciwgaXQgaXMgbm90IHBsYXRmb3JtIGRldmljZSBhbmQNCg0KQWxs
IGRyaXZlcnMgYXJlIHB1cmUgU1cuDQoNCj4gd2UgZG9uJ3QgaGF2ZSBhIGNvcnJlc3BvbmRpbmcg
SFcgdW5pdCBmb3IgaXQuIFRodXMgSSBkb24ndCB0aGluayBJDQo+IGNvdWxkIGNyZWF0ZSBhIHBs
YXRmb3JtIGR0c2kgbm9kZSBhbmQgdXNlICJtZW1vcnktcmVnaW9uIiBwb2ludGVyIHRvDQo+IHRo
ZSByZWdpb24uIEkgdXNlZCBSRVNFUlZFRE1FTV9PRl9ERUNMQVJFIGN1cnJlbnRseShUaGUgY29k
ZSBpcyBpbiANCj4gWzkvOV0pLiBTb3JyeSBpZiB0aGlzIGlzIG5vdCByaWdodC4NCg0KSWYgdGhp
cyBpcyBub3QgZm9yIGFueSBoYXJkd2FyZSBhbmQgeW91IGFscmVhZHkgdW5kZXJzdGFuZCB0aGlz
IChzaW5jZQ0KeW91IGNhbm5vdCB1c2Ugb3RoZXIgYmluZGluZ3MpIHRoZW4geW91IGNhbm5vdCBo
YXZlIGN1c3RvbSBiaW5kaW5ncyBmb3INCml0IGVpdGhlci4NCg0KPiANCj4gVGhlbiBpbiBvdXIg
dXNhZ2UgY2FzZSwgaXMgdGhlcmUgc29tZSBzaW1pbGFyIG1ldGhvZCB0byBkbyB0aGlzPyBvcg0K
PiBhbnkgb3RoZXIgc3VnZ2VzdGlvbj8NCg0KRG9uJ3Qgc3R1ZmYgc29mdHdhcmUgaW50byBEVFMu
DQoNCkJlc3QgcmVnYXJkcywNCktyenlzenRvZg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
