Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ACE90EADC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 14:22:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B6DB4413A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 12:22:00 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 4C6B640B8E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 12:21:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=H5QlHj5b;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1718799717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=FVGqOE3wiRlvOnwpW+plbu90wTtSXAmdw/o00wdPQQk=;
	b=H5QlHj5b47jmWWPmYrEyBk2CLjfodSkuNO3iFqDQL3q9TAKryupn+V75JTiH8WmGI/eIFy
	0Zjifr0r4dCWg3FWwIzaMp3bxyNBFP/hFECEP7HFZpj/jn85MK8NLAlzARSlcjHxvvWIqv
	zj3xrSSMAXdnhmkQLs0rsmnmfWLPh7o=
Message-ID: <15edbedcac80961ec9b7834041e54143657cd48b.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Nuno
 =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org,
 dmaengine@vger.kernel.org,  linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linaro-mm-sig@lists.linaro.org, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal
 <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Date: Wed, 19 Jun 2024 14:21:55 +0200
In-Reply-To: <41fa9904-28a8-46fa-bf2a-014875409b83@web.de>
References: <202406191014.9JAzwRV6-lkp@intel.com>
	 <a4dd1d73-5af3-4d3d-8c0f-92dc439fa119@web.de>
	 <d452ecc4fc703a1f98aa4f243c6ded7fbfe54b0e.camel@crapouillou.net>
	 <cbcfb64a-e5c2-41a7-8847-227d4f6872de@web.de>
	 <e948cd137da8e4f97bfbf7ef68a5450476aeee0c.camel@crapouillou.net>
	 <41fa9904-28a8-46fa-bf2a-014875409b83@web.de>
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
X-Rspamd-Queue-Id: 4C6B640B8E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.90 / 15.00];
	BAYES_HAM(-2.90)[99.58%];
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
Message-ID-Hash: RQJAXRHWM66YWD3CANUIQ2QDYWPFVMAE
X-Message-ID-Hash: RQJAXRHWM66YWD3CANUIQ2QDYWPFVMAE
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RQJAXRHWM66YWD3CANUIQ2QDYWPFVMAE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWVyY3JlZGkgMTkganVpbiAyMDI0IMOgIDEzOjU2ICswMjAwLCBNYXJrdXMgRWxmcmluZyBh
IMOpY3JpdMKgOg0KPiDigKYNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1paW8v
MjE5YWJjNDNiNGZkZDRhMTNiMzA3ZWQyZWZhYTBlNjg2OWU2OGUzZi5jYW1lbEBnbWFpbC5jb20v
VC8jZWVmZDM2MDA2OWM0MjYxYWVjOTYyMWZhZmRlMzA5MjQ3MDY1NzFjOTQNCj4gPiANCj4gPiAo
YW5kIHJlc3BvbnNlcyBiZWxvdykNCj4gPiANCj4gPiBJdCdzIG1vcmUgbnVhbmNlZCB0aGFuIEkg
cmVtZW1iZXJlZC4NCj4g4oCmDQo+IA0KPiANCj4gPiA+ICogV2lsbCB0aGUgZGVzaXJlIGdyb3cg
Zm9yIGZ1cnRoZXIgY29sbGF0ZXJhbCBldm9sdXRpb24gYWNjb3JkaW5nDQo+ID4gPiB0bw0KPiA+
ID4gwqAgYWZmZWN0ZWQgc29mdHdhcmUgY29tcG9uZW50cz8NCj4gPiANCj4gPiBOb3Qgc3VyZSB3
aGF0IHlvdSBtZWFuIGJ5IHRoYXQuDQo+IA0KPiBBZHZhbmNlZCBwcm9ncmFtbWluZyBpbnRlcmZh
Y2VzIHdlcmUgYWRkZWQgYSB3aGlsZSBhZ28uDQo+IA0KPiBFeGFtcGxlOg0KPiBodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMC1yYzQvc291cmNlL2luY2x1ZGUvbGludXgvY2xl
YW51cC5oI0w4DQo+IA0KPiBDb3JyZXNwb25kaW5nIGF0dGVtcHRzIGZvciBpbmNyZWFzaW5nIEFQ
SSB1c2FnZSBuZWVkIHRvIGFkYXB0IHRvDQo+IHJlbWFpbmluZyBjaGFuZ2UgcmVsdWN0YW5jZSwN
Cj4gZG9uJ3QgdGhleT8NCg0KU3VyZSwgSSBndWVzcy4NCg0KQnV0IHRoYXQgZG9lcyBub3QgY2hh
bmdlIHRoZSBmYWN0IHRoYXQgSSBjYW5ub3QgdXNlIGNsZWFudXAuaCBtYWdpYyBpbg0KdGhpcyBw
YXRjaHNldCwgeWV0LCBhcyB0aGUgcmVxdWlyZWQgY2hhbmdlcyB3b3VsZCBoYXZlIHRvIGJlIGRv
bmUgaW4gYQ0Kc2VwYXJhdGUgb25lLg0KDQpDaGVlcnMsDQotUGF1bA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
