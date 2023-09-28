Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5603F7CF786
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:53:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6769C40C48
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:53:15 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id C340640D4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Sep 2023 08:30:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=bo6PJkpy;
	spf=pass (lists.linaro.org: domain of benjamin.gaignard@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [IPV6:2a01:e0a:120:3210:cdc6:9c5d:b170:7a75] (unknown [IPv6:2a01:e0a:120:3210:cdc6:9c5d:b170:7a75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 254056607334;
	Thu, 28 Sep 2023 09:30:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695889852;
	bh=M2yUgu8++KjSMa6YXyi+nFtyh9bccq2mCtfV/AWp02o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bo6PJkpySA6SGEm7klrzEVnbgtwY3WJ38T/pXu2i2ryTYLBvH0DEfsNxyo8RyyQOK
	 bhDLMFmLrU+UviNFuahZvcsPd7dyBjiBAckgcCSvbw/IgldcLHFHNqtwJ41Wotnhzn
	 tMOBNfQinHFDAU8P6yjRiV712VqJAUn83WfMnw4wj8fhZp2UFWE/f14n2Du3Jw1A0+
	 66EET78hA+0iykW66k64h2G+WwTqSZ4eqM5PmFN/Zb7akEeHCheVeeD7FcJpLCnxRs
	 +jZ9hf7Fzl3CKAjN+mNd+LX8HJMeAkEiZwSuTVKsjogFmo5XjakMZ7JLg3PlevwhYN
	 GUACtNijOgFMg==
Message-ID: <80695726-1a98-12d4-ad7d-d731f2f3caeb@collabora.com>
Date: Thu, 28 Sep 2023 10:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Jeffrey Kardatzke <jkardatzke@google.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
 <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com>
 <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
 <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
 <CA+ddPcP4=p37cV5Tbn5zTUbiL4ou+Yqb=5rS+O_ff8ZUw64D3Q@mail.gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CA+ddPcP4=p37cV5Tbn5zTUbiL4ou+Yqb=5rS+O_ff8ZUw64D3Q@mail.gmail.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,gmail.com,amd.com,collabora.com,kernel.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,arm.com,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C340640D4B
X-MailFrom: benjamin.gaignard@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7JMGT2DEENHI3NZYW6HBUYNYV3EQ4LXG
X-Message-ID-Hash: 7JMGT2DEENHI3NZYW6HBUYNYV3EQ4LXG
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:47:25 +0000
CC: Joakim Bech <joakim.bech@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm
 .com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7JMGT2DEENHI3NZYW6HBUYNYV3EQ4LXG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpMZSAyNy8wOS8yMDIzIMOgIDIwOjU2LCBKZWZmcmV5IEthcmRhdHprZSBhIMOpY3JpdMKgOg0K
PiBPbiBXZWQsIFNlcCAyNywgMjAyMyBhdCA4OjE44oCvQU0gQmVuamFtaW4gR2FpZ25hcmQNCj4g
PGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPj4NCj4+IExlIDI3LzA5
LzIwMjMgw6AgMTU6NDYsIEpvYWtpbSBCZWNoIGEgw6ljcml0IDoNCj4+PiBPbiBNb24sIFNlcCAy
NSwgMjAyMyBhdCAxMjo0OTo1MFBNICswMDAwLCBZb25nIFd1ICjlkLTli4cpIHdyb3RlOg0KPj4+
PiBPbiBUdWUsIDIwMjMtMDktMTIgYXQgMTE6MzIgKzAyMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVs
IFJlZ25vIHdyb3RlOg0KPj4+Pj4gSWwgMTIvMDkvMjMgMDg6MTcsIFlvbmcgV3UgKOWQtOWLhykg
aGEgc2NyaXR0bzoNCj4+Pj4+PiBPbiBNb24sIDIwMjMtMDktMTEgYXQgMTE6MjkgKzAyMDAsIEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vDQo+Pj4+Pj4gd3JvdGU6DQo+Pj4+Pj4+IElsIDExLzA5
LzIzIDA0OjMwLCBZb25nIFd1IGhhIHNjcml0dG86DQo+Pj4+Pj4+PiBUaGUgVEVFIHByb2JlIGxh
dGVyIHRoYW4gZG1hLWJ1ZiBoZWFwLCBhbmQgUFJPQkVfREVERVIgZG9lc24ndA0KPj4+Pj4+Pj4g
d29yaw0KPj4+Pj4+Pj4gaGVyZSBzaW5jZSB0aGlzIGlzIG5vdCBhIHBsYXRmb3JtIGRyaXZlciwg
dGhlcmVmb3JlIGluaXRpYWxpc2UNCj4+Pj4+Pj4+IHRoZQ0KPj4+Pj4+Pj4gVEVFDQo+Pj4+Pj4+
PiBjb250ZXh0L3Nlc3Npb24gd2hpbGUgd2UgYWxsb2NhdGUgdGhlIGZpcnN0IHNlY3VyZSBidWZm
ZXIuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBt
ZWRpYXRlay5jb20+DQo+Pj4+Pj4+PiAtLS0NCj4+Pj4+Pj4+ICAgICAgZHJpdmVycy9kbWEtYnVm
L2hlYXBzL210a19zZWN1cmVfaGVhcC5jIHwgNjENCj4+Pj4+Pj4+ICsrKysrKysrKysrKysrKysr
KysrKysrKysNCj4+Pj4+Pj4+ICAgICAgMSBmaWxlIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykN
Cj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210
a19zZWN1cmVfaGVhcC5jDQo+Pj4+Pj4+PiBiL2RyaXZlcnMvZG1hLQ0KPj4+Pj4+Pj4gYnVmL2hl
YXBzL210a19zZWN1cmVfaGVhcC5jDQo+Pj4+Pj4+PiBpbmRleCBiYmYxYzhkY2UyM2UuLmUzZGEz
M2EzZDA4MyAxMDA2NDQNCj4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtf
c2VjdXJlX2hlYXAuYw0KPj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19z
ZWN1cmVfaGVhcC5jDQo+Pj4+Pj4+PiBAQCAtMTAsNiArMTAsMTIgQEANCj4+Pj4+Pj4+ICAgICAg
I2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPj4+Pj4+Pj4gICAgICAjaW5jbHVkZSA8bGludXgvbW9k
dWxlLmg+DQo+Pj4+Pj4+PiAgICAgICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+Pj4+Pj4+PiAr
I2luY2x1ZGUgPGxpbnV4L3RlZV9kcnYuaD4NCj4+Pj4+Pj4+ICsjaW5jbHVkZSA8bGludXgvdXVp
ZC5oPg0KPj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4gKyNkZWZpbmUgVFpfVEFfTUVNX1VVSUQgICAgICAg
ICAgIjQ0Nzc1ODhhLTg0NzYtMTFlMi1hZDE1LQ0KPj4+Pj4+Pj4gZTQxZjEzOTBkNjc2Ig0KPj4+
Pj4+Pj4gKw0KPj4+Pj4+PiBJcyB0aGlzIFVVSUQgdGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBh
bGwgVFogdmVyc2lvbnM/DQo+Pj4+Pj4gWWVzLiBJdCBpcyB0aGUgc2FtZSBmb3IgYWxsIFNvQ3Mg
YW5kIGFsbCBUWiB2ZXJzaW9ucyBjdXJyZW50bHkuDQo+Pj4+Pj4NCj4+Pj4+IFRoYXQncyBnb29k
IG5ld3MhDQo+Pj4+Pg0KPj4+Pj4gSXMgdGhpcyBVVUlEIHVzZWQgaW4gYW55IHVzZXJzcGFjZSBj
b21wb25lbnQ/IChleGFtcGxlOiBBbmRyb2lkDQo+Pj4+PiBIQUxzPykNCj4+Pj4gTm8uIFVzZXJz
cGFjZSBuZXZlciB1c2UgaXQuIElmIHVzZXJzcGFjZSB3b3VsZCBsaWtlIHRvIGFsbG9jYXRlIHRo
aXMNCj4+Pj4gc2VjdXJlIGJ1ZmZlciwgaXQgY2FuIGFjaGlldmUgdGhyb3VnaCB0aGUgZXhpc3Rp
bmcgZG1hYnVmIElPQ1RMIHZpYQ0KPj4+PiAvZGV2L2RtYV9oZWFwL210a19zdnAgbm9kZS4NCj4+
Pj4NCj4+PiBJbiBnZW5lcmFsIEkgdGhpbmsgYXMgbWVudGlvbmVkIGVsc2V3aGVyZSBpbiBjb21t
ZW50cywgdGhhdCB0aGVyZSBpc24ndA0KPj4+IHRoYXQgbXVjaCBoZXJlIHRoYXQgc2VlbXMgdG8g
YmUgdW5pcXVlIGZvciBNZWRpYVRlayBpbiB0aGlzIHBhdGNoDQo+Pj4gc2VyaWVzLCBzbyBJIHRo
aW5rIGl0IHdvcnRoIHRvIHNlZSB3aGV0aGVyIHRoaXMgd2hvbGUgcGF0Y2ggc2V0IGNhbiBiZQ0K
Pj4+IG1hZGUgbW9yZSBnZW5lcmljLiBIYXZpbmcgc2FpZCB0aGF0LCB0aGUgVVVJRCBpcyBhbHdh
eXMgdW5pcXVlIGZvciBhDQo+Pj4gY2VydGFpbiBUcnVzdGVkIEFwcGxpY2F0aW9uLiBTbywgaXQn
cyBub3QgZW50aXJlbHkgdHJ1ZSBzYXlpbmcgdGhhdCB0aGUNCj4+PiBVVUlEIGlzIHRoZSBzYW1l
IGZvciBhbGwgU29DcyBhbmQgYWxsIFRydXN0Wm9uZSB2ZXJzaW9ucy4gSXQgbWlnaHQgYmUNCj4+
PiB0cnVlIGZvciBhIGZhbWlseSBvZiBNZWRpYVRlayBkZXZpY2VzIGFuZCB0aGUgVEVFIGluIHVz
ZSwgYnV0IG5vdA0KPj4+IGdlbmVyaWNhbGx5Lg0KPj4+DQo+Pj4gU28sIGlmIHdlIG5lZWQgdG8g
ZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIGRpZmZlcmVudCBUQSBpbXBsZW1lbnRhdGlvbnMsDQo+Pj4g
dGhlbiB3ZSBuZWVkIGRpZmZlcmVudCBVVUlEcy4gSWYgaXQgd291bGQgYmUgcG9zc2libGUgdG8g
bWFrZSB0aGlzIHBhdGNoDQo+Pj4gc2V0IGdlbmVyaWMsIHRoZW4gaXQgc291bmRzIGxpa2UgYSBz
aW5nbGUgVVVJRCB3b3VsZCBiZSBzdWZmaWNpZW50LCBidXQNCj4+PiB0aGF0IHdvdWxkIGltcGx5
IHRoYXQgYWxsIFRBJ3Mgc3VwcG9ydGluZyBzdWNoIGEgZ2VuZXJpYyBVVUlEIHdvdWxkIGJlDQo+
Pj4gaW1wbGVtZW50ZWQgdGhlIHNhbWUgZnJvbSBhbiBBUEkgcG9pbnQgb2Ygdmlldy4gV2hpY2gg
YWxzbyBtZWFucyB0aGF0DQo+Pj4gZm9yIGV4YW1wbGUgVHJ1c3RlZCBBcHBsaWNhdGlvbiBmdW5j
dGlvbiBJRCdzIG5lZWRzIHRvIGJlIHRoZSBzYW1lIGV0Yy4NCj4+PiBOb3QgaW1wb3NzaWJsZSB0
byBhY2hpZXZlLCBidXQgc3RpbGwgbm90IGVhc3kgKGRpZmZlcmVudCBURUUgZm9sbG93cw0KPj4+
IGRpZmZlcmVudCBzcGVjaWZpY2F0aW9ucykgYW5kIGl0J3Mgbm90IHR5cGljYWxseSBzb21ldGhp
bmcgd2UndmUgZG9uZSBpbg0KPj4+IHRoZSBwYXN0Lg0KPj4+DQo+Pj4gVW5mb3J0dW5hdGVseSB0
aGVyZSBpcyBubyBzdGFuZGFyZGl6ZWQgZGF0YWJhc2Ugb2YgVEEncyBkZXNjcmliaW5nIHdoYXQN
Cj4+PiB0aGV5IGltcGxlbWVudCBhbmQgc3VwcG9ydC4NCj4+Pg0KPj4+IEFzIGFuIGFsdGVybmF0
aXZlLCB3ZSBjb3VsZCBpbXBsZW1lbnQgYSBxdWVyeSBjYWxsIGluIHRoZSBURUUgYW5zd2VyaW5n
LA0KPj4+ICJXaGF0IFVVSUQgZG9lcyB5b3VyIFRBIGhhdmUgdGhhdCBpbXBsZW1lbnRzIHNlY3Vy
ZSB1bm1hcHBlZCBoZWFwPyIuDQo+Pj4gSS5lLiwgc29tZXRoaW5nIHRoYXQgcmVtaW5kcyBvZiBh
IGxvb2t1cCB0YWJsZS4gVGhlbiB3ZSB3b3VsZG4ndCBoYXZlIHRvDQo+Pj4gY2FycnkgdGhpcyBp
biBVQVBJLCBEVCBvciBhbnl3aGVyZSBlbHNlLg0KPj4gSm9ha2ltIGRvZXMgYSBUQSBjb3VsZCBv
ZmZlciBhIGdlbmVyaWMgQVBJIGFuZCBoaWRlIHRoZSBoYXJkd2FyZSBzcGVjaWZpYw0KPj4gZGV0
YWlscyAobGlrZSBrZXJuZWwgdUFQSSBkb2VzIGZvciBkcml2ZXJzKSA/DQo+IEl0IHdvdWxkIGhh
dmUgdG8gZ28gdGhyb3VnaCBhbm90aGVyIGxheWVyIChsaWtlIHRoZSB0ZWUgZHJpdmVyKSB0byBi
ZQ0KPiBhIGdlbmVyaWMgQVBJLiBUaGUgbWFpbiBpc3N1ZSB3aXRoIFRBcyBpcyB0aGF0IHRoZXkg
aGF2ZSBVVUlEcyB5b3UNCj4gbmVlZCB0byBjb25uZWN0IHRvIGFuZCBzcGVjaWZpYyBjb2RlcyBm
b3IgZWFjaCBmdW5jdGlvbjsgc28gd2Ugc2hvdWxkDQo+IGFic3RyYWN0IGF0IGEgbGF5ZXIgYWJv
dmUgd2hlcmUgdGhvc2UgZXhpc3QgaW4gdGhlIGRtYS1oZWFwIGNvZGUuDQo+PiBBc2lkZSB0aGF0
IHF1ZXN0aW9uIEkgd29uZGVyIHdoYXQgYXJlIHRoZSBuZWVkcyB0byBwZXJmb3JtIGEgJ3NlY3Vy
ZScgcGxheWJhY2suDQo+PiBJIGhhdmUgaW4gbWluZCAyIHJlcXVpcmVtZW50czoNCj4+IC0gc2Vj
dXJlIG1lbW9yeSByZWdpb25zLCB3aGljaCBtZWFucyBjb25maWd1cmUgdGhlIGhhcmR3YXJlIHRv
IGVuc3VyZSB0aGF0IG9ubHkNCj4+IGRlZGljYXRlZCBoYXJkd2FyZSBibG9ja3MgYW5kIHJlYWQg
b3Igd3JpdGUgaW50byBpdC4NCj4+IC0gc2V0IGhhcmR3YXJlIGJsb2NrcyBpbiBzZWN1cmUgbW9k
ZXMgc28gdGhleSBhY2Nlc3MgdG8gc2VjdXJlIG1lbW9yeS4NCj4+IERvIHlvdSBzZWUgc29tZXRo
aW5nIGVsc2UgPw0KPiBUaGlzIGlzIG1vcmUgb3IgbGVzcyB3aGF0IGlzIHJlcXVpcmVkLCBidXQg
dGhpcyBpcyBvdXQgb2Ygc2NvcGUgZm9yDQo+IHRoZSBMaW51eCBrZXJuZWwgc2luY2UgaXQgY2Fu
J3QgYmUgdHJ1c3RlZCB0byBkbyB0aGVzZSB0aGluZ3MuLi50aGlzDQo+IGlzIGFsbCBkb25lIGlu
IGZpcm13YXJlIG9yIHRoZSBURUUgaXRzZWxmLg0KDQpZZXMga2VybmVsIGNhbid0IGJlIHRydXN0
ZWQgdG8gZG8gdGhlc2UgdGhpbmdzIGJ1dCBrbm93IHdoYXQgd2UgbmVlZCBjb3VsZCBoZWxwDQp0
byBkZWZpbmUgYSBBUEkgZm9yIGEgZ2VuZXJpYyBUQS4NCg0KSnVzdCB0byBicmFpbnN0b3JtIG9u
IG1haWxpbmcgbGlzdDoNCldoYXQgYWJvdXQgYSBUQSBBUEkgbGlrZQ0KVEFfc2VjdXJlX21lbW9y
eV9yZWdpb24oKSBhbmQgVEFfdW5zZWN1cmVfbWVtb3J5X3JlZ2lvbigpIHdpdGggcGFyYW1ldGVy
cyBsaWtlOg0KLSBkZXZpY2UgaWRlbnRpZmllciAoYW4gSUQgb3IgY29tcGF0aWJsZSBzdHJpbmcg
bWF5YmUpDQotIG1lbW9yeSByZWdpb24gKHBoeXNpY2FsIGFkZHJlc3MsIHNpemUsIG9mZnNldCkN
Ci0gcmVxdWVzdGVkIGFjY2VzcyByaWdodHMgKHJlYWQsIHdyaXRlKQ0KDQphbmQgb24ga2VybmVs
IHNpZGUgYSBJT01NVSBkcml2ZXIgYmVjYXVzZSBpdCBiYXNpY2FsbHkgaGF2ZSBhbGwgdGhpcyBp
bmZvcm1hdGlvbiBhbHJlYWR5DQooZGV2aWNlIGF0dGFjaG1lbnQsIGtlcm5lbCBtYXAvdW5tYXAp
Lg0KDQpJbiBteSBtaW5kIGl0IHNvdW5kIGxpa2UgYSBzb2x1dGlvbiB0byBsaW1pdCB0aGUgaW1w
YWN0IChuZXcgY29udHJvbHMsIG5ldyBtZW1vcnkgdHlwZSkNCmluc2lkZSB2NGwyLiBQcm9iYWJs
eSB3ZSB3b24ndCBuZWVkIG5ldyBoZWFwIGVpdGhlci4NCkFsbCBoYXJkd2FyZSBkZWRpY2F0ZWQg
aW1wbGVtZW50YXRpb25zIGNvdWxkIGxpdmUgaW5zaWRlIHRoZSBUQSB3aGljaCBjYW4gb2ZmZXIg
YSBnZW5lcmljDQpBUEkuDQoNCj4+IFJlZ2FyZHMsDQo+PiBCZW5qYW1pbg0KPj4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
