Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF668703E4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 15:20:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A70743F9C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 14:20:51 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 456A83F380
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 14:20:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b="S/5sJpLz";
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1709562044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NF/1gTwR111FGU1RQbqHeXbtTmbO0DDWWwYzwfIsjFs=;
	b=S/5sJpLzsAOufi2PtMIeKIsXCwdv1EfSd1fACtXxpwlKGJgUbTUa6L7F7btXW30BGWIkrt
	uZehPHva50vpgexAn0g1IdUJfQtaC4VX4QkDOGhSsII2DfiZFAW78I+AU4aECPqi29PiHG
	jvq0f6UxYF3VGEepStCbMXQxlNN6HHA=
Message-ID: <b46deb887cd9d181931fd5a9c0914debd0b666fb.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Nuno Sa
	 <nuno.sa@analog.com>, Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen
	 <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, Sumit Semwal
	 <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>
Date: Mon, 04 Mar 2024 15:20:42 +0100
In-Reply-To: <63f8a0f5-55a4-47c9-99d7-bb0b8ad22b3a@amd.com>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
	 <20240223-iio-dmabuf-v7-3-78cfaad117b9@analog.com>
	 <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
	 <d17bd8aa17ac82773d0bdd6ce4edfe4a6249f179.camel@crapouillou.net>
	 <63f8a0f5-55a4-47c9-99d7-bb0b8ad22b3a@amd.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 456A83F380
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: OPMOPDIOZ3QK5J4MVGGY4I4QZCWVEBOB
X-Message-ID-Hash: OPMOPDIOZ3QK5J4MVGGY4I4QZCWVEBOB
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OPMOPDIOZ3QK5J4MVGGY4I4QZCWVEBOB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMDQgbWFycyAyMDI0IMOgIDE1OjA3ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIGEg
w6ljcml0wqA6DQo+IMKgQW0gMDQuMDMuMjQgdW0gMTQ6NTkgc2NocmllYiBQYXVsIENlcmN1ZWls
Og0KPiDCoA0KPiA+IFtTTklQXQ0KPiA+IMKgDQo+ID4gPiDCoA0KPiA+ID4gPiDCoA0KPiA+ID4g
PiArCWRtYV90b19yYW0gPSBidWZmZXItPmRpcmVjdGlvbiA9PQ0KPiA+ID4gPiBJSU9fQlVGRkVS
X0RJUkVDVElPTl9JTjsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCWlmIChkbWFfdG9fcmFtKSB7DQo+
ID4gPiA+ICsJCS8qDQo+ID4gPiA+ICsJCSAqIElmIHdlJ3JlIHdyaXRpbmcgdG8gdGhlIERNQUJV
RiwgbWFrZSBzdXJlDQo+ID4gPiA+IHdlDQo+ID4gPiA+IGRvbid0IGhhdmUNCj4gPiA+ID4gKwkJ
ICogcmVhZGVycw0KPiA+ID4gPiArCQkgKi8NCj4gPiA+ID4gKwkJcmV0bCA9IGRtYV9yZXN2X3dh
aXRfdGltZW91dChkbWFidWYtPnJlc3YsDQo+ID4gPiA+ICsJCQkJCcKgwqDCoMKgDQo+ID4gPiA+
IERNQV9SRVNWX1VTQUdFX1JFQUQsDQo+ID4gPiA+IHRydWUsDQo+ID4gPiA+ICsJCQkJCcKgwqDC
oMKgIHRpbWVvdXQpOw0KPiA+ID4gPiArCQlpZiAocmV0bCA9PSAwKQ0KPiA+ID4gPiArCQkJcmV0
bCA9IC1FQlVTWTsNCj4gPiA+ID4gKwkJaWYgKHJldGwgPCAwKSB7DQo+ID4gPiA+ICsJCQlyZXQg
PSAoaW50KXJldGw7DQo+ID4gPiA+ICsJCQlnb3RvIGVycl9yZXN2X3VubG9jazsNCj4gPiA+ID4g
KwkJfQ0KPiA+ID4gPiArCX0NCj4gPiA+ID4gKw0KPiA+ID4gPiArCWlmIChidWZmZXItPmFjY2Vz
cy0+bG9ja19xdWV1ZSkNCj4gPiA+ID4gKwkJYnVmZmVyLT5hY2Nlc3MtPmxvY2tfcXVldWUoYnVm
ZmVyKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCXJldCA9IGRtYV9yZXN2X3Jlc2VydmVfZmVuY2Vz
KGRtYWJ1Zi0+cmVzdiwgMSk7DQo+ID4gPiA+ICsJaWYgKHJldCkNCj4gPiA+ID4gKwkJZ290byBl
cnJfcXVldWVfdW5sb2NrOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJZG1hX3Jlc3ZfYWRkX2ZlbmNl
KGRtYWJ1Zi0+cmVzdiwgJmZlbmNlLT5iYXNlLA0KPiA+ID4gPiArCQkJwqDCoCBkbWFfcmVzdl91
c2FnZV9ydyhkbWFfdG9fcmFtKSk7DQo+ID4gPiA+IMKgDQo+ID4gPiDCoA0KPiA+ID4gVGhhdCBp
cyBpbmNvcnJlY3QgdXNlIG9mIHRoZSBmdW5jdGlvbiBkbWFfcmVzdl91c2FnZV9ydygpLiBUaGF0
DQo+ID4gPiBmdW5jdGlvbiANCj4gPiA+IGlzIGZvciByZXRyaWV2aW5nIGZlbmNlcyBhbmQgbm90
IGFkZGluZyB0aGVtLg0KPiA+ID4gDQo+ID4gPiBTZWUgdGhlIGZ1bmN0aW9uIGltcGxlbWVudGF0
aW9uIGFuZCBjb21tZW50cywgd2hlbiB5b3UgdXNlIGl0DQo+ID4gPiBsaWtlDQo+ID4gPiB0aGlz
IA0KPiA+ID4geW91IGdldCBleGFjdGx5IHdoYXQgeW91IGRvbid0IHdhbnQuDQo+ID4gPiANCj4g
PiANCj4gPiBObywgSSBnZXQgZXhhY3RseSB3aGF0IEkgd2FudC4gSWYgImRtYV90b19yYW0iLCBJ
IGdldA0KPiA+IERNQV9SRVNWX1VTQUdFX1JFQUQsIG90aGVyd2lzZSBJIGdldCBETUFfUkVTVl9V
U0FHRV9XUklURS4NCj4gPiANCj4gDQo+IMKgQWgsIHNvIGJhc2ljYWxseSAhZG1hX3RvX3JhbSBt
ZWFucyB0aGF0IHlvdSBoYXZlIGEgd3JpdGUgYWNjZXNzIHRvDQo+IHRoZSBidWZmZXI/DQo+IMKg
DQoNCiJkbWFfdG9fcmFtIiBtZWFucyB0aGUgZGF0YSBmbG93cyBmcm9tIHRoZSBETUEgdG8gdGhl
IFJBTS4NCg0KLi4uIFdoaWNoIG1lYW5zIHRoYXQgaXQgd3JpdGVzIHRoZSBidWZmZXIsIHNvIHlv
dSBhcmUgcmlnaHQsIHRoaXMgaXMNCndyb25nLg0KDQo+ID4gDQo+ID4gSWYgeW91IHJlYWxseSBk
b24ndCBsaWtlIHRoZSBtYWNybywgSSBjYW4gaW5saW5lIHRoaW5ncyBoZXJlLg0KPiANCj4gwqBZ
ZWFoLCB0aGF0IHdvdWxkIHN0aWxsIGJlIGluY29ycmVjdCB1c2UuDQo+IMKgDQo+IMKgVGhlIGRt
YV9fcmVzdl91c2FnZV9ydygpIGlzIGZvciByZXRyaWV2aW5nIHRoZSBmZW5jZXMgdG8gc3luYyB0
byBmb3INCj4gcmVhZCBhbmQgd3JpdGUgb3BlcmF0aW9ucyBhbmQgc2hvdWxkIG5ldmVyIGJlIHVz
ZWQgdG9nZXRoZXIgd2l0aA0KPiBkbWFfZmVuY2VfcmVzdl9hZGQoKS4NCj4gDQoNCk9rLCBJJ2xs
IGlubGluZSBpdCAoYW5kIGZpeCBpdCkgdGhlbi4NCg0KQ2hlZXJzLA0KLVBhdWwNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
