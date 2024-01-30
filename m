Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D5A842ACD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 18:23:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AB4D400E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 17:23:43 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id D77A0400A2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jan 2024 17:23:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=faZH3sia;
	dmarc=pass (policy=none) header.from=crapouillou.net;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1706635413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=5yttsGv/nZzm8P4I37O+sbjW65Bb56qxCJ5ApCblXiM=;
	b=faZH3siafi9jEi315A2HIps30mZcyIsINRLU55uymIvXMB5fB98He1hDz67Ccd+M0kvtEM
	1P9kAwCBxym7GHnLVrowoWysHJFkzjEI6d0v+0a+ThZomANVbwAxP3yndvdPm247qwjdQX
	2Z7gnNBfPsjBkxG2zNvElx2YtbwW6sw=
Message-ID: <fcf3e49cae178b18c0b15e12c69f9f2a84e8312e.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Vinod Koul <vkoul@kernel.org>
Date: Tue, 30 Jan 2024 18:23:31 +0100
In-Reply-To: <ZbkfC31eWBUQ3kSl@matsya>
References: <20240129170201.133785-1-paul@crapouillou.net>
	 <20240129170201.133785-2-paul@crapouillou.net> <ZbkfC31eWBUQ3kSl@matsya>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D77A0400A2
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
	RCPT_COUNT_TWELVE(0.00)[16];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: 7FIIAUSHITACZVVRTKLXOOBJQ2QWJODL
X-Message-ID-Hash: 7FIIAUSHITACZVVRTKLXOOBJQ2QWJODL
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Nuno Sa <nuno.sa@analog.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/6] dmaengine: Add API function dmaengine_prep_slave_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7FIIAUSHITACZVVRTKLXOOBJQ2QWJODL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVmlub2QsDQoNCkxlIG1hcmRpIDMwIGphbnZpZXIgMjAyNCDDoCAyMTozOCArMDUzMCwgVmlu
b2QgS291bCBhIMOpY3JpdMKgOg0KPiBPbiAyOS0wMS0yNCwgMTg6MDEsIFBhdWwgQ2VyY3VlaWwg
d3JvdGU6DQo+ID4gVGhpcyBmdW5jdGlvbiBjYW4gYmUgdXNlZCB0byBpbml0aWF0ZSBhIHNjYXR0
ZXItZ2F0aGVyIERNQQ0KPiA+IHRyYW5zZmVyLA0KPiA+IHdoZXJlIHRoZSBhZGRyZXNzIGFuZCBz
aXplIG9mIGVhY2ggc2VnbWVudCBpcyBsb2NhdGVkIGluIG9uZSBlbnRyeQ0KPiA+IG9mDQo+ID4g
dGhlIGRtYV92ZWMgYXJyYXkuDQo+ID4gDQo+ID4gVGhlIG1ham9yIGRpZmZlcmVuY2Ugd2l0aCBk
bWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygpIGlzIHRoYXQgaXQNCj4gPiBzdXBwb3J0cw0KPiA+IHNw
ZWNpZnlpbmcgdGhlIGxlbmd0aHMgb2YgZWFjaCBETUEgdHJhbnNmZXI7IGFzIHRyeWluZyB0byBv
dmVycmlkZQ0KPiA+IHRoZQ0KPiA+IGxlbmd0aCBvZiB0aGUgdHJhbnNmZXIgd2l0aCBkbWFlbmdp
bmVfcHJlcF9zbGF2ZV9zZygpIGlzIGEgdmVyeQ0KPiA+IHRlZGlvdXMNCj4gPiBwcm9jZXNzLiBU
aGUgaW50cm9kdWN0aW9uIG9mIGEgbmV3IEFQSSBmdW5jdGlvbiBpcyBhbHNvIGp1c3RpZmllZA0K
PiA+IGJ5IHRoZQ0KPiA+IGZhY3QgdGhhdCBzY2F0dGVybGlzdHMgYXJlIG9uIHRoZWlyIHdheSBv
dXQuDQo+ID4gDQo+ID4gTm90ZSB0aGF0IGRtYWVuZ2luZV9wcmVwX2ludGVybGVhdmVkX2RtYSgp
IGlzIG5vdCBoZWxwZnVsIGVpdGhlciBpbg0KPiA+IHRoYXQNCj4gPiBjYXNlLCBhcyBpdCBhc3N1
bWVzIHRoYXQgdGhlIGFkZHJlc3Mgb2YgZWFjaCBzZWdtZW50IHdpbGwgYmUgaGlnaGVyDQo+ID4g
dGhhbg0KPiA+IHRoZSBvbmUgb2YgdGhlIHByZXZpb3VzIHNlZ21lbnQsIHdoaWNoIHdlIGp1c3Qg
Y2Fubm90IGd1YXJhbnRlZSBpbg0KPiA+IGNhc2UNCj4gPiBvZiBhIHNjYXR0ZXItZ2F0aGVyIHRy
YW5zZmVyLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3Jh
cG91aWxsb3UubmV0Pg0KPiA+IA0KPiA+IC0tLQ0KPiA+IHYzOiBOZXcgcGF0Y2gNCj4gPiANCj4g
PiB2NTogUmVwbGFjZSB3aXRoIGZ1bmN0aW9uIGRtYWVuZ2luZV9wcmVwX3NsYXZlX2RtYV92ZWMo
KSwgYW5kDQo+ID4gc3RydWN0DQo+ID4gwqDCoMKgICdkbWFfdmVjJy4NCj4gPiDCoMKgwqAgTm90
ZSB0aGF0IGF0IHNvbWUgcG9pbnQgd2Ugd2lsbCBuZWVkIHRvIHN1cHBvcnQgY3ljbGljDQo+ID4g
dHJhbnNmZXJzDQo+ID4gwqDCoMKgIHVzaW5nIGRtYWVuZ2luZV9wcmVwX3NsYXZlX2RtYV92ZWMo
KS4gTWF5YmUgd2l0aCBhIG5ldyAiZmxhZ3MiDQo+ID4gwqDCoMKgIHBhcmFtZXRlciB0byB0aGUg
ZnVuY3Rpb24/DQo+IA0KPiB0aGF0IHdvdWxkIGJlIGJldHRlcg0KDQpPaywgSSB0aGluayBpdCdk
IGJlIGJldHRlciB0aGF0IEkgYWRkIGEgbmV3ICJmbGFncyIgcGFyYW1ldGVyIG5vdyAtDQpldmVu
IGlmIGl0IG1lYW5zIHBhc3NpbmcgMCB1bnRpbCB3ZSBhY3R1YWxseSBoYXZlIGZsYWdzIGZvciBp
dC4NCg0KPiANCj4gPiAtLS0NCj4gPiDCoGluY2x1ZGUvbGludXgvZG1hZW5naW5lLmggfCAyNSAr
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0
aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5o
IGIvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaA0KPiA+IGluZGV4IDNkZjcwZDYxMzFjOC4uZWU1
OTMxZGRiNDJmIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hZW5naW5lLmgNCj4g
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oDQo+ID4gQEAgLTE2MCw2ICsxNjAsMTYg
QEAgc3RydWN0IGRtYV9pbnRlcmxlYXZlZF90ZW1wbGF0ZSB7DQo+ID4gwqAJc3RydWN0IGRhdGFf
Y2h1bmsgc2dsW107DQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gKy8qKg0KPiA+ICsgKiBzdHJ1Y3Qg
ZG1hX3ZlYyAtIERNQSB2ZWN0b3INCj4gPiArICogQGFkZHI6IEJ1cyBhZGRyZXNzIG9mIHRoZSBz
dGFydCBvZiB0aGUgdmVjdG9yDQo+ID4gKyAqIEBsZW46IExlbmd0aCBpbiBieXRlcyBvZiB0aGUg
RE1BIHZlY3Rvcg0KPiA+ICsgKi8NCj4gPiArc3RydWN0IGRtYV92ZWMgew0KPiA+ICsJZG1hX2Fk
ZHJfdCBhZGRyOw0KPiA+ICsJc2l6ZV90IGxlbjsNCj4gPiArfTsNCj4gPiArDQo+ID4gwqAvKioN
Cj4gPiDCoCAqIGVudW0gZG1hX2N0cmxfZmxhZ3MgLSBETUEgZmxhZ3MgdG8gYXVnbWVudCBvcGVy
YXRpb24NCj4gPiBwcmVwYXJhdGlvbiwNCj4gPiDCoCAqwqAgY29udHJvbCBjb21wbGV0aW9uLCBh
bmQgY29tbXVuaWNhdGUgc3RhdHVzLg0KPiA+IEBAIC05MTAsNiArOTIwLDEwIEBAIHN0cnVjdCBk
bWFfZGV2aWNlIHsNCj4gPiDCoAlzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3INCj4gPiAq
KCpkZXZpY2VfcHJlcF9kbWFfaW50ZXJydXB0KSgNCj4gPiDCoAkJc3RydWN0IGRtYV9jaGFuICpj
aGFuLCB1bnNpZ25lZCBsb25nIGZsYWdzKTsNCj4gPiDCoA0KPiA+ICsJc3RydWN0IGRtYV9hc3lu
Y190eF9kZXNjcmlwdG9yDQo+ID4gKigqZGV2aWNlX3ByZXBfc2xhdmVfZG1hX3ZlYykoDQo+ID4g
KwkJc3RydWN0IGRtYV9jaGFuICpjaGFuLCBjb25zdCBzdHJ1Y3QgZG1hX3ZlYyAqdmVjcywNCj4g
PiArCQlzaXplX3QgbmVudHMsIGVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbg0KPiA+IGRpcmVj
dGlvbiwNCj4gPiArCQl1bnNpZ25lZCBsb25nIGZsYWdzKTsNCj4gDQo+IHMvc2xhdmUvcGVyaXBo
ZXJhbA0KPiANCj4gSSBoYWQgcmVxdWVzdGVkIGl0IGEgYml0IHdoaWxlIGFnbyBhcyB3ZWxsDQoN
CllvdSBkaWQuIFNvcnJ5LCBJIGZvcmdvdCBhYm91dCBpdCB3aGVuIHdvcmtpbmcgb24gdGhlIHY2
Lg0KDQpDaGVlcnMsDQotUGF1bA0KDQo+ID4gwqAJc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlw
dG9yICooKmRldmljZV9wcmVwX3NsYXZlX3NnKSgNCj4gPiDCoAkJc3RydWN0IGRtYV9jaGFuICpj
aGFuLCBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbCwNCj4gPiDCoAkJdW5zaWduZWQgaW50IHNnX2xl
biwgZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uDQo+ID4gZGlyZWN0aW9uLA0KPiA+IEBAIC05
NzIsNiArOTg2LDE3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlw
dG9yDQo+ID4gKmRtYWVuZ2luZV9wcmVwX3NsYXZlX3NpbmdsZSgNCj4gPiDCoAkJCQkJCcKgIGRp
ciwgZmxhZ3MsDQo+ID4gTlVMTCk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArc3RhdGljIGlubGlu
ZSBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3INCj4gPiAqZG1hZW5naW5lX3ByZXBfc2xh
dmVfZG1hX3ZlYygNCj4gPiArCXN0cnVjdCBkbWFfY2hhbiAqY2hhbiwgY29uc3Qgc3RydWN0IGRt
YV92ZWMgKnZlY3MsIHNpemVfdA0KPiA+IG5lbnRzLA0KPiA+ICsJZW51bSBkbWFfdHJhbnNmZXJf
ZGlyZWN0aW9uIGRpciwgdW5zaWduZWQgbG9uZyBmbGFncykNCj4gPiArew0KPiA+ICsJaWYgKCFj
aGFuIHx8ICFjaGFuLT5kZXZpY2UgfHwgIWNoYW4tPmRldmljZS0NCj4gPiA+ZGV2aWNlX3ByZXBf
c2xhdmVfZG1hX3ZlYykNCj4gPiArCQlyZXR1cm4gTlVMTDsNCj4gPiArDQo+ID4gKwlyZXR1cm4g
Y2hhbi0+ZGV2aWNlLT5kZXZpY2VfcHJlcF9zbGF2ZV9kbWFfdmVjKGNoYW4sIHZlY3MsDQo+ID4g
bmVudHMsDQo+ID4gKwkJCQkJCcKgwqDCoMKgwqDCoCBkaXIsDQo+ID4gZmxhZ3MpOw0KPiA+ICt9
DQo+ID4gKw0KPiA+IMKgc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0
b3INCj4gPiAqZG1hZW5naW5lX3ByZXBfc2xhdmVfc2coDQo+ID4gwqAJc3RydWN0IGRtYV9jaGFu
ICpjaGFuLCBzdHJ1Y3Qgc2NhdHRlcmxpc3QNCj4gPiAqc2dsLAl1bnNpZ25lZCBpbnQgc2dfbGVu
LA0KPiA+IMKgCWVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXIsIHVuc2lnbmVkIGxvbmcg
ZmxhZ3MpDQo+ID4gLS0gDQo+ID4gMi40My4wDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
