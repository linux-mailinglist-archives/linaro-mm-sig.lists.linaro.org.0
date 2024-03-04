Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB403870426
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 15:29:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D067B43FA1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 14:29:49 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 3D9563F654
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 14:29:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=TZ6z4M1T;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1709562579;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=8gifaf3b3BlwROr3n7RVa5Xb7TpNezBfTiKGHCKtLVs=;
	b=TZ6z4M1TItswnh5crJaLe3LLMZS/rqXvAQ0hH+WgQm88q9xNZnOZIpBDpdVkSIoOyVuRy+
	J9iU8F1Tya8e+sjtArbKd0fKF2rVABWNUmYGwjq3Hfs70yhwi1Qz6V3NylqBcofLDZcJP7
	6fKxTaVRmV2YObSXRh6vt8CcS6N2QK8=
Message-ID: <b00a1fc2ea51816317bf7475f32f85696bd29b4e.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Nuno
 =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Nuno Sa
 <nuno.sa@analog.com>, Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>
Date: Mon, 04 Mar 2024 15:29:37 +0100
In-Reply-To: <8962f6cf-7e5e-4bfe-a86b-cbb66a815187@amd.com>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
	 <20240223-iio-dmabuf-v7-3-78cfaad117b9@analog.com>
	 <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
	 <f40f018359d25c78abbeeb3ce02c5b761aabe900.camel@gmail.com>
	 <796e8189-0e1a-46d4-8251-7963e56704ac@amd.com>
	 <8962f6cf-7e5e-4bfe-a86b-cbb66a815187@amd.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3D9563F654
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCPT_COUNT_TWELVE(0.00)[16];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,analog.com,kernel.org,metafoo.de,linaro.org,lwn.net];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: ZWGJUU76A6ZSTEZIDGEPEIXFZ6EQQOUA
X-Message-ID-Hash: ZWGJUU76A6ZSTEZIDGEPEIXFZ6EQQOUA
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZWGJUU76A6ZSTEZIDGEPEIXFZ6EQQOUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMDQgbWFycyAyMDI0IMOgIDE0OjQxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIGEg
w6ljcml0wqA6DQo+IFRyeWluZyB0byBzZW5kIHRoaXMgb25jZSBtb3JlIGFzIHRleHQgb25seS4N
Cj4gDQo+IEFtIDA0LjAzLjI0IHVtIDE0OjQwIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoNCj4g
PiBBbSAwNC4wMy4yNCB1bSAxNDoyOCBzY2hyaWViIE51bm8gU8OhOg0KPiA+ID4gT24gTW9uLCAy
MDI0LTAzLTA0IGF0IDEzOjQ0ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+ID4g
PiBBbSAyMy4wMi4yNCB1bSAxMzoxNCBzY2hyaWViIE51bm8gU2E6DQo+ID4gPiA+ID4gRnJvbTog
UGF1bCBDZXJjdWVpbDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4NCj4gPiA+ID4gPiANCj4gPiA+ID4g
PiBBZGQgdGhlIG5lY2Vzc2FyeSBpbmZyYXN0cnVjdHVyZSB0byB0aGUgSUlPIGNvcmUgdG8gc3Vw
cG9ydCBhDQo+ID4gPiA+ID4gbmV3DQo+ID4gPiA+ID4gb3B0aW9uYWwgRE1BQlVGIGJhc2VkIGlu
dGVyZmFjZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBXaXRoIHRoaXMgbmV3IGludGVyZmFjZSwg
RE1BQlVGIG9iamVjdHMgKGV4dGVybmFsbHkgY3JlYXRlZCkNCj4gPiA+ID4gPiBjYW4gYmUNCj4g
PiA+ID4gPiBhdHRhY2hlZCB0byBhIElJTyBidWZmZXIsIGFuZCBzdWJzZXF1ZW50bHkgdXNlZCBm
b3IgZGF0YQ0KPiA+ID4gPiA+IHRyYW5zZmVyLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEEgdXNl
cnNwYWNlIGFwcGxpY2F0aW9uIGNhbiB0aGVuIHVzZSB0aGlzIGludGVyZmFjZSB0byBzaGFyZQ0K
PiA+ID4gPiA+IERNQUJVRg0KPiA+ID4gPiA+IG9iamVjdHMgYmV0d2VlbiBzZXZlcmFsIGludGVy
ZmFjZXMsIGFsbG93aW5nIGl0IHRvIHRyYW5zZmVyDQo+ID4gPiA+ID4gZGF0YSBpbiBhDQo+ID4g
PiA+ID4gemVyby1jb3B5IGZhc2hpb24sIGZvciBpbnN0YW5jZSBiZXR3ZWVuIElJTyBhbmQgdGhl
IFVTQg0KPiA+ID4gPiA+IHN0YWNrLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoZSB1c2Vyc3Bh
Y2UgYXBwbGljYXRpb24gY2FuIGFsc28gbWVtb3J5LW1hcCB0aGUgRE1BQlVGDQo+ID4gPiA+ID4g
b2JqZWN0cywgYW5kDQo+ID4gPiA+ID4gYWNjZXNzIHRoZSBzYW1wbGUgZGF0YSBkaXJlY3RseS4g
VGhlIGFkdmFudGFnZSBvZiBkb2luZyB0aGlzDQo+ID4gPiA+ID4gdnMuIHRoZQ0KPiA+ID4gPiA+
IHJlYWQoKSBpbnRlcmZhY2UgaXMgdGhhdCBpdCBhdm9pZHMgYW4gZXh0cmEgY29weSBvZiB0aGUg
ZGF0YQ0KPiA+ID4gPiA+IGJldHdlZW4gdGhlDQo+ID4gPiA+ID4ga2VybmVsIGFuZCB1c2Vyc3Bh
Y2UuIFRoaXMgaXMgcGFydGljdWxhcmx5IHVzZXJmdWwgZm9yIGhpZ2gtDQo+ID4gPiA+ID4gc3Bl
ZWQNCj4gPiA+ID4gPiBkZXZpY2VzIHdoaWNoIHByb2R1Y2Ugc2V2ZXJhbCBtZWdhYnl0ZXMgb3Ig
ZXZlbiBnaWdhYnl0ZXMgb2YNCj4gPiA+ID4gPiBkYXRhIHBlcg0KPiA+ID4gPiA+IHNlY29uZC4N
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBcyBwYXJ0IG9mIHRoZSBpbnRlcmZhY2UsIDMgbmV3IElP
Q1RMcyBoYXZlIGJlZW4gYWRkZWQ6DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSUlPX0JVRkZFUl9E
TUFCVUZfQVRUQUNIX0lPQ1RMKGludCBmZCk6DQo+ID4gPiA+ID4gwqDCoCBBdHRhY2ggdGhlIERN
QUJVRiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUgZ2l2ZW4gZmlsZQ0KPiA+ID4gPiA+IGRlc2Ny
aXB0b3IgdG8gdGhlDQo+ID4gPiA+ID4gwqDCoCBidWZmZXIuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gSUlPX0JVRkZFUl9ETUFCVUZfREVUQUNIX0lPQ1RMKGludCBmZCk6DQo+ID4gPiA+ID4gwqDC
oCBEZXRhY2ggdGhlIERNQUJVRiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUgZ2l2ZW4gZmlsZQ0K
PiA+ID4gPiA+IGRlc2NyaXB0b3IgZnJvbQ0KPiA+ID4gPiA+IMKgwqAgdGhlIGJ1ZmZlci4gTm90
ZSB0aGF0IGNsb3NpbmcgdGhlIElJTyBidWZmZXIncyBmaWxlDQo+ID4gPiA+ID4gZGVzY3JpcHRv
ciB3aWxsDQo+ID4gPiA+ID4gwqDCoCBhdXRvbWF0aWNhbGx5IGRldGFjaCBhbGwgcHJldmlvdXNs
eSBhdHRhY2hlZCBETUFCVUYNCj4gPiA+ID4gPiBvYmplY3RzLg0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IElJT19CVUZGRVJfRE1BQlVGX0VOUVVFVUVfSU9DVEwoc3RydWN0IGlpb19kbWFidWYgKik6
DQo+ID4gPiA+ID4gwqDCoCBSZXF1ZXN0IGEgZGF0YSB0cmFuc2ZlciB0by9mcm9tIHRoZSBnaXZl
biBETUFCVUYgb2JqZWN0Lg0KPiA+ID4gPiA+IEl0cyBmaWxlDQo+ID4gPiA+ID4gwqDCoCBkZXNj
cmlwdG9yLCBhcyB3ZWxsIGFzIHRoZSB0cmFuc2ZlciBzaXplIGFuZCBmbGFncyBhcmUNCj4gPiA+
ID4gPiBwcm92aWRlZCBpbiB0aGUNCj4gPiA+ID4gPiDCoMKgICJpaW9fZG1hYnVmIiBzdHJ1Y3R1
cmUuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhlc2UgdGhyZWUgSU9DVExzIGhhdmUgdG8gYmUg
cGVyZm9ybWVkIG9uIHRoZSBJSU8gYnVmZmVyJ3MNCj4gPiA+ID4gPiBmaWxlDQo+ID4gPiA+ID4g
ZGVzY3JpcHRvciwgb2J0YWluZWQgdXNpbmcgdGhlIElJT19CVUZGRVJfR0VUX0ZEX0lPQ1RMKCkN
Cj4gPiA+ID4gPiBpb2N0bC4NCj4gPiA+ID4gQSBmZXcgbml0IHBpY2tzIGFuZCBvbmUgYnVnIGJl
bG93LCBhcGFydCBmcm9tIHRoYXQgbG9va3MgZ29vZA0KPiA+ID4gPiB0byBtZS4NCj4gPiA+IEhp
IENocmlzdGlhbiwNCj4gPiA+IA0KPiA+ID4gVGhhbmtzIGZvciBsb29raW5nIGF0IGl0LiBJJ2xs
IGp1c3QgYWRkIHNvbWUgY29tbWVudCBvbiB0aGUgYnVnDQo+ID4gPiBiZWxvdyBhbmQgZm9yDQo+
ID4gPiB0aGUgb3RoZXIgc3R1ZmYgSSBob3BlIFBhdWwgaXMgYWxyZWFkeSBhYmxlIHRvIHN0ZXAg
aW4gYW5kIHJlcGx5DQo+ID4gPiB0byBpdC4gTXkNCj4gPiA+IGFzc3VtcHRpb24gKHdoaWNoIHNl
ZW1zIHRvIGJlIHdyb25nKSBpcyB0aGF0IHRoZSBkbWFidWYgYml0cw0KPiA+ID4gc2hvdWxkIGJl
IGFscmVhZHkNCj4gPiA+IGdvb2QgdG8gZ28gYXMgdGhleSBzaG91bGQgYmUgcHJldHR5IHNpbWls
YXIgdG8gdGhlIFVTQiBwYXJ0IG9mDQo+ID4gPiBpdC4NCj4gPiA+IA0KPiA+ID4gLi4uDQo+ID4g
PiANCj4gPiA+ID4gPiArCWlmIChkbWFfdG9fcmFtKSB7DQo+ID4gPiA+ID4gKwkJLyoNCj4gPiA+
ID4gPiArCQkgKiBJZiB3ZSdyZSB3cml0aW5nIHRvIHRoZSBETUFCVUYsIG1ha2Ugc3VyZQ0KPiA+
ID4gPiA+IHdlIGRvbid0IGhhdmUNCj4gPiA+ID4gPiArCQkgKiByZWFkZXJzDQo+ID4gPiA+ID4g
KwkJICovDQo+ID4gPiA+ID4gKwkJcmV0bCA9IGRtYV9yZXN2X3dhaXRfdGltZW91dChkbWFidWYt
PnJlc3YsDQo+ID4gPiA+ID4gKwkJCQkJwqDCoMKgwqANCj4gPiA+ID4gPiBETUFfUkVTVl9VU0FH
RV9SRUFELCB0cnVlLA0KPiA+ID4gPiA+ICsJCQkJCcKgwqDCoMKgIHRpbWVvdXQpOw0KPiA+ID4g
PiA+ICsJCWlmIChyZXRsID09IDApDQo+ID4gPiA+ID4gKwkJCXJldGwgPSAtRUJVU1k7DQo+ID4g
PiA+ID4gKwkJaWYgKHJldGwgPCAwKSB7DQo+ID4gPiA+ID4gKwkJCXJldCA9IChpbnQpcmV0bDsN
Cj4gPiA+ID4gPiArCQkJZ290byBlcnJfcmVzdl91bmxvY2s7DQo+ID4gPiA+ID4gKwkJfQ0KPiA+
ID4gPiA+ICsJfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCWlmIChidWZmZXItPmFjY2Vzcy0+
bG9ja19xdWV1ZSkNCj4gPiA+ID4gPiArCQlidWZmZXItPmFjY2Vzcy0+bG9ja19xdWV1ZShidWZm
ZXIpOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCXJldCA9IGRtYV9yZXN2X3Jlc2VydmVfZmVu
Y2VzKGRtYWJ1Zi0+cmVzdiwgMSk7DQo+ID4gPiA+ID4gKwlpZiAocmV0KQ0KPiA+ID4gPiA+ICsJ
CWdvdG8gZXJyX3F1ZXVlX3VubG9jazsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwlkbWFfcmVz
dl9hZGRfZmVuY2UoZG1hYnVmLT5yZXN2LCAmZmVuY2UtPmJhc2UsDQo+ID4gPiA+ID4gKwkJCcKg
wqAgZG1hX3Jlc3ZfdXNhZ2VfcncoZG1hX3RvX3JhbSkpOw0KPiA+ID4gPiBUaGF0IGlzIGluY29y
cmVjdCB1c2Ugb2YgdGhlIGZ1bmN0aW9uIGRtYV9yZXN2X3VzYWdlX3J3KCkuIFRoYXQNCj4gPiA+
ID4gZnVuY3Rpb24NCj4gPiA+ID4gaXMgZm9yIHJldHJpZXZpbmcgZmVuY2VzIGFuZCBub3QgYWRk
aW5nIHRoZW0uDQo+ID4gPiA+IA0KPiA+ID4gPiBTZWUgdGhlIGZ1bmN0aW9uIGltcGxlbWVudGF0
aW9uIGFuZCBjb21tZW50cywgd2hlbiB5b3UgdXNlIGl0DQo+ID4gPiA+IGxpa2UgdGhpcw0KPiA+
ID4gPiB5b3UgZ2V0IGV4YWN0bHkgd2hhdCB5b3UgZG9uJ3Qgd2FudC4NCj4gPiA+ID4gDQo+ID4g
PiBEb2VzIHRoYXQgbWVhbiB0aGF0IHRoZSBVU0Igc3R1ZmYgWzFdIGlzIGFsc28gd3Jvbmc/DQo+
ID4gPiANCj4gPiA+IFsxXToNCj4gPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L2dyZWdraC91c2IuZ2l0L3RyDQo+ID4gPiBlZS9kcml2ZXJzL3VzYi9n
YWRnZXQvZnVuY3Rpb24vZl9mcy5jP2g9dXNiLW5leHQjbjE2NjkNCj4gPiANCj4gPiBZZXMsIHRo
YXQncyBicm9rZW4gYXMgd2VsbC4gVGhlIGRtYV9yZXN2X3VzYWdlX3J3KCkgZnVuY3Rpb24gaXMg
DQo+ID4gc3VwcG9zZWQgdG8gYmUgdXNlZCB3aGlsZSByZXRyaWV2aW5nIGZlbmNlcy4NCg0KT2ss
IEknbGwgZml4IGl0IHRoZXJlIHRvby4NCg0KPiA+IA0KPiA+IEluIG90aGVyIHdvcmRzIHlvdXIg
ImlmIChkbWFfdG9fcmFtKSAuLi4iIGFib3ZlIGlzIGluY29ycmVjdCBhcw0KPiA+IHdlbGwuIA0K
PiA+IFRoYXQgb25lIHNob3VsZCBsb29rIG1vcmUgbGlrZSB0aGlzOg0KPiA+IC8qDQo+ID4gwqAg
KiBXcml0ZXMgbmVlZHMgdG8gd2FpdCBmb3Igb3RoZXIgd3JpdGVzIGFuZCByZWFkcywgYnV0IHJl
YWRlcnMNCj4gPiBvbmx5IGhhdmUgdG8gd2FpdCBmb3Igd3JpdGVycy4NCj4gPiDCoCAqLw0KPiA+
IA0KPiA+IHJldGwgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoZG1hYnVmLT5yZXN2LA0KPiA+IGRt
YV9yZXN2X3VzYWdlX3J3KGRtYV90b19yYW0pLCB0aW1lb3V0KTsNCg0KV2hlbiB3cml0aW5nIHRo
ZSBETUFCVUYsIHRoZSBVU0IgY29kZSAoYW5kIHRoZSBJSU8gY29kZSBhYm92ZSkgd2lsbA0Kd2Fp
dCBmb3Igd3JpdGVycy9yZWFkZXJzLCBidXQgaXQgZG9lcyBzbyB0aHJvdWdoIHR3byBjb25zZWN1
dGl2ZSBjYWxscw0KdG8gZG1hX3Jlc3Zfd2FpdF90aW1lb3V0IChiZWNhdXNlIEkgZGlkIG5vdCBr
bm93IHRoZSBwcm9wZXIgdXNhZ2UgLSBJDQp0aG91Z2h0IEkgaGFkIHRvIGNoZWNrIGJvdGggbWFu
dWFsbHkpLg0KDQpTbyB0aGlzIGNvZGUgYmxvY2sgc2hvdWxkIHRlY2huaWNhbGx5IGJlIGNvcnJl
Y3Q7IGJ1dCBJJ2xsIHVwZGF0ZSB0aGlzDQpjb2RlIG5vbmV0aGVsZXNzLg0KDQo+ID4gUmVnYXJk
cywNCj4gPiBDaHJpc3RpYW4uDQoNCkNoZWVycywNCi1QYXVsDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
