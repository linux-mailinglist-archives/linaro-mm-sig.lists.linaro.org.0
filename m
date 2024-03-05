Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4397C871A7A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 11:17:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0081043E84
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 10:17:08 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 21B2240B3E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Mar 2024 10:17:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=gyHfXlzf;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1709633814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ScnhOlxqOqXKHeNtlmJscUOvM1RwyxtzC8+4oNY2t0M=;
	b=gyHfXlzfeV7oeX4Z0Gh6LxaNFE6QK96VFIzjigpmrrVZ7WqArbmszHgF9puU2wdmZD1ILM
	rYQBH3lbQw2dkIp7FMjvP1eioLsm5BRg6Zb/Zy0/Euz0MPS+CyWMCBgXiP71CGnzQA5tcg
	TxWouUfeF0fkyGktmza3jbeFN/872Kg=
Message-ID: <8d996c3d8238abf00882090caaa349bb5d3c26d3.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>, Nuno
	=?ISO-8859-1?Q?S=E1?=
	 <noname.nuno@gmail.com>
Date: Tue, 05 Mar 2024 11:16:52 +0100
In-Reply-To: <20240305100742.00006a4c@Huawei.com>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
	 <20240303174245.37efc0b0@jic23-huawei>
	 <43787ce68f731b9267ee558c4c38d634acffe8b9.camel@gmail.com>
	 <20240305100742.00006a4c@Huawei.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 21B2240B3E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCPT_COUNT_TWELVE(0.00)[17];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[Huawei.com,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: XRVMAK2XMZX5RV5ITPEGADTN6IXLDSST
X-Message-ID-Hash: XRVMAK2XMZX5RV5ITPEGADTN6IXLDSST
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/6] iio: new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRVMAK2XMZX5RV5ITPEGADTN6IXLDSST/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sDQoNCkxlIG1hcmRpIDA1IG1hcnMgMjAyNCDDoCAxMDowNyArMDAwMCwgSm9u
YXRoYW4gQ2FtZXJvbiBhIMOpY3JpdMKgOg0KPiBPbiBNb24sIDA0IE1hciAyMDI0IDA4OjU5OjQ3
ICswMTAwDQo+IE51bm8gU8OhIDxub25hbWUubnVub0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g
PiBPbiBTdW4sIDIwMjQtMDMtMDMgYXQgMTc6NDIgKzAwMDAsIEpvbmF0aGFuIENhbWVyb24gd3Jv
dGU6DQo+ID4gPiBPbiBGcmksIDIzIEZlYiAyMDI0IDEzOjEzOjU4ICswMTAwDQo+ID4gPiBOdW5v
IFNhIDxudW5vLnNhQGFuYWxvZy5jb20+IHdyb3RlOg0KPiA+ID4gwqAgDQo+ID4gPiA+IEhpIEpv
bmF0aGFuLCBsaWtlbHkgeW91J3JlIHdvbmRlcmluZyB3aHkgSSdtIHNlbmRpbmcgdjcuIFdlbGws
DQo+ID4gPiA+IHRvIGJlDQo+ID4gPiA+IGhvbmVzdCwgd2UncmUgaG9waW5nIHRvIGdldCB0aGlz
IG1lcmdlZCB0aGlzIGZvciB0aGUgNi45IG1lcmdlDQo+ID4gPiA+IHdpbmRvdy4NCj4gPiA+ID4g
TWFpbiByZWFzb24gaXMgYmVjYXVzZSB0aGUgVVNCIHBhcnQgaXMgYWxyZWFkeSBpbiAoc28gaXQg
d291bGQNCj4gPiA+ID4gYmUgbmljZQ0KPiA+ID4gPiB0byBnZXQgdGhlIHdob2xlIHRoaW5nIGlu
KS4gTW9yZW92ZXIsIHRoZSBjaGFuZ2VzIGFza2VkIGluIHY2DQo+ID4gPiA+IHdlcmUgc2ltcGxl
DQo+ID4gPiA+IChldmVuIHRob3VnaCBJJ20gbm90IHF1aXRlIHN1cmUgaW4gb25lIG9mIHRoZW0p
IGFuZCBQYXVsIGhhcyBubw0KPiA+ID4gPiBhY2Nlc3MgdG8NCj4gPiA+ID4gaXQncyBsYXB0b3Ag
c28gaGUgY2FuJ3Qgc2VuZCB2NyBoaW1zZWxmLiBTbyBoZSBraW5kIG9mDQo+ID4gPiA+IHNhaWQv
YXNrZWQgZm9yIG1lIHRvDQo+ID4gPiA+IGRvIGl0LsKgIA0KPiA+ID4gDQo+ID4gPiBTbywgd2Ug
YXJlIGN1dHRpbmcgdGhpcyB2ZXJ5IGZpbmUuIElmIExpbnVzIGhpbnRzIHN0cm9uZ2x5IGF0IGFu
DQo+ID4gPiByYzggbWF5YmUgd2UNCj4gPiA+IGNhbiBzbmVhayB0aGlzIGluLiBIb3dldmVyLCBJ
IG5lZWQgYW4gQWNrIGZyb20gVmlub2QgZm9yIHRoZSBkbWENCj4gPiA+IGVuZ2luZQ0KPiA+ID4g
Y2hhbmdlcyBmaXJzdC4NCj4gPiA+IA0KPiA+ID4gQWxzbyBJJ2QgbG92ZSBhIGZpbmFsICdsb29r
cyBvaycgY29tbWVudCBmcm9tIERNQUJVRiBmb2xrIChBY2sNCj4gPiA+IGV2ZW4gYmV0dGVyISkN
Cj4gPiA+IA0KPiA+ID4gU2VlbXMgdGhhdCB0aGUgb3RoZXIgc2lkZSBnb3QgcmVzb2x2ZWQgaW4g
dGhlIFVTQiBnYWRnZXQsIGJ1dA0KPiA+ID4gbGFzdCB3ZSBoZWFyZA0KPiA+ID4gZm9ybQ0KPiA+
ID4gRGFuaWVsIGFuZCBDaHJpc3RpYW4gbG9va3MgdG8gaGF2ZSBiZWVuIGJhY2sgb24gdjUuIEkn
ZCBsaWtlIHRoZW0NCj4gPiA+IHRvIGNvbmZpcm0NCj4gPiA+IHRoZXkgYXJlIGZpbmUgd2l0aCB0
aGUgY2hhbmdlcyBtYWRlIGFzIGEgcmVzdWx0LiANCj4gPiA+IMKgIA0KPiA+IA0KPiA+IEkgY2Fu
IGFzayBDaHJpc3RpYW4gb3IgRGFuaWVsIGZvciBzb21lIGFja3MgYnV0IG15IGZlZWxpbmcgKEkg
c3RpbGwNCj4gPiBuZWVkLCBhdA0KPiA+IHNvbWUgcG9pbnQsIHRvIGdldCByZWFsbHkgZmFtaWxp
YXIgd2l0aCBhbGwgb2YgdGhpcykgaXMgdGhhdCB0aGlzDQo+ID4gc2hvdWxkIGJlDQo+ID4gcHJl
dHR5IHNpbWlsYXIgdG8gdGhlIFVTQiBzZXJpZXMgKGZyb20gYSBETUFCVUYgcG9pbnQgb2Ygdmll
dykgYXMNCj4gPiB0aGV5IGFyZSBib3RoDQo+ID4gaW1wb3J0ZXJzLg0KPiA+IA0KPiA+ID4gSSd2
ZSBiZWVuIGhhcHB5IHdpdGggdGhlIElJTyBwYXJ0cyBmb3IgYSBmZXcgdmVyc2lvbnMgbm93IGJ1
dCBteQ0KPiA+ID4gYWJpbGl0eSB0bw0KPiA+ID4gcmV2aWV3DQo+ID4gPiB0aGUgRE1BQlVGIGFu
ZCBETUEgZW5naW5lIGJpdHMgaXMgbGltaXRlZC4NCj4gPiA+IA0KPiA+ID4gQSByZWFsaXN0aWMg
cGF0aCB0byBnZXQgdGhpcyBpbiBpcyByYzggaXMgaGFwcGVuaW5nLCBpcyBhbGwgQWNrcw0KPiA+
ID4gaW4gcGxhY2UgYnkNCj4gPiA+IFdlZG5lc2RheSwNCj4gPiA+IEkgZ2V0IGFwcGx5IGl0IGFu
ZCBoaXRzIExpbnV4LW5leHQgVGh1cnNkYXksIFB1bGwgcmVxdWVzdCB0byBHcmVnDQo+ID4gPiBv
biBTYXR1cmRheQ0KPiA+ID4gYW5kIEdyZWcNCj4gPiA+IGlzIGZlZWxpbmcgcGFydGljdWxhcmx5
IGdlbmVyb3VzIHRvIHRha2Ugb25lIG9uIHRoZSBkYXkgaGUNCj4gPiA+IG5vcm1hbGx5IGNsb3Nl
cyBoaXMNCj4gPiA+IHRyZWVzLg0KPiA+ID4gwqAgDQo+ID4gDQo+ID4gV2VsbCwgaXQgbG9va3Mg
bGlrZSB3ZSBzdGlsbCBoYXZlIGEgc2hvdC4gSSdsbCB0cnkgdG8gc2VlIGlmIFZpbm9kDQo+ID4g
aXMgZmluZSB3aXRoDQo+ID4gdGhlIERNQUVOR0lORSBzdHVmZi4NCj4gPiANCj4gDQo+IFNhZGx5
LCBsb29rcyBsaWtlIHJjNyB3YXMgYXQgdGhlIGVuZCBvZiBhIHF1aWV0IHdlZWssIHNvIGFsbW9z
dA0KPiBjZXJ0YWluIHRvIG5vdA0KPiBiZSBhbiByYzggaW4gdGhlIGVuZC4gTGV0J3MgYWltIHRv
IGdldCB0aGlzIGluIGF0IHRoZSBzdGFydCBvZiB0aGUNCj4gbmV4dCBjeWNsZQ0KPiBzbyB3ZSBj
YW4gYnVpbGQgb24gaXQgZnJvbSB0aGVyZS4NCg0KQW5kIGl0IGxvb2tzIGxpa2UgSSdsbCBuZWVk
IGEgVjggZm9yIHRoZSBmZXcgdGhpbmdzIG5vdGVkIGJ5IENocmlzdGlhbi4NCg0KSGF2aW5nIGl0
IGluIDYuOSB3b3VsZCBoYXZlIGJlZW4gZ3JlYXQgYnV0IGhhdmluZyBpdCBldmVudHVhbGx5IG1l
cmdlZA0KaXMgYWxsIHRoYXQgbWF0dGVycyAtIHNvIEknbSBmaW5lIHRvIGhhdmUgaXQgcXVldWVk
IGZvciA2LjEwIGluc3RlYWQuDQoNCkNoZWVycywNCi1QYXVsDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
