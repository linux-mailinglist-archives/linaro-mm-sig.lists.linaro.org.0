Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8200C90E7DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 12:09:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53D9943C3A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 10:09:35 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id CBBB13F0C3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 10:09:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=1h4vqr1K;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1718791771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=14bX73tgmn/BA687/LvvfUIWNbL3RdKyEfzJPMxEJL4=;
	b=1h4vqr1KRANPl05ZjHoyf2xpS1KYMGmytx2Oz+taxWQRpuzmLQ2t8bW+vuGysp/uCwJwk1
	db5yPoHWwqfxTzamfzPhZI4O6/0oESkXRReHcC+sivV2vonQfUap2TIhnK2Ldo0EYgrOmr
	/aYpULb30jruX1Au3Ew6CgxSNAJUWQg=
Message-ID: <d452ecc4fc703a1f98aa4f243c6ded7fbfe54b0e.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Nuno
 =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org,
 dmaengine@vger.kernel.org,  linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linaro-mm-sig@lists.linaro.org, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal
 <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Date: Wed, 19 Jun 2024 12:09:29 +0200
In-Reply-To: <a4dd1d73-5af3-4d3d-8c0f-92dc439fa119@web.de>
References: <202406191014.9JAzwRV6-lkp@intel.com>
	 <a4dd1d73-5af3-4d3d-8c0f-92dc439fa119@web.de>
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
X-Rspamd-Queue-Id: CBBB13F0C3
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_ZERO(0.00)[0];
	FREEMAIL_TO(0.00)[web.de,intel.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,kernel.org,metafoo.de,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6IEXQEO6Y6OPU33TODMTCTX46J3H4L5Q
X-Message-ID-Hash: 6IEXQEO6Y6OPU33TODMTCTX46J3H4L5Q
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6IEXQEO6Y6OPU33TODMTCTX46J3H4L5Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFya3VzLA0KDQpMZSBtZXJjcmVkaSAxOSBqdWluIDIwMjQgw6AgMTI6MDMgKzAyMDAsIE1h
cmt1cyBFbGZyaW5nIGEgw6ljcml0wqA6DQo+IOKApg0KPiA+IEFsbCBlcnJvcnMgKG5ldyBvbmVz
IHByZWZpeGVkIGJ5ID4+KToNCj4gPiANCj4gPiA+ID4gZHJpdmVycy9paW8vaW5kdXN0cmlhbGlv
LWJ1ZmZlci5jOjE3MTU6MzogZXJyb3I6IGNhbm5vdCBqdW1wDQo+ID4gPiA+IGZyb20gdGhpcyBn
b3RvIHN0YXRlbWVudCB0byBpdHMgbGFiZWwNCj4gPiDCoMKgwqAgMTcxNSB8wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJfZG1hYnVmX3VubWFwX2F0dGFjaG1lbnQ7DQo+
IOKApg0KPiANCj4gV291bGQgeW91IGRhcmUgdG8gdHJhbnNmb3JtIHRoZSByZW1haW5pbmcgZ290
byBjaGFpbiBpbnRvIGZ1cnRoZXINCj4gYXBwbGljYXRpb25zDQo+IG9mIHNjb3BlLWJhc2VkIHJl
c291cmNlIG1hbmFnZW1lbnQ/DQoNCldlIGRpc2N1c3NlZCB0aGlzIGFmdGVyIHY2IG9yIHY3LCBE
Uk0vRE1BQlVGIG1haW50YWluZXJzIHdlcmUgbm90IGtlZW4NCm9uIGRvaW5nIHRoYXQgKmp1c3Qg
eWV0Ki4NCg0KQ2hlZXJzLA0KLVBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
