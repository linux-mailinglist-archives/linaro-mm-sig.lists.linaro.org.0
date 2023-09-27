Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 023917CF77D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:52:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1496040C57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:52:18 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id B711F3F2F4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 15:18:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=nvQ+joYf;
	spf=pass (lists.linaro.org: domain of benjamin.gaignard@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [IPV6:2a01:e0a:120:3210:672:46bd:3ec7:6cdf] (unknown [IPv6:2a01:e0a:120:3210:672:46bd:3ec7:6cdf])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 01CC266072FA;
	Wed, 27 Sep 2023 16:18:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695827881;
	bh=cZBkE6AW/WssOj4Sg/xEx/jkclNbZ+Y8K8ys56ebtZE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nvQ+joYfwJYLudibSGOOzSGLGqZ+UOM4ouQwSmesmc4Rnn8MMjLisKOD74cHJrbNu
	 Hdg+Rf8A8LUaI0W5eqotS0MAgkfIn5Qp4gUveDyLdym4xfy/LWWxhWqw4zZ4OiLh3z
	 WbeER/mejIiJT6i33HVqeydwaHbS8FMoxV3q7qm7rxqGjXCCs4R5KRdzPfcoyO/A+j
	 xGdDtHGikNoAQCRVO8YB6ebSzYlqvmXfGbfa1wOyVr7fNJEL1Ufk3eVVqz+pbfttwN
	 0HyqihJMmzpZRvN3NvjmPtgAQDYMFA4+uWovXxx6T8wlJc6sGmwSBbKO1Eu/xBaMLI
	 W49r7tGjgdx+w==
Message-ID: <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
Date: Wed, 27 Sep 2023 17:17:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Joakim Bech <joakim.bech@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?=
 <Yong.Wu@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
 <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com>
 <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
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
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,collabora.com,kernel.org,linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,mediatek.com,arm.com,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B711F3F2F4
X-MailFrom: benjamin.gaignard@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YOUIXEM4UGCT3Q4HGM6TZ5OWMOSQHOPW
X-Message-ID-Hash: YOUIXEM4UGCT3Q4HGM6TZ5OWMOSQHOPW
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:54 +0000
CC: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzyszto
 f.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOUIXEM4UGCT3Q4HGM6TZ5OWMOSQHOPW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpMZSAyNy8wOS8yMDIzIMOgIDE1OjQ2LCBKb2FraW0gQmVjaCBhIMOpY3JpdMKgOg0KPiBPbiBN
b24sIFNlcCAyNSwgMjAyMyBhdCAxMjo0OTo1MFBNICswMDAwLCBZb25nIFd1ICjlkLTli4cpIHdy
b3RlOg0KPj4gT24gVHVlLCAyMDIzLTA5LTEyIGF0IDExOjMyICswMjAwLCBBbmdlbG9HaW9hY2No
aW5vIERlbCBSZWdubyB3cm90ZToNCj4+PiBJbCAxMi8wOS8yMyAwODoxNywgWW9uZyBXdSAo5ZC0
5YuHKSBoYSBzY3JpdHRvOg0KPj4+PiBPbiBNb24sIDIwMjMtMDktMTEgYXQgMTE6MjkgKzAyMDAs
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vDQo+Pj4+IHdyb3RlOg0KPj4+Pj4gSWwgMTEvMDkv
MjMgMDQ6MzAsIFlvbmcgV3UgaGEgc2NyaXR0bzoNCj4+Pj4+PiBUaGUgVEVFIHByb2JlIGxhdGVy
IHRoYW4gZG1hLWJ1ZiBoZWFwLCBhbmQgUFJPQkVfREVERVIgZG9lc24ndA0KPj4+Pj4+IHdvcmsN
Cj4+Pj4+PiBoZXJlIHNpbmNlIHRoaXMgaXMgbm90IGEgcGxhdGZvcm0gZHJpdmVyLCB0aGVyZWZv
cmUgaW5pdGlhbGlzZQ0KPj4+Pj4+IHRoZQ0KPj4+Pj4+IFRFRQ0KPj4+Pj4+IGNvbnRleHQvc2Vz
c2lvbiB3aGlsZSB3ZSBhbGxvY2F0ZSB0aGUgZmlyc3Qgc2VjdXJlIGJ1ZmZlci4NCj4+Pj4+Pg0K
Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPj4+
Pj4+IC0tLQ0KPj4+Pj4+ICAgICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFw
LmMgfCA2MQ0KPj4+Pj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4+Pj4+PiAgICAgMSBm
aWxlIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykNCj4+Pj4+Pg0KPj4+Pj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4+Pj4+PiBiL2RyaXZl
cnMvZG1hLQ0KPj4+Pj4+IGJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0KPj4+Pj4+IGluZGV4
IGJiZjFjOGRjZTIzZS4uZTNkYTMzYTNkMDgzIDEwMDY0NA0KPj4+Pj4+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0KPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0KPj4+Pj4+IEBAIC0xMCw2ICsxMCwxMiBAQA0K
Pj4+Pj4+ICAgICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+Pj4+Pj4gICAgICNpbmNsdWRlIDxs
aW51eC9tb2R1bGUuaD4NCj4+Pj4+PiAgICAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4+Pj4+
PiArI2luY2x1ZGUgPGxpbnV4L3RlZV9kcnYuaD4NCj4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3V1
aWQuaD4NCj4+Pj4+PiArDQo+Pj4+Pj4gKyNkZWZpbmUgVFpfVEFfTUVNX1VVSUQJCSI0NDc3NTg4
YS04NDc2LTExZTItYWQxNS0NCj4+Pj4+PiBlNDFmMTM5MGQ2NzYiDQo+Pj4+Pj4gKw0KPj4+Pj4g
SXMgdGhpcyBVVUlEIHRoZSBzYW1lIGZvciBhbGwgU29DcyBhbmQgYWxsIFRaIHZlcnNpb25zPw0K
Pj4+PiBZZXMuIEl0IGlzIHRoZSBzYW1lIGZvciBhbGwgU29DcyBhbmQgYWxsIFRaIHZlcnNpb25z
IGN1cnJlbnRseS4NCj4+Pj4NCj4+PiBUaGF0J3MgZ29vZCBuZXdzIQ0KPj4+DQo+Pj4gSXMgdGhp
cyBVVUlEIHVzZWQgaW4gYW55IHVzZXJzcGFjZSBjb21wb25lbnQ/IChleGFtcGxlOiBBbmRyb2lk
DQo+Pj4gSEFMcz8pDQo+PiBOby4gVXNlcnNwYWNlIG5ldmVyIHVzZSBpdC4gSWYgdXNlcnNwYWNl
IHdvdWxkIGxpa2UgdG8gYWxsb2NhdGUgdGhpcw0KPj4gc2VjdXJlIGJ1ZmZlciwgaXQgY2FuIGFj
aGlldmUgdGhyb3VnaCB0aGUgZXhpc3RpbmcgZG1hYnVmIElPQ1RMIHZpYQ0KPj4gL2Rldi9kbWFf
aGVhcC9tdGtfc3ZwIG5vZGUuDQo+Pg0KPiBJbiBnZW5lcmFsIEkgdGhpbmsgYXMgbWVudGlvbmVk
IGVsc2V3aGVyZSBpbiBjb21tZW50cywgdGhhdCB0aGVyZSBpc24ndA0KPiB0aGF0IG11Y2ggaGVy
ZSB0aGF0IHNlZW1zIHRvIGJlIHVuaXF1ZSBmb3IgTWVkaWFUZWsgaW4gdGhpcyBwYXRjaA0KPiBz
ZXJpZXMsIHNvIEkgdGhpbmsgaXQgd29ydGggdG8gc2VlIHdoZXRoZXIgdGhpcyB3aG9sZSBwYXRj
aCBzZXQgY2FuIGJlDQo+IG1hZGUgbW9yZSBnZW5lcmljLiBIYXZpbmcgc2FpZCB0aGF0LCB0aGUg
VVVJRCBpcyBhbHdheXMgdW5pcXVlIGZvciBhDQo+IGNlcnRhaW4gVHJ1c3RlZCBBcHBsaWNhdGlv
bi4gU28sIGl0J3Mgbm90IGVudGlyZWx5IHRydWUgc2F5aW5nIHRoYXQgdGhlDQo+IFVVSUQgaXMg
dGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBhbGwgVHJ1c3Rab25lIHZlcnNpb25zLiBJdCBtaWdo
dCBiZQ0KPiB0cnVlIGZvciBhIGZhbWlseSBvZiBNZWRpYVRlayBkZXZpY2VzIGFuZCB0aGUgVEVF
IGluIHVzZSwgYnV0IG5vdA0KPiBnZW5lcmljYWxseS4NCj4NCj4gU28sIGlmIHdlIG5lZWQgdG8g
ZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIGRpZmZlcmVudCBUQSBpbXBsZW1lbnRhdGlvbnMsDQo+IHRo
ZW4gd2UgbmVlZCBkaWZmZXJlbnQgVVVJRHMuIElmIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIG1h
a2UgdGhpcyBwYXRjaA0KPiBzZXQgZ2VuZXJpYywgdGhlbiBpdCBzb3VuZHMgbGlrZSBhIHNpbmds
ZSBVVUlEIHdvdWxkIGJlIHN1ZmZpY2llbnQsIGJ1dA0KPiB0aGF0IHdvdWxkIGltcGx5IHRoYXQg
YWxsIFRBJ3Mgc3VwcG9ydGluZyBzdWNoIGEgZ2VuZXJpYyBVVUlEIHdvdWxkIGJlDQo+IGltcGxl
bWVudGVkIHRoZSBzYW1lIGZyb20gYW4gQVBJIHBvaW50IG9mIHZpZXcuIFdoaWNoIGFsc28gbWVh
bnMgdGhhdA0KPiBmb3IgZXhhbXBsZSBUcnVzdGVkIEFwcGxpY2F0aW9uIGZ1bmN0aW9uIElEJ3Mg
bmVlZHMgdG8gYmUgdGhlIHNhbWUgZXRjLg0KPiBOb3QgaW1wb3NzaWJsZSB0byBhY2hpZXZlLCBi
dXQgc3RpbGwgbm90IGVhc3kgKGRpZmZlcmVudCBURUUgZm9sbG93cw0KPiBkaWZmZXJlbnQgc3Bl
Y2lmaWNhdGlvbnMpIGFuZCBpdCdzIG5vdCB0eXBpY2FsbHkgc29tZXRoaW5nIHdlJ3ZlIGRvbmUg
aW4NCj4gdGhlIHBhc3QuDQo+DQo+IFVuZm9ydHVuYXRlbHkgdGhlcmUgaXMgbm8gc3RhbmRhcmRp
emVkIGRhdGFiYXNlIG9mIFRBJ3MgZGVzY3JpYmluZyB3aGF0DQo+IHRoZXkgaW1wbGVtZW50IGFu
ZCBzdXBwb3J0Lg0KPg0KPiBBcyBhbiBhbHRlcm5hdGl2ZSwgd2UgY291bGQgaW1wbGVtZW50IGEg
cXVlcnkgY2FsbCBpbiB0aGUgVEVFIGFuc3dlcmluZywNCj4gIldoYXQgVVVJRCBkb2VzIHlvdXIg
VEEgaGF2ZSB0aGF0IGltcGxlbWVudHMgc2VjdXJlIHVubWFwcGVkIGhlYXA/Ii4NCj4gSS5lLiwg
c29tZXRoaW5nIHRoYXQgcmVtaW5kcyBvZiBhIGxvb2t1cCB0YWJsZS4gVGhlbiB3ZSB3b3VsZG4n
dCBoYXZlIHRvDQo+IGNhcnJ5IHRoaXMgaW4gVUFQSSwgRFQgb3IgYW55d2hlcmUgZWxzZS4NCg0K
Sm9ha2ltIGRvZXMgYSBUQSBjb3VsZCBvZmZlciBhIGdlbmVyaWMgQVBJIGFuZCBoaWRlIHRoZSBo
YXJkd2FyZSBzcGVjaWZpYw0KZGV0YWlscyAobGlrZSBrZXJuZWwgdUFQSSBkb2VzIGZvciBkcml2
ZXJzKSA/DQoNCkFzaWRlIHRoYXQgcXVlc3Rpb24gSSB3b25kZXIgd2hhdCBhcmUgdGhlIG5lZWRz
IHRvIHBlcmZvcm0gYSAnc2VjdXJlJyBwbGF5YmFjay4NCkkgaGF2ZSBpbiBtaW5kIDIgcmVxdWly
ZW1lbnRzOg0KLSBzZWN1cmUgbWVtb3J5IHJlZ2lvbnMsIHdoaWNoIG1lYW5zIGNvbmZpZ3VyZSB0
aGUgaGFyZHdhcmUgdG8gZW5zdXJlIHRoYXQgb25seQ0KZGVkaWNhdGVkIGhhcmR3YXJlIGJsb2Nr
cyBhbmQgcmVhZCBvciB3cml0ZSBpbnRvIGl0Lg0KLSBzZXQgaGFyZHdhcmUgYmxvY2tzIGluIHNl
Y3VyZSBtb2RlcyBzbyB0aGV5IGFjY2VzcyB0byBzZWN1cmUgbWVtb3J5Lg0KRG8geW91IHNlZSBz
b21ldGhpbmcgZWxzZSA/DQoNClJlZ2FyZHMsDQpCZW5qYW1pbg0KDQo+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
