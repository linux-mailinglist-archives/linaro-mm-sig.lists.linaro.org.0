Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2DB7CF765
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:49:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C52240C3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:49:30 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by lists.linaro.org (Postfix) with ESMTPS id D58F63ED7B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 22:16:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=XGneLR+T;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.166.174 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-34fa117f92bso19755ab.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 15:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695161771; x=1695766571; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qx6X0xE/S4amLJCM7NtzEUWnlj33ZBkwhJLGl58E30c=;
        b=XGneLR+TQ/slqRhM3td3SqXuwaK1BiiR4lkjRj8U0K8L8Muw7PoO3Vpo9tpxsyDxSg
         q0g4gJ1+hlNmSnSxo2czl+AHmWa76b2V18LX59LoNZvoLBVGYWDIpHiMW76PhBhz05Xa
         oKLlctAOVH/o7U/IPzFZcOSqVwY1utkGuexO5LA1jVKP3ZE8p23qQP50SaFDzDKq/NZE
         2sYS2IqLMOnYEqsmPyTNQNDWtcJv83/ieM4PpyzSlROPQG61Y0oQIbb8Sw+07tzy+7x4
         j+yTVOqkmzEQOYO8SfGiYgw90ySeafAYfKYx0VTHv75UWk/kPvt5T9qAqJy1QtPx4zN+
         hnzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695161771; x=1695766571;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qx6X0xE/S4amLJCM7NtzEUWnlj33ZBkwhJLGl58E30c=;
        b=So0WgcyTnoqfmwcxoI+f7flNutOC0YFrBO0+Mv4wBSDje5zLGGZSsw7fIvR9sBlT7h
         5TzPSFtmwtzaGKFKYiwXZDKYt/2Rn8BuiCWa3ewMmr/9mepv3oqGTVN3FSm1+P9LOFqi
         0WU/eb5ecDkboKbXSQ+7hHJvZKiaOQcXnPs9Uwjk23en80ohN+7xHJ0lcxrK1/dhUy0/
         ROSCMy4bjEOcAjPIsIWJhaljlQpOmBHHn9eN7hKOfqSrLhZ280IphNqwak1QhZOgJYoJ
         SQEakvOVMZlTAiEm4JagUbRbKezd22w+26AkXhnpeK45Whtt30EJOw0ZUxCVSCgPtLqr
         dupQ==
X-Gm-Message-State: AOJu0YxzCp0zCyqABwz2+q4IrUeiIx5FkCzemsb6fXYd1IPlP2IAuYDF
	0jxmvM9CkHcboPYfjKVKafN/lZUFzis+bz8mY3VK
X-Google-Smtp-Source: AGHT+IFu656+dV482iOm4cZxrrexPRdD0DlnR8zGkINMB46WE10oFo6V8aYZJV2oIbzlETIcCyiXYFcp0DlRO0Dyrxg=
X-Received: by 2002:a05:6e02:b21:b0:34f:ec9f:dd75 with SMTP id
 e1-20020a056e020b2100b0034fec9fdd75mr90136ilu.28.1695161770968; Tue, 19 Sep
 2023 15:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-9-yong.wu@mediatek.com>
 <20230911154448.GA1279317-robh@kernel.org> <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
 <c62a7ed8-d80a-3a82-040a-d4c74a71285a@linaro.org> <95f9dd3b-1f33-4af5-8757-a97e8b9bb216@arm.com>
 <20230912155338.GA842444-robh@kernel.org> <a63ab61fbf4d2bdadeb68441050ff5187c93ba96.camel@mediatek.com>
In-Reply-To: <a63ab61fbf4d2bdadeb68441050ff5187c93ba96.camel@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Tue, 19 Sep 2023 15:15:59 -0700
Message-ID: <CA+ddPcPFFpDA2qtxMg6BNztsXi3mVFRghBwe6556mAL54jB06g@mail.gmail.com>
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.174:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,arm.com,linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,amd.com,mediatek.com,collabora.com,lists.freedesktop.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D58F63ED7B
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZX4X2MDHCRJQJTU57ITEDCGCI5PCZTBN
X-Message-ID-Hash: ZX4X2MDHCRJQJTU57ITEDCGCI5PCZTBN
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:45:47 +0000
CC: "robh@kernel.org" <robh@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>, "krzysztof.kozlow.ski+dt@linaro.org" <krzysztof.kozlow.ski+dt@linaro.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.g
 aignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZX4X2MDHCRJQJTU57ITEDCGCI5PCZTBN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMTgsIDIwMjMgYXQgMzo0N+KAr0FNIFlvbmcgV3UgKOWQtOWLhykgPFlvbmcu
V3VAbWVkaWF0ZWsuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCAyMDIzLTA5LTEyIGF0IDEwOjUz
IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4gPg0KPiA+IEV4dGVybmFsIGVtYWlsIDogUGxl
YXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsDQo+ID4geW91
IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBvciB0aGUgY29udGVudC4NCj4gPiAgT24gVHVlLCBT
ZXAgMTIsIDIwMjMgYXQgMTE6MTM6NTBBTSArMDEwMCwgUm9iaW4gTXVycGh5IHdyb3RlOg0KPiA+
ID4gT24gMTIvMDkvMjAyMyA5OjI4IGFtLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOg0KPiA+
ID4gPiBPbiAxMi8wOS8yMDIzIDA4OjE2LCBZb25nIFd1ICjlkLTli4cpIHdyb3RlOg0KPiA+ID4g
PiA+IEhpIFJvYiwNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcu
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBPbiBNb24sIDIwMjMtMDktMTEgYXQgMTA6NDQgLTA1MDAs
IFJvYiBIZXJyaW5nIHdyb3RlOg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IEV4dGVybmFsIGVt
YWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuDQo+ID4gYXR0YWNobWVudHMg
dW50aWwNCj4gPiA+ID4gPiA+IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBzZW5kZXIgb3IgdGhlIGNv
bnRlbnQuDQo+ID4gPiA+ID4gPiAgIE9uIE1vbiwgU2VwIDExLCAyMDIzIGF0IDEwOjMwOjM3QU0g
KzA4MDAsIFlvbmcgV3Ugd3JvdGU6DQo+ID4gPiA+ID4gPiA+IFRoaXMgYWRkcyB0aGUgYmluZGlu
ZyBmb3IgZGVzY3JpYmluZyBhIENNQSBtZW1vcnkgZm9yDQo+ID4gTWVkaWFUZWsNCj4gPiA+ID4g
PiA+IFNWUChTZWN1cmUNCj4gPiA+ID4gPiA+ID4gVmlkZW8gUGF0aCkuDQo+ID4gPiA+ID4gPg0K
PiA+ID4gPiA+ID4gQ01BIGlzIGEgTGludXggdGhpbmcuIEhvdyBpcyB0aGlzIHJlbGF0ZWQgdG8g
Q01BPw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPiA+ID4gPiA+ID4gPiAtLS0NCj4g
PiA+ID4gPiA+ID4gICAuLi4vbWVkaWF0ZWssc2VjdXJlX2NtYV9jaHVua21lbS55YW1sICAgICAg
ICAgfCA0Mg0KPiA+ID4gPiA+ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+ID4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4gPiA+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0DQo+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2Vy
dmVkLQ0KPiA+ID4gPiA+ID4gbWVtb3J5L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFt
bA0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLQ0KPiA+ID4gPiA+ID4gbWVtb3J5L21lZGlh
dGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbA0KPiA+ID4gPiA+ID4gYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtDQo+ID4gPiA+ID4gPiBtZW1vcnkvbWVkaWF0
ZWssc2VjdXJlX2NtYV9jaHVua21lbS55YW1sDQo+ID4gPiA+ID4gPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0DQo+ID4gPiA+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2MxMGUwMGQzNWM0DQo+
ID4gPiA+ID4gPiA+IC0tLSAvZGV2L251bGwNCj4gPiA+ID4gPiA+ID4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLQ0KPiA+ID4gPiA+ID4gbWVtb3J5L21l
ZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbA0KPiA+ID4gPiA+ID4gPiBAQCAtMCwwICsx
LDQyIEBADQo+ID4gPiA+ID4gPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkNCj4gPiA+ID4gPiA+ID4gKyVZQU1MIDEuMg0KPiA+ID4g
PiA+ID4gPiArLS0tDQo+ID4gPiA+ID4gPiA+ICskaWQ6DQo+ID4gPiA+ID4gPg0KPiA+IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVkLW1lbW9yeS9tZWRpYXRlayxzZWN1cmVf
Y21hX2NodW5rbWVtLnlhbWwjDQo+ID4gPiA+ID4gPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4gPiA+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ID4gPiArdGl0bGU6IE1lZGlhVGVrIFNlY3VyZSBWaWRlbyBQYXRoIFJlc2VydmVkIE1lbW9y
eQ0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFdoYXQgbWFrZXMgdGhpcyBzcGVjaWZpYyB0byBN
ZWRpYXRlaz8gU2VjdXJlIHZpZGVvIHBhdGggaXMNCj4gPiBmYWlybHkNCj4gPiA+ID4gPiA+IGNv
bW1vbiwgcmlnaHQ/DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBIZXJlIHdlIGp1c3QgcmVzZXJ2ZSBh
IGJ1ZmZlciBhbmQgd291bGQgbGlrZSB0byBjcmVhdGUgYSBkbWEtDQo+ID4gYnVmIHNlY3VyZQ0K
PiA+ID4gPiA+IGhlYXAgZm9yIFNWUCwgdGhlbiB0aGUgc2VjdXJlIGVuZ2luZXMoVmNvZGVjIGFu
ZCBEUk0pIGNvdWxkDQo+ID4gcHJlcGFyZQ0KPiA+ID4gPiA+IHNlY3VyZSBidWZmZXIgdGhyb3Vn
aCBpdC4NCj4gPiA+ID4gPiBCdXQgdGhlIGhlYXAgZHJpdmVyIGlzIHB1cmUgU1cgZHJpdmVyLCBp
dCBpcyBub3QgcGxhdGZvcm0NCj4gPiBkZXZpY2UgYW5kDQo+ID4gPiA+DQo+ID4gPiA+IEFsbCBk
cml2ZXJzIGFyZSBwdXJlIFNXLg0KPiA+ID4gPg0KPiA+ID4gPiA+IHdlIGRvbid0IGhhdmUgYSBj
b3JyZXNwb25kaW5nIEhXIHVuaXQgZm9yIGl0LiBUaHVzIEkgZG9uJ3QNCj4gPiB0aGluayBJDQo+
ID4gPiA+ID4gY291bGQgY3JlYXRlIGEgcGxhdGZvcm0gZHRzaSBub2RlIGFuZCB1c2UgIm1lbW9y
eS1yZWdpb24iDQo+ID4gcG9pbnRlciB0bw0KPiA+ID4gPiA+IHRoZSByZWdpb24uIEkgdXNlZCBS
RVNFUlZFRE1FTV9PRl9ERUNMQVJFIGN1cnJlbnRseShUaGUgY29kZSBpcw0KPiA+IGluDQo+ID4g
PiA+ID4gWzkvOV0pLiBTb3JyeSBpZiB0aGlzIGlzIG5vdCByaWdodC4NCj4gPiA+ID4NCj4gPiA+
ID4gSWYgdGhpcyBpcyBub3QgZm9yIGFueSBoYXJkd2FyZSBhbmQgeW91IGFscmVhZHkgdW5kZXJz
dGFuZCB0aGlzDQo+ID4gKHNpbmNlDQo+ID4gPiA+IHlvdSBjYW5ub3QgdXNlIG90aGVyIGJpbmRp
bmdzKSB0aGVuIHlvdSBjYW5ub3QgaGF2ZSBjdXN0b20NCj4gPiBiaW5kaW5ncyBmb3INCj4gPiA+
ID4gaXQgZWl0aGVyLg0KPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gVGhlbiBpbiBvdXIg
dXNhZ2UgY2FzZSwgaXMgdGhlcmUgc29tZSBzaW1pbGFyIG1ldGhvZCB0byBkbw0KPiA+IHRoaXM/
IG9yDQo+ID4gPiA+ID4gYW55IG90aGVyIHN1Z2dlc3Rpb24/DQo+ID4gPiA+DQo+ID4gPiA+IERv
bid0IHN0dWZmIHNvZnR3YXJlIGludG8gRFRTLg0KPiA+ID4NCj4gPiA+IEFyZW4ndCBtb3N0IHJl
c2VydmVkLW1lbW9yeSBiaW5kaW5ncyBqdXN0IHNvZnR3YXJlIHBvbGljeSBpZiB5b3UNCj4gPiBs
b29rIGF0IGl0DQo+ID4gPiB0aGF0IHdheSwgdGhvdWdoPyBJSVVDIHRoaXMgaXMgYSBwb29sIG9m
IG1lbW9yeSB0aGF0IGlzIHZpc2libGUgYW5kDQo+ID4gPiBhdmFpbGFibGUgdG8gdGhlIE5vbi1T
ZWN1cmUgT1MsIGJ1dCBpcyBmdW5kYW1lbnRhbGx5IG93bmVkIGJ5IHRoZQ0KPiA+IFNlY3VyZQ0K
PiA+ID4gVEVFLCBhbmQgcGFnZXMgdGhhdCB0aGUgVEVFIGFsbG9jYXRlcyBmcm9tIGl0IHdpbGwg
YmVjb21lDQo+ID4gcGh5c2ljYWxseQ0KPiA+ID4gaW5hY2Nlc3NpYmxlIHRvIHRoZSBPUy4gVGh1
cyB0aGUgcGxhdGZvcm0gZG9lcyBpbXBvc2UgY29uc3RyYWludHMNCj4gPiBvbiBob3cgdGhlDQo+
ID4gPiBOb24tU2VjdXJlIE9TIG1heSB1c2UgaXQsIGFuZCBwZXIgdGhlIHJlc3Qgb2YgdGhlIHJl
c2VydmVkLW1lbW9yeQ0KPiA+IGJpbmRpbmdzLA0KPiA+ID4gZGVzY3JpYmluZyBpdCBhcyBhICJy
ZXVzYWJsZSIgcmVzZXJ2YXRpb24gc2VlbXMgZW50aXJlbHkNCj4gPiBhcHByb3ByaWF0ZS4gSWYN
Cj4gPiA+IGFueXRoaW5nIHRoYXQncyAqbW9yZSogcGxhdGZvcm0tcmVsYXRlZCBhbmQgc28gRFQt
cmVsZXZhbnQgdGhhbg0KPiA+IHR5cGljYWwNCj4gPiA+IGFyYml0cmFyeSByZXNlcnZhdGlvbnMg
d2hpY2gganVzdCByZXByZXNlbnQgInNhdmUgc29tZSBtZW1vcnkgdG8NCj4gPiBkZWRpY2F0ZSB0
bw0KPiA+ID4gYSBwYXJ0aWN1bGFyIGRyaXZlciIgYW5kIGRvbid0IGFjdHVhbGx5IGJlYXIgYW55
IHJlbGF0aW9uc2hpcCB0bw0KPiA+IGZpcm13YXJlIG9yDQo+ID4gPiBoYXJkd2FyZSBhdCBhbGwu
DQo+ID4NCj4gPiBZZXMsIGEgbWVtb3J5IHJhbmdlIGRlZmluZWQgYnkgaGFyZHdhcmUgb3IgZmly
bXdhcmUgaXMgd2l0aGluIHNjb3BlDQo+ID4gb2YNCj4gPiBEVC4gKENNQSBhdCBhcmliaXRyYXJ5
IGFkZHJlc3Mgd2FzIHF1ZXN0aW9uYWJsZS4pDQo+DQoNCkJlZm9yZSBJIHJlcGx5LCBteSBjb250
ZXh0IGlzIHRoYXQgSSdtIHVzaW5nIHRoZXNlIHBhdGNoZXMgZnJvbQ0KTWVkaWF0ZWsgb24gQ2hy
b21lT1MgdG8gaW1wbGVtZW50IHNlY3VyZSB2aWRlbyBwbGF5YmFjay4NCg0KPiBJIGd1ZXNzIHRo
ZSBtZW1vcnkgcmFuZ2UgaXMgbm90ICJkZWZpbmVkIiBieSBIVyBpbiBvdXIgY2FzZSwgYnV0IHRo
aXMNCj4gcmVzZXJ2ZSBidWZmZXIgaXMgaW5kZWVkIHByZXBhcmVkIGZvciBhbmQgdXNlZCBieSBI
Vy4NCj4NClRoZSBtZW1vcnkgcmFuZ2UgaXMgZGVmaW5lZCBpbiB0aGUgZmlybXdhcmUuIFRoZSBU
RUUgaXMgY29uZmlndXJlZA0Kd2l0aCB0aGUgc2FtZSBhZGRyZXNzL3NpemUgdGhhdCBpcyBiZWlu
ZyBzZXQgaW4gdGhpcyBEVCBub2RlLiAoc28NCmJhc2VkIG9uIGNvbW1lbnRzIGFscmVhZHksIHRo
aXMgaXMgYXBwcm9wcmlhdGUgdG8gcHV0IGluIHRoZSBEVCkuDQoNCj4gSWYgdGhpcyBpcyBhIG5v
cm1hbCByZXNlcnZlZCBidWZmZXIgZm9yIHNvbWUgZGV2aWNlLCB3ZSBjb3VsZCBkZWZpbmUgYQ0K
PiByZXNlcnZlZC1tZW1vcnkgd2l0aCAic2hhcmVkLWRtYS1wb29sIiwgdGhlbiB0aGUgZGV2aWNl
IHVzZSBpdCB2aWENCj4gIm1lbW9yeS1yZWdpb24iIHByb3BlcnR5LCBpcyB0aGlzIHJpZ2h0Pw0K
Pg0KPiBIZXJlIGl0IGlzIGEgc2VjdXJlIGJ1ZmZlciBjYXNlIGFuZCB0aGlzIHVzYWdlIHJlbGF0
aW9uc2hpcCBpcw0KPiBpbmRpcmVjdC4gV2UgY3JlYXRlIGEgbmV3IGhlYXAgZm9yIHRoaXMgbmV3
IHNlY3VyZSB0eXBlIG1lbW9yeSwgb3RoZXINCj4gdXNlcnMgc3VjaCBhcyBWQ09ERUMgYW5kIERS
TSBhbGxvY2F0ZSBzZWN1cmUgbWVtb3J5IHRocm91Z2ggdGhlIG5ldw0KPiBoZWFwLg0KPg0KPiBB
Ym91dCB0aGUgYXJpYml0cmFyeSBhZGRyZXNzIGlzIGJlY2F1c2Ugd2UgaGF2ZSBIVyByZWdpc3Rl
ciBmb3IgaXQuIEFzDQo+IGxvbmcgYXMgdGhpcyBpcyBhIGxlZ2FsIGRyYW0gYWRkcmVzcywgaXQg
aXMgZmluZS4gV2hlbiB0aGlzIGFkZHJlc3MgaXMNCj4gcGFzc2VkIGludG8gVEVFLCBpdCB3aWxs
IGJlIHByb3RlY3RlZCBieSBIVy4NCj4NCj4gPg0KPiA+IE15IGlzc3VlIGhlcmUgaXMgbW9yZSB0
aGF0ICdzZWN1cmUgdmlkZW8gbWVtb3J5JyBpcyBub3QgYW55IHdheQ0KPiA+IE1lZGlhdGVrDQo+
ID4gc3BlY2lmaWMuDQo+DQo+IFNvcnJ5LCBJIGRvbid0IGtub3cgaWYgdGhlcmUgYWxyZWFkeSBp
cyBhbiBTVlAgY2FzZSBpbiB0aGUgY3VycmVudA0KPiBrZXJuZWwuIElmIHNvLCBjb3VsZCB5b3Ug
aGVscCBzaGFyZSBpdD8NCg0KSSBkb24ndCB0aGluayB0aGVyZSBpcyBhbnkgU1ZQIChTZWN1cmUg
VmlkZW8gUGF0aCkgY2FzZSBpbiB0aGUgY3VycmVudA0Ka2VybmVsLiBJIGFncmVlIHRoaXMgc2hv
dWxkbid0IGJlIGEgTWVkaWF0ZWsgc3BlY2lmaWMgc2V0dGluZywgYXMgdGhpcw0KY291bGQgYmUg
dXNhYmxlIHRvIG90aGVyIFNWUCBpbXBsZW1lbnRhdGlvbnMuDQoNCkkgZG8gdGhpbmsgdGhpcyBz
aG91bGQgaGF2ZSAnY21hJyBpbiB0aGUgRFQgZGVzY3JpcHRpb24sIGFzIGl0IGRvZXMNCnJlbGF0
ZSB0byB3aGF0IHRoZSBkcml2ZXIgaXMgZ29pbmcgdG8gZG8gd2l0aCB0aGlzIG1lbW9yeSByZWdp
b24uIEl0DQp3aWxsIGVzdGFibGlzaCBpdCBhcyBhIENNQSByZWdpb24gaW4gTGludXguIFRoZSBy
ZWFzb24gaXQgbmVlZHMgdG8gYmUNCmEgQ01BIHJlZ2lvbiBpcyB0aGF0IHRoZSBlbnRpcmUgbWVt
b3J5IHJlZ2lvbiB3aWxsIG5lZWQgdG8gdHJhbnNpdGlvbg0KYmV0d2VlbiBzZWN1cmUgKGkuZS4g
VEVFIG93bmVkKSBhbmQgbm9uLXNlY3VyZSAoaS5lLiBrZXJuZWwgb3duZWQpLg0KU29tZSBjaGlw
c2V0cyBoYXZlIHRoZSBhYmlsaXR5IHRvIGNoYW5nZSBtZW1vcnkgc3RhdGVzIGJldHdlZW4gc2Vj
dXJlDQomIG5vbi1zZWN1cmUgYXQgcGFnZSBsZXZlbCBncmFudWxhcml0eSwgYW5kIGluIHRoZXNl
IGNhc2VzIHlvdSBkb24ndA0KbmVlZCB0byB3b3JyeSBhYm91dCBoYXZpbmcgYSBDTUEgcmVnaW9u
IGxpa2UgdGhpcy4gVGhhdCBpcyBub3QgdGhlDQpjYXNlIG9uIHRoZSBNZWRpYXRlayBjaGlwcyB3
aGVyZSB0aGVyZSBpcyBhIGxpbWl0IHRvIGhvdyBtYW55IHJlZ2lvbnMNCnlvdSBjYW4gbWFyayBh
cyBzZWN1cmUuIEluIG9yZGVyIHRvIGRlYWwgd2l0aCB0aGF0IGxpbWl0YXRpb24sIG9uY2UgYQ0K
c2VjdXJlIGFsbG9jYXRpb24gbmVlZHMgdG8gYmUgcGVyZm9ybWVkLCB0aGUga2VybmVsIGRyaXZl
ciBhbGxvY2F0ZXMNCnRoZSBlbnRpcmUgQ01BIHJlZ2lvbiBzbyBub3RoaW5nIGVsc2Ugd2lsbCB1
c2UgaXQuIFRoZW4gaXQgbWFya3MgdGhhdA0Kd2hvbGUgcmVnaW9uIHNlY3VyZSBhbmQgdGhlIFRF
RSBjYW4gZG8gaXRzIG93biBhbGxvY2F0aW9ucyBmcm9tIHRoYXQNCnJlZ2lvbi4gV2hlbiBhbGwg
dGhvc2UgYWxsb2NhdGlvbnMgYXJlIGZyZWVkLCBpdCBjYW4gbWFyayB0aGF0IHJlZ2lvbg0KYXMg
bm9uLXNlY3VyZSBhZ2FpbiwgZHJvcCB0aGUgd2hvbGUgQ01BIGFsbG9jYXRpb24gYW5kIHRoZSBr
ZXJuZWwgY2FuDQptYWtlIHVzZSBvZiB0aGF0IENNQSByZWdpb24gYWdhaW4uICAodGhlcmUgaXMg
dGhlIG90aGVyIGRtYS1oZWFwIGluDQp0aGVpciBwYXRjaGVzLCB3aGljaCBpcyBmb3IgYSBzbWFs
bGVyIHJlZ2lvbiB0aGF0IGNhbiBhbHdheXMgYmUNCnNlY3VyZS4uLmJ1dCB0aGF0IG9uZSBpcyBh
IHBlcm1hbmVudCBjYXJ2ZW91dCwgdGhlIENNQSByZWdpb24gaXMNCmF2YWlsYWJsZSB0byB0aGUg
a2VybmVsIHdoaWxlIG5vdCBpbiB1c2UgZm9yIHNlY3VyZSBtZW1vcnkpDQoNClNvIG1heWJlIHNv
bWV0aGluZyBsaWtlOg0KDQordGl0bGU6U2VjdXJlIFJlc2VydmVkIENNQSBSZWdpb24NCisNCitk
ZXNjcmlwdGlvbjoNCisgIFRoaXMgYmluZGluZyBkZXNjcmliZXMgYSBDTUEgcmVnaW9uIHRoYXQg
Y2FuIGR5bmFtaWNhbGx5IHRyYW5zaXRpb24NCmJldHdlZW4gc2VjdXJlIGFuZCBub24tc2VjdXJl
IHN0YXRlcyB0aGF0IGEgVEVFIGNhbiBhbGxvY2F0ZSBtZW1vcnkNCmZyb20uDQorDQorbWFpbnRh
aW5lcnM6DQorICAtIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KKw0KK2FsbE9mOg0K
KyAgLSAkcmVmOiByZXNlcnZlZC1tZW1vcnkueWFtbA0KKw0KK3Byb3BlcnRpZXM6DQorICBjb21w
YXRpYmxlOg0KKyAgICBjb25zdDogc2VjdXJlX2NtYV9yZWdpb24NCisNCityZXF1aXJlZDoNCisg
IC0gY29tcGF0aWJsZQ0KKyAgLSByZWcNCisgIC0gcmV1c2FibGUNCisNCit1bmV2YWx1YXRlZFBy
b3BlcnRpZXM6IGZhbHNlDQorDQorZXhhbXBsZXM6DQorICAtIHwNCisNCisgICAgcmVzZXJ2ZWQt
bWVtb3J5IHsNCisgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KKyAgICAgICAgI3NpemUt
Y2VsbHMgPSA8MT47DQorICAgICAgICByYW5nZXM7DQorDQorICAgICAgICByZXNlcnZlZC1tZW1v
cnlAODAwMDAwMDAgew0KKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic2VjdXJlX2NtYV9yZWdp
b24iOw0KKyAgICAgICAgICAgIHJldXNhYmxlOw0KKyAgICAgICAgICAgIHJlZyA9IDwweDgwMDAw
MDAwIDB4MTgwMDAwMDA+Ow0KKyAgICAgICAgfTsNCisgICAgfTsNCi0tIA0KDQoNCj4NCj4gUmVn
YXJkaW5nIG91ciBzcGVjaWFsLCB0aGUgbmV3IGhlYXAgZHJpdmVyIG1heSBiZSBkaWZmZXJlbnQs
IGFuZCBvdGhlcg0KPiBIV3Mgc2hhcmUgdGhpcyByZXNlcnZlIGJ1ZmZlciBhbmQgbWFuYWdlIGl0
IHRocm91Z2ggdGhpcyBwdXJlIFNXIGhlYXAuDQo+DQo+ID4gIEFJVUksIGl0J3MgYSByZXF1aXJl
bWVudCBmcm9tIGNlcnRhaW4gY29udGVudCBwcm92aWRlcnMgZm9yDQo+ID4gdmlkZW8gcGxheWJh
Y2sgdG8gd29yay4gU28gd2h5IHRoZSBNZWRpYXRlayBzcGVjaWZpYyBiaW5kaW5nPw0KPiA+DQo+
ID4gUm9iDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
