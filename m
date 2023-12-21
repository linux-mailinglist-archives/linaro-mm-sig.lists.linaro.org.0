Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 766CD81BAC5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 16:29:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78A7F3F009
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 15:29:52 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 7C3303ED86
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 15:29:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=mPJVEoL7;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1703172570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=S3jLsuWp0eHbR7sFaPwv2PYYJeuE7Uz8tuEbC3SNVWs=;
	b=mPJVEoL7U3BkI4v4nuQiZc47+4kRct8ZnU/lH2TDGw3pAOu7mc0V33RlEfCBImVaAo2Mn2
	3+3b8TznG0oO4ZeZ7bDM4Vm//Pg0h1xEWew4Q74fz+8MSMVi2AnX15TTL/29yGTwX8OahE
	LCVOPLNKys6YUjnwOSHqVJ0jtnggUec=
Message-ID: <fdfa480e2e702e4e0e96269ac579f2ee750f1fc1.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Vinod Koul <vkoul@kernel.org>
Date: Thu, 21 Dec 2023 16:29:27 +0100
In-Reply-To: <ZYRWbROAuMXftH07@matsya>
References: <20231219175009.65482-1-paul@crapouillou.net>
	 <20231219175009.65482-4-paul@crapouillou.net> <ZYRWbROAuMXftH07@matsya>
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
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,linaro.org,amd.com,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[crapouillou.net:email,crapouillou.net:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7C3303ED86
X-Spamd-Bar: ------
Message-ID-Hash: VJQW5QOGBRVH7RQ2UUDRQ3VMY34QJCFV
X-Message-ID-Hash: VJQW5QOGBRVH7RQ2UUDRQ3VMY34QJCFV
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dmaengine: Add API function dmaengine_prep_slave_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VJQW5QOGBRVH7RQ2UUDRQ3VMY34QJCFV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVmlub2QsDQoNCkxlIGpldWRpIDIxIGTDqWNlbWJyZSAyMDIzIMOgIDIwOjQ0ICswNTMwLCBW
aW5vZCBLb3VsIGEgw6ljcml0wqA6DQo+IE9uIDE5LTEyLTIzLCAxODo1MCwgUGF1bCBDZXJjdWVp
bCB3cm90ZToNCj4gPiBUaGlzIGZ1bmN0aW9uIGNhbiBiZSB1c2VkIHRvIGluaXRpYXRlIGEgc2Nh
dHRlci1nYXRoZXIgRE1BDQo+ID4gdHJhbnNmZXIsDQo+ID4gd2hlcmUgdGhlIGFkZHJlc3MgYW5k
IHNpemUgb2YgZWFjaCBzZWdtZW50IGlzIGxvY2F0ZWQgaW4gb25lIGVudHJ5DQo+ID4gb2YNCj4g
PiB0aGUgZG1hX3ZlYyBhcnJheS4NCj4gPiANCj4gPiBUaGUgbWFqb3IgZGlmZmVyZW5jZSB3aXRo
IGRtYWVuZ2luZV9wcmVwX3NsYXZlX3NnKCkgaXMgdGhhdCBpdA0KPiA+IHN1cHBvcnRzDQo+ID4g
c3BlY2lmeWluZyB0aGUgbGVuZ3RocyBvZiBlYWNoIERNQSB0cmFuc2ZlcjsgYXMgdHJ5aW5nIHRv
IG92ZXJyaWRlDQo+ID4gdGhlDQo+ID4gbGVuZ3RoIG9mIHRoZSB0cmFuc2ZlciB3aXRoIGRtYWVu
Z2luZV9wcmVwX3NsYXZlX3NnKCkgaXMgYSB2ZXJ5DQo+ID4gdGVkaW91cw0KPiA+IHByb2Nlc3Mu
IFRoZSBpbnRyb2R1Y3Rpb24gb2YgYSBuZXcgQVBJIGZ1bmN0aW9uIGlzIGFsc28ganVzdGlmaWVk
DQo+ID4gYnkgdGhlDQo+ID4gZmFjdCB0aGF0IHNjYXR0ZXJsaXN0cyBhcmUgb24gdGhlaXIgd2F5
IG91dC4NCj4gPiANCj4gPiBOb3RlIHRoYXQgZG1hZW5naW5lX3ByZXBfaW50ZXJsZWF2ZWRfZG1h
KCkgaXMgbm90IGhlbHBmdWwgZWl0aGVyIGluDQo+ID4gdGhhdA0KPiA+IGNhc2UsIGFzIGl0IGFz
c3VtZXMgdGhhdCB0aGUgYWRkcmVzcyBvZiBlYWNoIHNlZ21lbnQgd2lsbCBiZSBoaWdoZXINCj4g
PiB0aGFuDQo+ID4gdGhlIG9uZSBvZiB0aGUgcHJldmlvdXMgc2VnbWVudCwgd2hpY2ggd2UganVz
dCBjYW5ub3QgZ3VhcmFudGVlIGluDQo+ID4gY2FzZQ0KPiA+IG9mIGEgc2NhdHRlci1nYXRoZXIg
dHJhbnNmZXIuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBj
cmFwb3VpbGxvdS5uZXQ+DQo+ID4gDQo+ID4gLS0tDQo+ID4gdjM6IE5ldyBwYXRjaA0KPiA+IA0K
PiA+IHY1OiBSZXBsYWNlIHdpdGggZnVuY3Rpb24gZG1hZW5naW5lX3ByZXBfc2xhdmVfZG1hX3Zl
YygpLCBhbmQNCj4gPiBzdHJ1Y3QNCj4gPiDCoMKgwqAgJ2RtYV92ZWMnLg0KPiA+IMKgwqDCoCBO
b3RlIHRoYXQgYXQgc29tZSBwb2ludCB3ZSB3aWxsIG5lZWQgdG8gc3VwcG9ydCBjeWNsaWMNCj4g
PiB0cmFuc2ZlcnMNCj4gPiDCoMKgwqAgdXNpbmcgZG1hZW5naW5lX3ByZXBfc2xhdmVfZG1hX3Zl
YygpLiBNYXliZSB3aXRoIGEgbmV3ICJmbGFncyINCj4gPiDCoMKgwqAgcGFyYW1ldGVyIHRvIHRo
ZSBmdW5jdGlvbj8NCj4gPiAtLS0NCj4gPiDCoGluY2x1ZGUvbGludXgvZG1hZW5naW5lLmggfCAy
NSArKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMjUgaW5z
ZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYWVuZ2lu
ZS5oIGIvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaA0KPiA+IGluZGV4IDNkZjcwZDYxMzFjOC4u
ZWU1OTMxZGRiNDJmIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hZW5naW5lLmgN
Cj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oDQo+ID4gQEAgLTE2MCw2ICsxNjAs
MTYgQEAgc3RydWN0IGRtYV9pbnRlcmxlYXZlZF90ZW1wbGF0ZSB7DQo+ID4gwqAJc3RydWN0IGRh
dGFfY2h1bmsgc2dsW107DQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gKy8qKg0KPiA+ICsgKiBzdHJ1
Y3QgZG1hX3ZlYyAtIERNQSB2ZWN0b3INCj4gPiArICogQGFkZHI6IEJ1cyBhZGRyZXNzIG9mIHRo
ZSBzdGFydCBvZiB0aGUgdmVjdG9yDQo+ID4gKyAqIEBsZW46IExlbmd0aCBpbiBieXRlcyBvZiB0
aGUgRE1BIHZlY3Rvcg0KPiA+ICsgKi8NCj4gPiArc3RydWN0IGRtYV92ZWMgew0KPiA+ICsJZG1h
X2FkZHJfdCBhZGRyOw0KPiA+ICsJc2l6ZV90IGxlbjsNCj4gPiArfTsNCj4gDQo+IHNvIHlvdSB3
YW50IHRvIHRyYW5zZmVyIG11bHRpcGxlIGJ1ZmZlcnMsIHJpZ2h0PyB3aHkgbm90IHVzZQ0KPiBk
bWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygpLiBJZiB0aGVyZSBpcyByZWFzb24gZm9yIG5vdCB1c2lu
ZyB0aGF0IG9uZT8NCg0KV2VsbCBJIHRoaW5rIEkgYW5zd2VyIHRoYXQgaW4gdGhlIGNvbW1pdCBt
ZXNzYWdlLCBkb24ndCBJPw0KDQo+IEZ1cnRoZXJtb3JlIEkgbWlzc2VkIHJlcGx5aW5nIHRvIHlv
dXIgZW1haWwgZWFybGllciBvbiB1c2Ugb2YNCj4gZG1hZW5naW5lX3ByZXBfaW50ZXJsZWF2ZWRf
ZG1hKCksIG15IGFwb2xvZ2llcy4NCj4gVGhhdCBjYW4gYmUgbWFkZSB0byB3b3JrIGZvciB5b3Ug
YXMgd2VsbC4gUGxlYXNlIHNlZSB0aGUgbm90ZXMgd2hlcmUNCj4gaWNnDQo+IGNhbiBiZSBpZ25v
cmVkIGFuZCBpdCBkb2VzIG5vdCBuZWVkIGljZyB2YWx1ZSB0byBiZSBzZXQNCj4gDQo+IEluZmFj
dCwgaW50ZXJsZWF2ZWQgYXBpIGNhbiBiZSBtYWRlIHRvIHdvcmsgaW4gbW9zdCBvZiB0aGVzZSBj
YXNlcyBJDQo+IGNhbg0KPiB0aGluayBvZi4uLg0KDQpTbyBpZiBJIHdhbnQgdG8gdHJhbnNmZXIg
MTYgYnl0ZXMgZnJvbSAweDEwLCB0aGVuIDE2IGJ5dGVzIGZyb20gMHgwLA0KdGhlbiAxNiBieXRl
cyBmcm9tIDB4MjAsIGhvdyBzaG91bGQgSSBjb25maWd1cmUgdGhlDQpkbWFfaW50ZXJsZWF2ZWRf
dGVtcGxhdGU/DQoNCkNoZWVycywNCi1QYXVsDQoNCj4gPiArDQo+ID4gwqAvKioNCj4gPiDCoCAq
IGVudW0gZG1hX2N0cmxfZmxhZ3MgLSBETUEgZmxhZ3MgdG8gYXVnbWVudCBvcGVyYXRpb24NCj4g
PiBwcmVwYXJhdGlvbiwNCj4gPiDCoCAqwqAgY29udHJvbCBjb21wbGV0aW9uLCBhbmQgY29tbXVu
aWNhdGUgc3RhdHVzLg0KPiA+IEBAIC05MTAsNiArOTIwLDEwIEBAIHN0cnVjdCBkbWFfZGV2aWNl
IHsNCj4gPiDCoAlzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3INCj4gPiAqKCpkZXZpY2Vf
cHJlcF9kbWFfaW50ZXJydXB0KSgNCj4gPiDCoAkJc3RydWN0IGRtYV9jaGFuICpjaGFuLCB1bnNp
Z25lZCBsb25nIGZsYWdzKTsNCj4gPiDCoA0KPiA+ICsJc3RydWN0IGRtYV9hc3luY190eF9kZXNj
cmlwdG9yDQo+ID4gKigqZGV2aWNlX3ByZXBfc2xhdmVfZG1hX3ZlYykoDQo+ID4gKwkJc3RydWN0
IGRtYV9jaGFuICpjaGFuLCBjb25zdCBzdHJ1Y3QgZG1hX3ZlYyAqdmVjcywNCj4gPiArCQlzaXpl
X3QgbmVudHMsIGVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbg0KPiA+IGRpcmVjdGlvbiwNCj4g
PiArCQl1bnNpZ25lZCBsb25nIGZsYWdzKTsNCj4gPiDCoAlzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rl
c2NyaXB0b3IgKigqZGV2aWNlX3ByZXBfc2xhdmVfc2cpKA0KPiA+IMKgCQlzdHJ1Y3QgZG1hX2No
YW4gKmNoYW4sIHN0cnVjdCBzY2F0dGVybGlzdCAqc2dsLA0KPiA+IMKgCQl1bnNpZ25lZCBpbnQg
c2dfbGVuLCBlbnVtIGRtYV90cmFuc2Zlcl9kaXJlY3Rpb24NCj4gPiBkaXJlY3Rpb24sDQo+ID4g
QEAgLTk3Miw2ICs5ODYsMTcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rl
c2NyaXB0b3INCj4gPiAqZG1hZW5naW5lX3ByZXBfc2xhdmVfc2luZ2xlKA0KPiA+IMKgCQkJCQkJ
wqAgZGlyLCBmbGFncywNCj4gPiBOVUxMKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+ICtzdGF0aWMg
aW5saW5lIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvcg0KPiA+ICpkbWFlbmdpbmVfcHJl
cF9zbGF2ZV9kbWFfdmVjKA0KPiA+ICsJc3RydWN0IGRtYV9jaGFuICpjaGFuLCBjb25zdCBzdHJ1
Y3QgZG1hX3ZlYyAqdmVjcywgc2l6ZV90DQo+ID4gbmVudHMsDQo+ID4gKwllbnVtIGRtYV90cmFu
c2Zlcl9kaXJlY3Rpb24gZGlyLCB1bnNpZ25lZCBsb25nIGZsYWdzKQ0KPiA+ICt7DQo+ID4gKwlp
ZiAoIWNoYW4gfHwgIWNoYW4tPmRldmljZSB8fCAhY2hhbi0+ZGV2aWNlLQ0KPiA+ID5kZXZpY2Vf
cHJlcF9zbGF2ZV9kbWFfdmVjKQ0KPiA+ICsJCXJldHVybiBOVUxMOw0KPiA+ICsNCj4gPiArCXJl
dHVybiBjaGFuLT5kZXZpY2UtPmRldmljZV9wcmVwX3NsYXZlX2RtYV92ZWMoY2hhbiwgdmVjcywN
Cj4gPiBuZW50cywNCj4gPiArCQkJCQkJwqDCoMKgwqDCoMKgIGRpciwNCj4gPiBmbGFncyk7DQo+
ID4gK30NCj4gPiArDQo+ID4gwqBzdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVz
Y3JpcHRvcg0KPiA+ICpkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygNCj4gPiDCoAlzdHJ1Y3QgZG1h
X2NoYW4gKmNoYW4sIHN0cnVjdCBzY2F0dGVybGlzdA0KPiA+ICpzZ2wsCXVuc2lnbmVkIGludCBz
Z19sZW4sDQo+ID4gwqAJZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpciwgdW5zaWduZWQg
bG9uZyBmbGFncykNCj4gPiAtLSANCj4gPiAyLjQzLjANCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
