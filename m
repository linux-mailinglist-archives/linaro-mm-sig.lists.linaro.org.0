Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2D981BD41
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 18:31:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 295E33ED86
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 17:31:07 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id AC7913ED86
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 17:30:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=acNZkVFs;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1703179843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=DZ4PrQLxhflKIlVIWbwazWBJRSGqQYYv2Vc8n+RNJtY=;
	b=acNZkVFsDaV/tusjae2x+g1LihSsYjPG9R3ZwITPCLLKfsw1X7QUCkbrQTf+TB/mUl2dQD
	+1uRw11JEXtQdRYNK6sa+Vcyzk+cxglApAh0azfnrMa+AbF7DbkuonHkfa5De2hjy0ksjb
	dSGRXUCBfiVl7DulfQ0Ipa8elPFfam4=
Message-ID: <2da3fb55384a222868f90562be9e1e2ca55ec1c3.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Date: Thu, 21 Dec 2023 18:30:40 +0100
In-Reply-To: <20231221161258.056f5ce4@jic23-huawei>
References: <20231219175009.65482-1-paul@crapouillou.net>
	 <20231219175009.65482-8-paul@crapouillou.net>
	 <20231221161258.056f5ce4@jic23-huawei>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ZERO(0.00)[0];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,amd.com,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[aposti.net:rdns,aposti.net:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AC7913ED86
X-Spamd-Bar: ------
Message-ID-Hash: HTEQPKMLBVWEEIMLO6M4QAXTCWQWZDDN
X-Message-ID-Hash: HTEQPKMLBVWEEIMLO6M4QAXTCWQWZDDN
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 7/8] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTEQPKMLBVWEEIMLO6M4QAXTCWQWZDDN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sDQoNCkxlIGpldWRpIDIxIGTDqWNlbWJyZSAyMDIzIMOgIDE2OjEyICswMDAw
LCBKb25hdGhhbiBDYW1lcm9uIGEgw6ljcml0wqA6DQo+IE9uIFR1ZSwgMTkgRGVjIDIwMjMgMTg6
NTA6MDggKzAxMDANCj4gUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+IHdyb3Rl
Og0KPiANCj4gPiBVc2UgdGhlIGZ1bmN0aW9ucyBwcm92aWRlZCBieSB0aGUgYnVmZmVyLWRtYSBj
b3JlIHRvIGltcGxlbWVudCB0aGUNCj4gPiBETUFCVUYgdXNlcnNwYWNlIEFQSSBpbiB0aGUgYnVm
ZmVyLWRtYWVuZ2luZSBJSU8gYnVmZmVyDQo+ID4gaW1wbGVtZW50YXRpb24uDQo+ID4gDQo+ID4g
U2luY2Ugd2Ugd2FudCB0byBiZSBhYmxlIHRvIHRyYW5zZmVyIGFuIGFyYml0cmFyeSBudW1iZXIg
b2YgYnl0ZXMNCj4gPiBhbmQNCj4gPiBub3QgbmVjZXNhcmlseSB0aGUgZnVsbCBETUFCVUYsIHRo
ZSBhc3NvY2lhdGVkIHNjYXR0ZXJsaXN0IGlzDQo+ID4gY29udmVydGVkDQo+ID4gdG8gYW4gYXJy
YXkgb2YgRE1BIGFkZHJlc3NlcyArIGxlbmd0aHMsIHdoaWNoIGlzIHRoZW4gcGFzc2VkIHRvDQo+
ID4gZG1hZW5naW5lX3ByZXBfc2xhdmVfZG1hX2FycmF5KCkuDQo+ID4gDQo+ID4gU2lnbmVkLW9m
Zi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+DQo+IE9uZSBxdWVzdGlv
biBpbmxpbmUuIE90aGVyd2lzZSBsb29rcyBmaW5lIHRvIG1lLg0KPiANCj4gSg0KPiA+IA0KPiA+
IC0tLQ0KPiA+IHYzOiBVc2UgdGhlIG5ldyBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9kbWFfYXJyYXko
KSwgYW5kIGFkYXB0IHRoZQ0KPiA+IGNvZGUgdG8NCj4gPiDCoMKgwqAgd29yayB3aXRoIHRoZSBu
ZXcgZnVuY3Rpb25zIGludHJvZHVjZWQgaW4gaW5kdXN0cmlhbGlvLWJ1ZmZlci0NCj4gPiBkbWEu
Yy4NCj4gPiANCj4gPiB2NTogLSBVc2UgdGhlIG5ldyBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9kbWFf
dmVjKCkuDQo+ID4gwqDCoMKgIC0gUmVzdHJpY3QgdG8gaW5wdXQgYnVmZmVycywgc2luY2Ugb3V0
cHV0IGJ1ZmZlcnMgYXJlIG5vdCB5ZXQNCj4gPiDCoMKgwqDCoMKgIHN1cHBvcnRlZCBieSBJSU8g
YnVmZmVycy4NCj4gPiAtLS0NCj4gPiDCoC4uLi9idWZmZXIvaW5kdXN0cmlhbGlvLWJ1ZmZlci1k
bWFlbmdpbmUuY8KgwqDCoCB8IDUyDQo+ID4gKysrKysrKysrKysrKysrKy0tLQ0KPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2J1ZmZlci9pbmR1c3RyaWFsaW8tYnVmZmVyLWRtYWVu
Z2luZS5jDQo+ID4gYi9kcml2ZXJzL2lpby9idWZmZXIvaW5kdXN0cmlhbGlvLWJ1ZmZlci1kbWFl
bmdpbmUuYw0KPiA+IGluZGV4IDVmODViYTM4ZTZmNi4uODI1ZDc2YTI0YTY3IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvaWlvL2J1ZmZlci9pbmR1c3RyaWFsaW8tYnVmZmVyLWRtYWVuZ2luZS5j
DQo+ID4gKysrIGIvZHJpdmVycy9paW8vYnVmZmVyL2luZHVzdHJpYWxpby1idWZmZXItZG1hZW5n
aW5lLmMNCj4gPiBAQCAtNjQsMTUgKzY0LDUxIEBAIHN0YXRpYyBpbnQNCj4gPiBpaW9fZG1hZW5n
aW5lX2J1ZmZlcl9zdWJtaXRfYmxvY2soc3RydWN0IGlpb19kbWFfYnVmZmVyX3F1ZXVlDQo+ID4g
KnF1ZXVlLA0KPiA+IMKgCXN0cnVjdCBkbWFlbmdpbmVfYnVmZmVyICpkbWFlbmdpbmVfYnVmZmVy
ID0NCj4gPiDCoAkJaWlvX2J1ZmZlcl90b19kbWFlbmdpbmVfYnVmZmVyKCZxdWV1ZS0+YnVmZmVy
KTsNCj4gPiDCoAlzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKmRlc2M7DQo+ID4gKwl1
bnNpZ25lZCBpbnQgaSwgbmVudHM7DQo+ID4gKwlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbDsNCj4g
PiArCXN0cnVjdCBkbWFfdmVjICp2ZWNzOw0KPiA+ICsJc2l6ZV90IG1heF9zaXplOw0KPiA+IMKg
CWRtYV9jb29raWVfdCBjb29raWU7DQo+ID4gKwlzaXplX3QgbGVuX3RvdGFsOw0KPiA+IMKgDQo+
ID4gLQlibG9jay0+Ynl0ZXNfdXNlZCA9IG1pbihibG9jay0+c2l6ZSwgZG1hZW5naW5lX2J1ZmZl
ci0NCj4gPiA+bWF4X3NpemUpOw0KPiA+IC0JYmxvY2stPmJ5dGVzX3VzZWQgPSByb3VuZF9kb3du
KGJsb2NrLT5ieXRlc191c2VkLA0KPiA+IC0JCQlkbWFlbmdpbmVfYnVmZmVyLT5hbGlnbik7DQo+
ID4gKwlpZiAocXVldWUtPmJ1ZmZlci5kaXJlY3Rpb24gIT0gSUlPX0JVRkZFUl9ESVJFQ1RJT05f
SU4pIHsNCj4gPiArCQkvKiBXZSBkbyBub3QgeWV0IHN1cHBvcnQgb3V0cHV0IGJ1ZmZlcnMuICov
DQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwl9DQo+ID4gwqANCj4gPiAtCWRlc2MgPSBk
bWFlbmdpbmVfcHJlcF9zbGF2ZV9zaW5nbGUoZG1hZW5naW5lX2J1ZmZlci0+Y2hhbiwNCj4gPiAt
CQlibG9jay0+cGh5c19hZGRyLCBibG9jay0+Ynl0ZXNfdXNlZCwNCj4gPiBETUFfREVWX1RPX01F
TSwNCj4gPiAtCQlETUFfUFJFUF9JTlRFUlJVUFQpOw0KPiA+ICsJaWYgKGJsb2NrLT5zZ190YWJs
ZSkgew0KPiA+ICsJCXNnbCA9IGJsb2NrLT5zZ190YWJsZS0+c2dsOw0KPiA+ICsJCW5lbnRzID0g
c2dfbmVudHNfZm9yX2xlbihzZ2wsIGJsb2NrLT5ieXRlc191c2VkKTsNCj4gDQo+IEFyZSB3ZSBn
dWFyYW50ZWVkIHRoZSBsZW5ndGggaW4gdGhlIHNnbGlzdCBpcyBlbm91Z2g/wqAgSWYgbm90IHRo
aXMNCj4gY2FuIHJldHVybiBhbiBlcnJvciBjb2RlLg0KDQpUaGUgbGVuZ3RoIG9mIHRoZSBzZ2xp
c3Qgd2lsbCBhbHdheXMgYmUgZW5vdWdoLCB0aGUNCmlpb19idWZmZXJfZW5xdWV1ZV9kbWFidWYo
KSBmdW5jdGlvbiBhbHJlYWR5IGNoZWNrcyB0aGF0IGJsb2NrLQ0KPmJ5dGVzX3VzZWQgaXMgZXF1
YWwgb3Igc21hbGxlciB0aGFuIHRoZSBzaXplIG9mIHRoZSBETUFCVUYuDQoNCkl0IGlzIHF1aXRl
IGEgZmV3IGZ1bmN0aW9ucyBhYm92ZSBpbiB0aGUgY2FsbCBzdGFjayB0aG91Z2gsIHNvIEkgY2Fu
DQpoYW5kbGUgdGhlIGVycm9ycyBvZiBzZ19uZW50c19mb3JfbGVuKCkgaGVyZSBpZiB5b3UgdGhp
bmsgbWFrZXMgc2Vuc2UuDQoNCkNoZWVycywNCi1QYXVsDQoNCj4gPiArDQo+ID4gKwkJdmVjcyA9
IGttYWxsb2NfYXJyYXkobmVudHMsIHNpemVvZigqdmVjcyksDQo+ID4gR0ZQX0tFUk5FTCk7DQo+
ID4gKwkJaWYgKCF2ZWNzKQ0KPiA+ICsJCQlyZXR1cm4gLUVOT01FTTsNCj4gPiArDQo+ID4gKwkJ
bGVuX3RvdGFsID0gYmxvY2stPmJ5dGVzX3VzZWQ7DQo+ID4gKw0KPiA+ICsJCWZvciAoaSA9IDA7
IGkgPCBuZW50czsgaSsrKSB7DQo+ID4gKwkJCXZlY3NbaV0uYWRkciA9IHNnX2RtYV9hZGRyZXNz
KHNnbCk7DQo+ID4gKwkJCXZlY3NbaV0ubGVuID0gbWluKHNnX2RtYV9sZW4oc2dsKSwNCj4gPiBs
ZW5fdG90YWwpOw0KPiA+ICsJCQlsZW5fdG90YWwgLT0gdmVjc1tpXS5sZW47DQo+ID4gKw0KPiA+
ICsJCQlzZ2wgPSBzZ19uZXh0KHNnbCk7DQo+ID4gKwkJfQ0KPiA+ICsNCj4gPiArCQlkZXNjID0N
Cj4gPiBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9kbWFfdmVjKGRtYWVuZ2luZV9idWZmZXItPmNoYW4s
DQo+ID4gKwkJCQkJCcKgwqDCoCB2ZWNzLCBuZW50cywNCj4gPiBETUFfREVWX1RPX01FTSwNCj4g
PiArCQkJCQkJwqDCoMKgDQo+ID4gRE1BX1BSRVBfSU5URVJSVVBUKTsNCj4gPiArCQlrZnJlZSh2
ZWNzKTsNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJbWF4X3NpemUgPSBtaW4oYmxvY2stPnNpemUs
IGRtYWVuZ2luZV9idWZmZXItDQo+ID4gPm1heF9zaXplKTsNCj4gPiArCQltYXhfc2l6ZSA9IHJv
dW5kX2Rvd24obWF4X3NpemUsIGRtYWVuZ2luZV9idWZmZXItDQo+ID4gPmFsaWduKTsNCj4gPiAr
CQlibG9jay0+Ynl0ZXNfdXNlZCA9IG1heF9zaXplOw0KPiA+ICsNCj4gPiArCQlkZXNjID0NCj4g
PiBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zaW5nbGUoZG1hZW5naW5lX2J1ZmZlci0+Y2hhbiwNCj4g
PiArCQkJCQkJwqDCoCBibG9jay0NCj4gPiA+cGh5c19hZGRyLA0KPiA+ICsJCQkJCQnCoMKgIGJs
b2NrLQ0KPiA+ID5ieXRlc191c2VkLA0KPiA+ICsJCQkJCQnCoMKgIERNQV9ERVZfVE9fTUVNLA0K
PiA+ICsJCQkJCQnCoMKgDQo+ID4gRE1BX1BSRVBfSU5URVJSVVBUKTsNCj4gPiArCX0NCj4gPiDC
oAlpZiAoIWRlc2MpDQo+ID4gwqAJCXJldHVybiAtRU5PTUVNOw0KPiA+IMKgDQo+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
