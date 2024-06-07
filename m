Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D501F8FFD67
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Jun 2024 09:44:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73F6344343
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Jun 2024 07:44:18 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 61A963F52A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Jun 2024 07:44:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=YPjDmDk9;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1717746243;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jg6y42A8tuanMkc0qiGHDqRmsY6EuDBjOBYeQQggbQA=;
	b=YPjDmDk95H45K8usjyG/alYRZzUUfvo8CrQ3hxP2rTwW8bqre46UhwODogNPMxsNdhTeeb
	2eaxZPZ88z2mrLo/Ci3nZpjdYdSY0zYo7yoAO7sBKrHxyAPw3Uww5HwknAvmX1BUiO9k91
	s31N2OSNgeKKWr3CDXH0AOUmwI/B0bo=
Message-ID: <14d802e84cbb8d3c9610386908706f264af34726.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Randy Dunlap <rdunlap@infradead.org>, Jonathan Cameron
 <jic23@kernel.org>,  Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul
 <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Fri, 07 Jun 2024 09:44:01 +0200
In-Reply-To: <5052adab-5b5e-4ac2-902c-bb373c00bbbb@infradead.org>
References: <20240605110845.86740-1-paul@crapouillou.net>
	 <20240605110845.86740-7-paul@crapouillou.net>
	 <5052adab-5b5e-4ac2-902c-bb373c00bbbb@infradead.org>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZM
 LQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5Uz
 FZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtN
 z8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe
 +rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY
 3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr
 1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f
 33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIP
 dlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET
 4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7U
 rf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KF
 lBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFC
 qaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IWYXnd
 JO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN70
 62DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOt
 X0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEA
 AYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/
 Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmc
 Gu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2z
 McLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/
 7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2c
 LUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 61A963F52A
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: L6TBLH2SBH2L46YG55O3ZO3GKMEFWL23
X-Message-ID-Hash: L6TBLH2SBH2L46YG55O3ZO3GKMEFWL23
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 6/6] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L6TBLH2SBH2L46YG55O3ZO3GKMEFWL23/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmFuZHksDQoNCkxlIGpldWRpIDA2IGp1aW4gMjAyNCDDoCAxMDozMiAtMDcwMCwgUmFuZHkg
RHVubGFwIGEgw6ljcml0wqA6DQo+IEhpLA0KPiANCj4gT24gNi81LzI0IDQ6MDggQU0sIFBhdWwg
Q2VyY3VlaWwgd3JvdGU6DQo+ID4gRG9jdW1lbnQgdGhlIG5ldyBETUFCVUYgYmFzZWQgQVBJLg0K
PiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3Uu
bmV0Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IE51bm8gU2EgPG51bm8uc2FAYW5hbG9nLmNvbT4NCj4g
PiANCj4gPiAtLS0NCj4gPiB2MjogLSBFeHBsaWNpdGx5IHN0YXRlIHRoYXQgdGhlIG5ldyBpbnRl
cmZhY2UgaXMgb3B0aW9uYWwgYW5kIGlzDQo+ID4gwqDCoMKgwqDCoCBub3QgaW1wbGVtZW50ZWQg
YnkgYWxsIGRyaXZlcnMuDQo+ID4gwqDCoMKgIC0gVGhlIElPQ1RMcyBjYW4gbm93IG9ubHkgYmUg
Y2FsbGVkIG9uIHRoZSBidWZmZXIgRkQgcmV0dXJuZWQNCj4gPiBieQ0KPiA+IMKgwqDCoMKgwqAg
SUlPX0JVRkZFUl9HRVRfRkRfSU9DVEwuDQo+ID4gwqDCoMKgIC0gTW92ZSB0aGUgcGFnZSB1cCBh
IGJpdCBpbiB0aGUgaW5kZXggc2luY2UgaXQgaXMgY29yZSBzdHVmZg0KPiA+IGFuZCBub3QNCj4g
PiDCoMKgwqDCoMKgIGRyaXZlci1zcGVjaWZpYy4NCj4gPiANCj4gPiB2MzogVXBkYXRlIHRoZSBk
b2N1bWVudGF0aW9uIHRvIHJlZmxlY3QgdGhlIG5ldyBBUEkuDQo+ID4gDQo+ID4gdjU6IFVzZSBk
ZXNjcmlwdGlvbiBsaXN0cyBmb3IgdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIHRocmVlIG5ldw0K
PiA+IElPQ1RMcw0KPiA+IMKgwqDCoCBpbnN0ZWFkIG9mIGFidXNpbmcgc3Vic2VjdGlvbnMuDQo+
ID4gDQo+ID4gdjg6IFJlbmFtZWQgZG1hYnVmX2FwaS5yc3QgLT4gaWlvX2RtYWJ1Zl9hcGkucnN0
LCBhbmQgdXBkYXRlZA0KPiA+IGluZGV4LnJzdA0KPiA+IMKgwqDCoCB3aG9zZSBmb3JtYXQgY2hh
bmdlZCBpbiBpaW8vdG9ncmVnLg0KPiA+IC0tLQ0KPiA+IMKgRG9jdW1lbnRhdGlvbi9paW8vaWlv
X2RtYWJ1Zl9hcGkucnN0IHwgNTQNCj4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+
ID4gwqBEb2N1bWVudGF0aW9uL2lpby9pbmRleC5yc3TCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEg
Kw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspDQo+ID4gwqBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9paW8vaWlvX2RtYWJ1Zl9hcGkucnN0DQo+ID4gDQo+
ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vaWlvL2lpb19kbWFidWZfYXBpLnJzdA0KPiA+
IGIvRG9jdW1lbnRhdGlvbi9paW8vaWlvX2RtYWJ1Zl9hcGkucnN0DQo+ID4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjFjZDZjZDUxYTU4Mg0KPiA+IC0tLSAv
ZGV2L251bGwNCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2lpby9paW9fZG1hYnVmX2FwaS5yc3QN
Cj4gPiBAQCAtMCwwICsxLDU0IEBADQo+ID4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wDQo+ID4gKw0KPiA+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0K
PiA+ICtIaWdoLXNwZWVkIERNQUJVRiBpbnRlcmZhY2UgZm9yIElJTw0KPiA+ICs9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA+ICsNCj4gPiArMS4gT3ZlcnZpZXcNCj4gPiAr
PT09PT09PT09PT0NCj4gPiArDQo+ID4gK1RoZSBJbmR1c3RyaWFsIEkvTyBzdWJzeXN0ZW0gc3Vw
cG9ydHMgYWNjZXNzIHRvIGJ1ZmZlcnMgdGhyb3VnaCBhDQo+ID4gK2ZpbGUtYmFzZWQgaW50ZXJm
YWNlLCB3aXRoIHJlYWQoKSBhbmQgd3JpdGUoKSBhY2Nlc3MgY2FsbHMgdGhyb3VnaA0KPiA+IHRo
ZQ0KPiA+ICtJSU8gZGV2aWNlJ3MgZGV2IG5vZGUuDQo+ID4gKw0KPiA+ICtJdCBhZGRpdGlvbmFs
bHkgc3VwcG9ydHMgYSBETUFCVUYgYmFzZWQgaW50ZXJmYWNlLCB3aGVyZSB0aGUNCj4gPiB1c2Vy
c3BhY2UNCj4gPiArY2FuIGF0dGFjaCBETUFCVUYgb2JqZWN0cyAoZXh0ZXJuYWxseSBjcmVhdGVk
KSB0byBhIElJTyBidWZmZXIsDQo+ID4gYW5kDQo+IA0KPiBJIHdvdWxkIHNheS93cml0ZTrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0byBhbiBJSU8gYnVmZmVyLA0KDQpSaWdodC4NCg0KPiA+ICtzdWJzZXF1ZW50bHkgdXNlIHRo
ZW0gZm9yIGRhdGEgdHJhbnNmZXJzLg0KPiA+ICsNCj4gPiArQSB1c2Vyc3BhY2UgYXBwbGljYXRp
b24gY2FuIHRoZW4gdXNlIHRoaXMgaW50ZXJmYWNlIHRvIHNoYXJlDQo+ID4gRE1BQlVGDQo+ID4g
K29iamVjdHMgYmV0d2VlbiBzZXZlcmFsIGludGVyZmFjZXMsIGFsbG93aW5nIGl0IHRvIHRyYW5z
ZmVyIGRhdGENCj4gPiBpbiBhDQo+ID4gK3plcm8tY29weSBmYXNoaW9uLCBmb3IgaW5zdGFuY2Ug
YmV0d2VlbiBJSU8gYW5kIHRoZSBVU0Igc3RhY2suDQo+ID4gKw0KPiA+ICtUaGUgdXNlcnNwYWNl
IGFwcGxpY2F0aW9uIGNhbiBhbHNvIG1lbW9yeS1tYXAgdGhlIERNQUJVRiBvYmplY3RzLA0KPiA+
IGFuZA0KPiA+ICthY2Nlc3MgdGhlIHNhbXBsZSBkYXRhIGRpcmVjdGx5LiBUaGUgYWR2YW50YWdl
IG9mIGRvaW5nIHRoaXMgdnMuDQo+ID4gdGhlDQo+ID4gK3JlYWQoKSBpbnRlcmZhY2UgaXMgdGhh
dCBpdCBhdm9pZHMgYW4gZXh0cmEgY29weSBvZiB0aGUgZGF0YQ0KPiA+IGJldHdlZW4gdGhlDQo+
ID4gK2tlcm5lbCBhbmQgdXNlcnNwYWNlLiBUaGlzIGlzIHBhcnRpY3VsYXJseSB1c2VmdWwgZm9y
IGhpZ2gtc3BlZWQNCj4gPiBkZXZpY2VzDQo+ID4gK3doaWNoIHByb2R1Y2Ugc2V2ZXJhbCBtZWdh
Ynl0ZXMgb3IgZXZlbiBnaWdhYnl0ZXMgb2YgZGF0YSBwZXINCj4gPiBzZWNvbmQuDQo+ID4gK0l0
IGRvZXMgaG93ZXZlciBpbmNyZWFzZSB0aGUgdXNlcnNwYWNlLWtlcm5lbHNwYWNlIHN5bmNocm9u
aXphdGlvbg0KPiA+ICtvdmVyaGVhZCwgYXMgdGhlIERNQV9CVUZfU1lOQ19TVEFSVCBhbmQgRE1B
X0JVRl9TWU5DX0VORCBJT0NUTHMNCj4gPiBoYXZlIHRvDQo+ID4gK2JlIHVzZWQgZm9yIGRhdGEg
aW50ZWdyaXR5Lg0KPiA+ICsNCj4gPiArMi4gVXNlciBBUEkNCj4gPiArPT09PT09PT09PT0NCj4g
PiArDQo+ID4gK0FzIHBhcnQgb2YgdGhpcyBpbnRlcmZhY2UsIHRocmVlIG5ldyBJT0NUTHMgaGF2
ZSBiZWVuIGFkZGVkLiBUaGVzZQ0KPiA+IHRocmVlDQo+ID4gK0lPQ1RMcyBoYXZlIHRvIGJlIHBl
cmZvcm1lZCBvbiB0aGUgSUlPIGJ1ZmZlcidzIGZpbGUgZGVzY3JpcHRvciwNCj4gPiArb2J0YWlu
ZWQgdXNpbmcgdGhlIElJT19CVUZGRVJfR0VUX0ZEX0lPQ1RMKCkgaW9jdGwuDQo+ID4gKw0KPiA+
ICvCoCBgYElJT19CVUZGRVJfRE1BQlVGX0FUVEFDSF9JT0NUTChpbnQpYGANCj4gDQo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAoaW50IGZkKQ0KPiA/DQoNClllcywgSSBjYW4gY2hhbmdlIHRoYXQuIEFsdGhv
dWdoIGl0J3MgdmVyeSBvYnZpb3VzIHdoYXQgdGhlICJpbnQiIGlzDQpmb3IsIGdpdmVuIHRoZSB0
ZXh0IGFib3ZlLg0KDQo+IA0KPiA+ICvCoMKgwqAgQXR0YWNoIHRoZSBETUFCVUYgb2JqZWN0LCBp
ZGVudGlmaWVkIGJ5IGl0cyBmaWxlIGRlc2NyaXB0b3IsDQo+ID4gdG8gdGhlDQo+ID4gK8KgwqDC
oCBJSU8gYnVmZmVyLiBSZXR1cm5zIHplcm8gb24gc3VjY2VzcywgYW5kIGEgbmVnYXRpdmUgZXJy
bm8NCj4gPiB2YWx1ZSBvbg0KPiA+ICvCoMKgwqAgZXJyb3IuDQo+ID4gKw0KPiA+ICvCoCBgYElJ
T19CVUZGRVJfRE1BQlVGX0RFVEFDSF9JT0NUTChpbnQpYGANCj4gDQo+IGRpdHRvLg0KPiANCj4g
PiArwqDCoMKgIERldGFjaCB0aGUgZ2l2ZW4gRE1BQlVGIG9iamVjdCwgaWRlbnRpZmllZCBieSBp
dHMgZmlsZQ0KPiA+IGRlc2NyaXB0b3IsDQo+ID4gK8KgwqDCoCBmcm9tIHRoZSBJSU8gYnVmZmVy
LiBSZXR1cm5zIHplcm8gb24gc3VjY2VzcywgYW5kIGEgbmVnYXRpdmUNCj4gPiBlcnJubw0KPiA+
ICvCoMKgwqAgdmFsdWUgb24gZXJyb3IuDQo+ID4gKw0KPiA+ICvCoMKgwqAgTm90ZSB0aGF0IGNs
b3NpbmcgdGhlIElJTyBidWZmZXIncyBmaWxlIGRlc2NyaXB0b3Igd2lsbA0KPiA+ICvCoMKgwqAg
YXV0b21hdGljYWxseSBkZXRhY2ggYWxsIHByZXZpb3VzbHkgYXR0YWNoZWQgRE1BQlVGIG9iamVj
dHMuDQo+ID4gKw0KPiA+ICvCoCBgYElJT19CVUZGRVJfRE1BQlVGX0VOUVVFVUVfSU9DVEwoc3Ry
dWN0IGlpb19kbWFidWYNCj4gPiAqaWlvX2RtYWJ1ZilgYA0KPiA+ICvCoMKgwqAgRW5xdWV1ZSBh
IHByZXZpb3VzbHkgYXR0YWNoZWQgRE1BQlVGIG9iamVjdCB0byB0aGUgYnVmZmVyDQo+ID4gcXVl
dWUuDQo+ID4gK8KgwqDCoCBFbnF1ZXVlZCBETUFCVUZzIHdpbGwgYmUgcmVhZCBmcm9tIChpZiBv
dXRwdXQgYnVmZmVyKSBvcg0KPiA+IHdyaXR0ZW4gdG8NCj4gPiArwqDCoMKgIChpZiBpbnB1dCBi
dWZmZXIpIGFzIGxvbmcgYXMgdGhlIGJ1ZmZlciBpcyBlbmFibGVkLg0KPiANCj4gdGhhbmtzLg0K
DQpDaGVlcnMsDQotUGF1bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
