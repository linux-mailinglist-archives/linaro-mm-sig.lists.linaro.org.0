Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D5C840624
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 14:07:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8596A4009D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 13:07:08 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id D521340094
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jan 2024 13:07:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=lkJJhIQY;
	dmarc=pass (policy=none) header.from=crapouillou.net;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1706533620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=WZ6n1UUyKZ6/GqoAl9C1IKiMh8xfnXYw9yivuJaenjc=;
	b=lkJJhIQY7TfMtm88L38sEkEJxselNAE/Twb2fKnBQqdR6TXUlZ2g4KFkZoV01JpOgc4RAR
	rYr2XoaTW10D8p2tIFa0TUtnH8Nx8VUwnoNONT3e/nD7GZ+aKpfpdjZxhhLhw4eziLUrZs
	1uCNQrzVPFDxkK4VvOHIVRP3VMh3YSE=
Message-ID: <aac82ce15a49c5e4b939a69229b9a8a51ca00f5d.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Cameron
	 <jic23@kernel.org>
Date: Mon, 29 Jan 2024 14:06:58 +0100
In-Reply-To: <d6bef39c-f940-4097-8ca3-0cf4ef89a743@amd.com>
References: <20231219175009.65482-1-paul@crapouillou.net>
	 <20231219175009.65482-6-paul@crapouillou.net>
	 <20231221120624.7bcdc302@jic23-huawei>
	 <ee5d7bb2fb3e74e8fc621d745b23d1858e1f0c3c.camel@crapouillou.net>
	 <20240127165044.22f1b329@jic23-huawei>
	 <d6bef39c-f940-4097-8ca3-0cf4ef89a743@amd.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D521340094
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
Message-ID-Hash: MGB2WQRSX45R6LU76Y24NRJKQZLH4DFR
X-Message-ID-Hash: MGB2WQRSX45R6LU76Y24NRJKQZLH4DFR
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 5/8] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MGB2WQRSX45R6LU76Y24NRJKQZLH4DFR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpMZSBsdW5kaSAyOSBqYW52aWVyIDIwMjQgw6AgMTM6NTIgKzAxMDAs
IENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoNCj4gQW0gMjcuMDEuMjQgdW0gMTc6NTAgc2No
cmllYiBKb25hdGhhbiBDYW1lcm9uOg0KPiA+ID4gPiA+ICsJaWlvX2J1ZmZlcl9kbWFidWZfcHV0
KGF0dGFjaCk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICtvdXRfZG1hYnVmX3B1dDoNCj4gPiA+
ID4gPiArCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQo+ID4gPiA+IEFzIGJlbG93LiBGZWVscyBsaWtl
IGEgX19mcmVlKGRtYV9idWZfcHV0KSBiaXQgb2YgbWFnaWMgd291bGQNCj4gPiA+ID4gYmUgYQ0K
PiA+ID4gPiBuaWNlIHRvIGhhdmUuDQo+ID4gPiBJJ20gd29ya2luZyBvbiB0aGUgcGF0Y2hlcyBy
aWdodCBub3csIGp1c3Qgb25lIHF1aWNrIHF1ZXN0aW9uLg0KPiA+ID4gDQo+ID4gPiBIYXZpbmcg
YSBfX2ZyZWUoZG1hX2J1Zl9wdXQpIHJlcXVpcmVzIHRoYXQgZG1hX2J1Zl9wdXQgaXMgZmlyc3QN
Cj4gPiA+ICJyZWdpc3RlcmVkIiBhcyBhIGZyZWVpbmcgZnVuY3Rpb24gdXNpbmcgREVGSU5FX0ZS
RUUoKSBpbg0KPiA+ID4gPGxpbnV4L2RtYS0NCj4gPiA+IGJ1Zi5oPiwgd2hpY2ggaGFzIG5vdCBi
ZWVuIGRvbmUgeWV0Lg0KPiA+ID4gDQo+ID4gPiBUaGF0IHdvdWxkIG1lYW4gY2FycnlpbmcgYSBk
bWEtYnVmIHNwZWNpZmljIHBhdGNoIGluIHlvdXIgdHJlZSwNCj4gPiA+IGFyZSB5b3UNCj4gPiA+
IE9LIHdpdGggdGhhdD8NCj4gPiBOZWVkcyBhbiBBQ0sgZnJvbSBhcHByb3ByaWF0ZSBtYWludGFp
bmVyLCBidXQgb3RoZXJ3aXNlIEknbSBmaW5lDQo+ID4gZG9pbmcNCj4gPiBzby7CoCBBbHRlcm5h
dGl2ZSBpcyB0byBjaXJjbGUgYmFjayB0byB0aGlzIGxhdGVyIGFmdGVyIHRoaXMgY29kZSBpcw0K
PiA+IHVwc3RyZWFtLg0KPiANCj4gU2VwYXJhdGUgcGF0Y2hlcyBmb3IgdGhhdCBwbGVhc2UsIHRo
ZSBhdXRvY2xlYW51cCBmZWF0dXJlIGlzIHNvIG5ldw0KPiB0aGF0IA0KPiBJJ20gbm90IDEwMCUg
Y29udmluY2VkIHRoYXQgZXZlcnl0aGluZyB3b3JrcyBvdXQgc21vb3RobHkgZnJvbSB0aGUNCj4g
c3RhcnQuDQoNClNlcGFyYXRlIHBhdGNoZXMgaXMgYSBnaXZlbiwgZGlkIHlvdSBtZWFuIG91dHNp
ZGUgdGhpcyBwYXRjaHNldD8NCkJlY2F1c2UgSSBjYW4gc2VuZCBhIHNlcGFyYXRlIHBhdGNoc2V0
IHRoYXQgaW50cm9kdWNlcyBzY29wZS1iYXNlZA0KbWFuYWdlbWVudCBmb3IgZG1hX2ZlbmNlIGFu
ZCBkbWFfYnVmLCBidXQgdGhlbiBpdCB3b24ndCBoYXZlIHVzZXJzLg0KDQpDaGVlcnMsDQotUGF1
bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
