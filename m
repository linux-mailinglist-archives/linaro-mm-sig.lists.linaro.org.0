Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE678331C2
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 20 Jan 2024 01:15:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E95963EABD
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 20 Jan 2024 00:15:16 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 066333EABD
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Jan 2024 00:14:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=JA265L43;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705709694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=uTRM9d6bvlbWT4CTU/U4qeImT68CpFKTYfre+yx+3OQ=;
	b=JA265L43X+KVrNQQpKTeItKpNrS74hBHSilZLefH+GSdoIa6uDIXf4ZrMKJYw2cM106Vp6
	BQC7TTWrnq9Vj+5LxaM33VHNWqeReEPckoCVSemlDGNc/QfOnOhmwjrJbAGucqHWZWf0ra
	vjxOzGBKes+Jac25P3fz9YBWxAGp9Tk=
Message-ID: <59799a40d8cc425dc5a847a0c8e25730db4fc5c8.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Frank Li <Frank.li@nxp.com>
Date: Sat, 20 Jan 2024 01:14:52 +0100
In-Reply-To: <ZaruU5BpQF8SeZZS@lizhi-Precision-Tower-5810>
References: <20240117122646.41616-1-paul@crapouillou.net>
	 <20240117122646.41616-2-paul@crapouillou.net>
	 <ZaruU5BpQF8SeZZS@lizhi-Precision-Tower-5810>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ZERO(0.00)[0];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lwn.net,linaro.org,amd.com,kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[crapouillou.net:email,crapouillou.net:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 066333EABD
X-Spamd-Bar: --
Message-ID-Hash: KNLWBYHQZRARASNPZOGJRNJ4XJ7RGUID
X-Message-ID-Hash: KNLWBYHQZRARASNPZOGJRNJ4XJ7RGUID
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 1/4] usb: gadget: Support already-mapped DMA SGs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNLWBYHQZRARASNPZOGJRNJ4XJ7RGUID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRnJhbmssDQoNCkxlIHZlbmRyZWRpIDE5IGphbnZpZXIgMjAyNCDDoCAxNjo0OSAtMDUwMCwg
RnJhbmsgTGkgYSDDqWNyaXTCoDoNCj4gT24gV2VkLCBKYW4gMTcsIDIwMjQgYXQgMDE6MjY6NDNQ
TSArMDEwMCwgUGF1bCBDZXJjdWVpbCB3cm90ZToNCj4gPiBBZGQgYSBuZXcgJ3NnX3dhc19tYXBw
ZWQnIGZpZWxkIHRvIHRoZSBzdHJ1Y3QgdXNiX3JlcXVlc3QuIFRoaXMNCj4gPiBmaWVsZA0KPiA+
IGNhbiBiZSB1c2VkIHRvIGluZGljYXRlIHRoYXQgdGhlIHNjYXR0ZXJsaXN0IGFzc29jaWF0ZWQg
dG8gdGhlIFVTQg0KPiA+IHRyYW5zZmVyIGhhcyBhbHJlYWR5IGJlZW4gbWFwcGVkIGludG8gdGhl
IERNQSBzcGFjZSwgYW5kIGl0IGRvZXMNCj4gPiBub3QNCj4gPiBoYXZlIHRvIGJlIGRvbmUgaW50
ZXJuYWxseS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNy
YXBvdWlsbG91Lm5ldD4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvY29y
ZS5jIHwgNyArKysrKystDQo+ID4gwqBpbmNsdWRlL2xpbnV4L3VzYi9nYWRnZXQuaMKgwqDCoCB8
IDIgKysNCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvY29yZS5j
DQo+ID4gYi9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL2NvcmUuYw0KPiA+IGluZGV4IGQ1OWY5NDQ2
NGI4Ny4uOWQ0MTUwMTI0ZmRiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91
ZGMvY29yZS5jDQo+ID4gKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9jb3JlLmMNCj4gPiBA
QCAtOTAzLDYgKzkwMywxMSBAQCBpbnQgdXNiX2dhZGdldF9tYXBfcmVxdWVzdF9ieV9kZXYoc3Ry
dWN0DQo+ID4gZGV2aWNlICpkZXYsDQo+ID4gwqAJaWYgKHJlcS0+bGVuZ3RoID09IDApDQo+ID4g
wqAJCXJldHVybiAwOw0KPiA+IMKgDQo+ID4gKwlpZiAocmVxLT5zZ193YXNfbWFwcGVkKSB7DQo+
ID4gKwkJcmVxLT5udW1fbWFwcGVkX3NncyA9IHJlcS0+bnVtX3NnczsNCj4gPiArCQlyZXR1cm4g
MDsNCj4gPiArCX0NCj4gPiArDQo+ID4gwqAJaWYgKHJlcS0+bnVtX3Nncykgew0KPiA+IMKgCQlp
bnTCoMKgwqDCoCBtYXBwZWQ7DQo+ID4gwqANCj4gPiBAQCAtOTQ4LDcgKzk1Myw3IEBAIEVYUE9S
VF9TWU1CT0xfR1BMKHVzYl9nYWRnZXRfbWFwX3JlcXVlc3QpOw0KPiA+IMKgdm9pZCB1c2JfZ2Fk
Z2V0X3VubWFwX3JlcXVlc3RfYnlfZGV2KHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gPiDCoAkJc3Ry
dWN0IHVzYl9yZXF1ZXN0ICpyZXEsIGludCBpc19pbikNCj4gPiDCoHsNCj4gPiAtCWlmIChyZXEt
Pmxlbmd0aCA9PSAwKQ0KPiA+ICsJaWYgKHJlcS0+bGVuZ3RoID09IDAgfHwgcmVxLT5zZ193YXNf
bWFwcGVkKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gwqANCj4gPiDCoAlpZiAocmVxLT5udW1fbWFw
cGVkX3Nncykgew0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3VzYi9nYWRnZXQuaA0K
PiA+IGIvaW5jbHVkZS9saW51eC91c2IvZ2FkZ2V0LmgNCj4gPiBpbmRleCBhNzcxY2NjMDM4YWMu
LmM1MjllNGUwNjk5NyAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3VzYi9nYWRnZXQu
aA0KPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvdXNiL2dhZGdldC5oDQo+ID4gQEAgLTUyLDYgKzUy
LDcgQEAgc3RydWN0IHVzYl9lcDsNCj4gPiDCoCAqIEBzaG9ydF9ub3Rfb2s6IFdoZW4gcmVhZGlu
ZyBkYXRhLCBtYWtlcyBzaG9ydCBwYWNrZXRzIGJlDQo+ID4gwqAgKsKgwqDCoMKgIHRyZWF0ZWQg
YXMgZXJyb3JzIChxdWV1ZSBzdG9wcyBhZHZhbmNpbmcgdGlsbCBjbGVhbnVwKS4NCj4gPiDCoCAq
IEBkbWFfbWFwcGVkOiBJbmRpY2F0ZXMgaWYgcmVxdWVzdCBoYXMgYmVlbiBtYXBwZWQgdG8gRE1B
DQo+ID4gKGludGVybmFsKQ0KPiA+ICsgKiBAc2dfd2FzX21hcHBlZDogU2V0IGlmIHRoZSBzY2F0
dGVybGlzdCBoYXMgYmVlbiBtYXBwZWQgYmVmb3JlDQo+ID4gdGhlIHJlcXVlc3QNCj4gPiDCoCAq
IEBjb21wbGV0ZTogRnVuY3Rpb24gY2FsbGVkIHdoZW4gcmVxdWVzdCBjb21wbGV0ZXMsIHNvIHRo
aXMNCj4gPiByZXF1ZXN0IGFuZA0KPiA+IMKgICoJaXRzIGJ1ZmZlciBtYXkgYmUgcmUtdXNlZC7C
oCBUaGUgZnVuY3Rpb24gd2lsbCBhbHdheXMgYmUNCj4gPiBjYWxsZWQgd2l0aA0KPiA+IMKgICoJ
aW50ZXJydXB0cyBkaXNhYmxlZCwgYW5kIGl0IG11c3Qgbm90IHNsZWVwLg0KPiA+IEBAIC0xMTEs
NiArMTEyLDcgQEAgc3RydWN0IHVzYl9yZXF1ZXN0IHsNCj4gPiDCoAl1bnNpZ25lZAkJemVybzox
Ow0KPiA+IMKgCXVuc2lnbmVkCQlzaG9ydF9ub3Rfb2s6MTsNCj4gPiDCoAl1bnNpZ25lZAkJZG1h
X21hcHBlZDoxOw0KPiA+ICsJdW5zaWduZWQJCXNnX3dhc19tYXBwZWQ6MTsNCj4gDQo+IHdoeSBu
b3QgdXNlIGRtYV9tYXBwZWQgZGlyZWNsdHk/DQoNCkJlY2F1c2Ugb2YgdGhlIHVubWFwIGNhc2Uu
IFdlIHdhbnQgdG8ga25vdyB3aGV0aGVyIHdlIHNob3VsZCB1bm1hcCBvcg0Kbm90Lg0KDQo+IA0K
PiBGcmFuaw0KDQpDaGVlcnMsDQotUGF1bA0KDQo+IA0KPiA+IMKgDQo+ID4gwqAJdm9pZAkJCSgq
Y29tcGxldGUpKHN0cnVjdCB1c2JfZXAgKmVwLA0KPiA+IMKgCQkJCQlzdHJ1Y3QgdXNiX3JlcXVl
c3QgKnJlcSk7DQo+ID4gLS0gDQo+ID4gMi40My4wDQo+ID4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
