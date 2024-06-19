Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2062F90E96D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 13:30:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F23D43F04
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 11:30:35 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 034D040B7D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 11:30:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=BAebpz7I;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1718796629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Yyxl889DHkRMW58vYSwPNQbN8gbiIvWycmZudebEJWY=;
	b=BAebpz7IWphQzRh5q88qdbEOCnohwwD99HUuv6uLmCuPIcVCtRh7d7KKEOGYXbOF+yA0zg
	fkvTnyzraP9wFmsCl/N4rlkKn5iX2/kz1KYd29knS3JTELw0E+FEe1HVIYKrcawcZNBBOz
	E/oe8zwf+Hu5i0TxdXG7lnB6il26ZSc=
Message-ID: <e948cd137da8e4f97bfbf7ef68a5450476aeee0c.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Nuno
 =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org,
 dmaengine@vger.kernel.org,  linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linaro-mm-sig@lists.linaro.org, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal
 <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Date: Wed, 19 Jun 2024 13:30:27 +0200
In-Reply-To: <cbcfb64a-e5c2-41a7-8847-227d4f6872de@web.de>
References: <202406191014.9JAzwRV6-lkp@intel.com>
	 <a4dd1d73-5af3-4d3d-8c0f-92dc439fa119@web.de>
	 <d452ecc4fc703a1f98aa4f243c6ded7fbfe54b0e.camel@crapouillou.net>
	 <cbcfb64a-e5c2-41a7-8847-227d4f6872de@web.de>
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
X-Rspamd-Queue-Id: 034D040B7D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_ZERO(0.00)[0];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[web.de,intel.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,kernel.org,metafoo.de,linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[89.234.176.197:from];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BJMFWWZSNQWCAFYEEZ7C6DR7AEZBEA4V
X-Message-ID-Hash: BJMFWWZSNQWCAFYEEZ7C6DR7AEZBEA4V
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BJMFWWZSNQWCAFYEEZ7C6DR7AEZBEA4V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWVyY3JlZGkgMTkganVpbiAyMDI0IMOgIDEzOjEzICswMjAwLCBNYXJrdXMgRWxmcmluZyBh
IMOpY3JpdMKgOg0KPiA+ID4gV291bGQgeW91IGRhcmUgdG8gdHJhbnNmb3JtIHRoZSByZW1haW5p
bmcgZ290byBjaGFpbiBpbnRvIGZ1cnRoZXINCj4gPiA+IGFwcGxpY2F0aW9ucw0KPiA+ID4gb2Yg
c2NvcGUtYmFzZWQgcmVzb3VyY2UgbWFuYWdlbWVudD8NCj4gPiANCj4gPiBXZSBkaXNjdXNzZWQg
dGhpcyBhZnRlciB2NiBvciB2NywgRFJNL0RNQUJVRiBtYWludGFpbmVycyB3ZXJlIG5vdA0KPiA+
IGtlZW4NCj4gPiBvbiBkb2luZyB0aGF0ICpqdXN0IHlldCouDQo+IA0KPiAqIFdvdWxkIHlvdSBs
aWtlIHRvIGFkZCBhbnkgbGlua3MgZm9yIGNvcnJlc3BvbmRpbmcgZGV2ZWxvcG1lbnQNCj4gZGlz
Y3Vzc2lvbnM/DQoNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlpby8yMTlhYmM0M2I0
ZmRkNGExM2IzMDdlZDJlZmFhMGU2ODY5ZTY4ZTNmLmNhbWVsQGdtYWlsLmNvbS9ULyNlZWZkMzYw
MDY5YzQyNjFhZWM5NjIxZmFmZGUzMDkyNDcwNjU3MWM5NA0KDQooYW5kIHJlc3BvbnNlcyBiZWxv
dykNCg0KSXQncyBtb3JlIG51YW5jZWQgdGhhbiBJIHJlbWVtYmVyZWQuIENocmlzdGlhbiB3YXMg
T0sgdG8gYWRkIGNsZWFudXAuaA0Kc3VwcG9ydCB0byB0aGUgRE1BQlVGIGNvZGUgYXMgbG9uZyBh
cyB0aGUgZXhhbXBsZXMgd2VyZSB1cGRhdGVkIGFzDQp3ZWxsLCBidXQgdGhvc2UgYXJlbid0IGdv
b2QgY2FuZGlkYXRlcyBhcyB0aGV5IGRvbid0IGZyZWUgdXAgdGhlDQpyZXNvdXJjZXMgaW4gYWxs
IGNvZGUgcGF0aHMuDQoNCj4gDQo+ICogV2lsbCB0aGUgZGVzaXJlIGdyb3cgZm9yIGZ1cnRoZXIg
Y29sbGF0ZXJhbCBldm9sdXRpb24gYWNjb3JkaW5nIHRvDQo+IMKgIGFmZmVjdGVkIHNvZnR3YXJl
IGNvbXBvbmVudHM/DQoNCk5vdCBzdXJlIHdoYXQgeW91IG1lYW4gYnkgdGhhdC4NCg0KQ2hlZXJz
LA0KLVBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
