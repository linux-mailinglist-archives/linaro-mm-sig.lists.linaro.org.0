Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B10840701
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 14:33:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D9D54009A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 13:33:03 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 2753340094
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jan 2024 13:32:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=W9EZzwIn;
	dmarc=pass (policy=none) header.from=crapouillou.net;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1706535175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=d59Wxe7oQ2xFV3YZRkuj9csNOvmp5rKBI3z/v6Jf598=;
	b=W9EZzwInuv+DZkm0mAs6/p/QQ1xECK94jjGnlrJPq4Utmp0mFY7Dj/Dsv5Q+BCOEpHEc24
	RcwF01RMkY2HmSghuvyrmB9uAa/zPccW+L540sta2i7SkKsg8D2hx96zstRdUSoapxDx1q
	zhhPs5pkOJ7eMIkH4/2FQWQtIigx7Rs=
Message-ID: <fb4bcbefcfd0ab1982172c780ce5c5f1e96ae798.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Cameron
	 <jic23@kernel.org>
Date: Mon, 29 Jan 2024 14:32:53 +0100
In-Reply-To: <8fc55451-dfd7-4d09-8051-8b39048f85e2@amd.com>
References: <20231219175009.65482-1-paul@crapouillou.net>
	 <20231219175009.65482-6-paul@crapouillou.net>
	 <20231221120624.7bcdc302@jic23-huawei>
	 <ee5d7bb2fb3e74e8fc621d745b23d1858e1f0c3c.camel@crapouillou.net>
	 <20240127165044.22f1b329@jic23-huawei>
	 <d6bef39c-f940-4097-8ca3-0cf4ef89a743@amd.com>
	 <aac82ce15a49c5e4b939a69229b9a8a51ca00f5d.camel@crapouillou.net>
	 <8fc55451-dfd7-4d09-8051-8b39048f85e2@amd.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2753340094
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: 2JAN3NQ4QTACYW22RNAIIPPOVH6IPX6K
X-Message-ID-Hash: 2JAN3NQ4QTACYW22RNAIIPPOVH6IPX6K
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 5/8] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2JAN3NQ4QTACYW22RNAIIPPOVH6IPX6K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMjkgamFudmllciAyMDI0IMOgIDE0OjE3ICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IGEgw6ljcml0wqA6DQo+IEFtIDI5LjAxLjI0IHVtIDE0OjA2IHNjaHJpZWIgUGF1bCBDZXJjdWVp
bDoNCj4gPiBIaSBDaHJpc3RpYW4sDQo+ID4gDQo+ID4gTGUgbHVuZGkgMjkgamFudmllciAyMDI0
IMOgIDEzOjUyICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIGEgw6ljcml0wqA6DQo+ID4gPiBBbSAy
Ny4wMS4yNCB1bSAxNzo1MCBzY2hyaWViIEpvbmF0aGFuIENhbWVyb246DQo+ID4gPiA+ID4gPiA+
ICsJaWlvX2J1ZmZlcl9kbWFidWZfcHV0KGF0dGFjaCk7DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+
ID4gPiA+ID4gK291dF9kbWFidWZfcHV0Og0KPiA+ID4gPiA+ID4gPiArCWRtYV9idWZfcHV0KGRt
YWJ1Zik7DQo+ID4gPiA+ID4gPiBBcyBiZWxvdy4gRmVlbHMgbGlrZSBhIF9fZnJlZShkbWFfYnVm
X3B1dCkgYml0IG9mIG1hZ2ljDQo+ID4gPiA+ID4gPiB3b3VsZA0KPiA+ID4gPiA+ID4gYmUgYQ0K
PiA+ID4gPiA+ID4gbmljZSB0byBoYXZlLg0KPiA+ID4gPiA+IEknbSB3b3JraW5nIG9uIHRoZSBw
YXRjaGVzIHJpZ2h0IG5vdywganVzdCBvbmUgcXVpY2sNCj4gPiA+ID4gPiBxdWVzdGlvbi4NCj4g
PiA+ID4gPiANCj4gPiA+ID4gPiBIYXZpbmcgYSBfX2ZyZWUoZG1hX2J1Zl9wdXQpIHJlcXVpcmVz
IHRoYXQgZG1hX2J1Zl9wdXQgaXMNCj4gPiA+ID4gPiBmaXJzdA0KPiA+ID4gPiA+ICJyZWdpc3Rl
cmVkIiBhcyBhIGZyZWVpbmcgZnVuY3Rpb24gdXNpbmcgREVGSU5FX0ZSRUUoKSBpbg0KPiA+ID4g
PiA+IDxsaW51eC9kbWEtDQo+ID4gPiA+ID4gYnVmLmg+LCB3aGljaCBoYXMgbm90IGJlZW4gZG9u
ZSB5ZXQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhhdCB3b3VsZCBtZWFuIGNhcnJ5aW5nIGEg
ZG1hLWJ1ZiBzcGVjaWZpYyBwYXRjaCBpbiB5b3VyDQo+ID4gPiA+ID4gdHJlZSwNCj4gPiA+ID4g
PiBhcmUgeW91DQo+ID4gPiA+ID4gT0sgd2l0aCB0aGF0Pw0KPiA+ID4gPiBOZWVkcyBhbiBBQ0sg
ZnJvbSBhcHByb3ByaWF0ZSBtYWludGFpbmVyLCBidXQgb3RoZXJ3aXNlIEknbQ0KPiA+ID4gPiBm
aW5lDQo+ID4gPiA+IGRvaW5nDQo+ID4gPiA+IHNvLsKgIEFsdGVybmF0aXZlIGlzIHRvIGNpcmNs
ZSBiYWNrIHRvIHRoaXMgbGF0ZXIgYWZ0ZXIgdGhpcw0KPiA+ID4gPiBjb2RlIGlzDQo+ID4gPiA+
IHVwc3RyZWFtLg0KPiA+ID4gU2VwYXJhdGUgcGF0Y2hlcyBmb3IgdGhhdCBwbGVhc2UsIHRoZSBh
dXRvY2xlYW51cCBmZWF0dXJlIGlzIHNvDQo+ID4gPiBuZXcNCj4gPiA+IHRoYXQNCj4gPiA+IEkn
bSBub3QgMTAwJSBjb252aW5jZWQgdGhhdCBldmVyeXRoaW5nIHdvcmtzIG91dCBzbW9vdGhseSBm
cm9tDQo+ID4gPiB0aGUNCj4gPiA+IHN0YXJ0Lg0KPiA+IFNlcGFyYXRlIHBhdGNoZXMgaXMgYSBn
aXZlbiwgZGlkIHlvdSBtZWFuIG91dHNpZGUgdGhpcyBwYXRjaHNldD8NCj4gPiBCZWNhdXNlIEkg
Y2FuIHNlbmQgYSBzZXBhcmF0ZSBwYXRjaHNldCB0aGF0IGludHJvZHVjZXMgc2NvcGUtYmFzZWQN
Cj4gPiBtYW5hZ2VtZW50IGZvciBkbWFfZmVuY2UgYW5kIGRtYV9idWYsIGJ1dCB0aGVuIGl0IHdv
bid0IGhhdmUgdXNlcnMuDQo+IA0KPiBPdXRzaWRlIG9mIHRoZSBwYXRjaHNldCwgdGhpcyBpcyBl
c3NlbnRpYWxseSBicmFuZCBuZXcgc3R1ZmYuDQo+IA0KPiBJSVJDIHdlIGhhdmUgcXVpdGUgYSBu
dW1iZXIgb2YgZG1hX2ZlbmNlIHNlbGZ0ZXN0cyBhbmQgc3dfc3luYyB3aGljaA0KPiBpcyANCj4g
YmFzaWNhbGx5IGNvZGUgaW5zaWRlIHRoZSBkcml2ZXJzL2RtYS1idWYgZGlyZWN0b3J5IG9ubHkg
dGhlcmUgZm9yIA0KPiB0ZXN0aW5nIERNQS1idWYgZnVuY3Rpb25hbGl0eS4NCj4gDQo+IENvbnZl
cnQgdGhvc2Ugb3ZlciBhcyB3ZWxsIGFuZCBJJ20gbW9yZSB0aGFuIGhhcHB5IHRvIHVwc3RyZWFt
IHRoaXMNCj4gY2hhbmdlLg0KDQpXZWxsIHRoZXJlIGlzIHZlcnkgbGl0dGxlIHRvIGNvbnZlcnQg
dGhlcmU7IHlvdSBjYW4gdXNlIHNjb3BlLWJhc2VkDQptYW5hZ2VtZW50IHdoZW4gdGhlIHVucmVm
IGlzIGRvbmUgaW4gYWxsIGV4aXQgcG9pbnRzIG9mIHRoZSBmdW5jdGlvbmFsDQpibG9jaywgYW5k
IHRoZSBvbmx5IHBsYWNlIEkgY291bGQgZmluZCB0aGF0IGRvZXMgdGhhdCBpbiBkcml2ZXJzL2Rt
YS0NCmJ1Zi8gd2FzIGluIGRtYV9mZW5jZV9jaGFpbl9lbmFibGVfc2lnbmFsaW5nKCkgaW4gZG1h
LWZlbmNlLWNoYWluLmMuDQoNCkNoZWVycywNCi1QYXVsDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
