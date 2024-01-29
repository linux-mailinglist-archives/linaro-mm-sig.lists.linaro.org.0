Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A4E8407F3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 15:15:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F7B44009C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 14:15:21 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 525E63F5EB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jan 2024 14:15:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=d1tm4uHv;
	dmarc=pass (policy=none) header.from=crapouillou.net;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1706537710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pgidmgFeP0tk17gjD21+VDw69unAjkitiIzLDu66t2o=;
	b=d1tm4uHvLjI5geAdOzhvTRgdZIr1L3eaCvN8jfDMVBENQ99GYSV5EcCEqcQrqH6LHIAL++
	nfkRyyMWSUxnJPc+ogGTV6ArelezJ5g0QkZNbSG65vKXOClj6W+zGQdglXaZKVovqwiA1A
	GslGn9EBvHWlk2dR9BvhuZ0iweu8854=
Message-ID: <f676839ba47eefe7c33d3f46f4517fbdb1d01c7a.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Cameron
	 <jic23@kernel.org>
Date: Mon, 29 Jan 2024 15:15:08 +0100
In-Reply-To: <fb4bcbefcfd0ab1982172c780ce5c5f1e96ae798.camel@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	 <20231219175009.65482-6-paul@crapouillou.net>
	 <20231221120624.7bcdc302@jic23-huawei>
	 <ee5d7bb2fb3e74e8fc621d745b23d1858e1f0c3c.camel@crapouillou.net>
	 <20240127165044.22f1b329@jic23-huawei>
	 <d6bef39c-f940-4097-8ca3-0cf4ef89a743@amd.com>
	 <aac82ce15a49c5e4b939a69229b9a8a51ca00f5d.camel@crapouillou.net>
	 <8fc55451-dfd7-4d09-8051-8b39048f85e2@amd.com>
	 <fb4bcbefcfd0ab1982172c780ce5c5f1e96ae798.camel@crapouillou.net>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 525E63F5EB
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: MERV5SBYYX2WGTIUPT2LYWYP3HS53FLF
X-Message-ID-Hash: MERV5SBYYX2WGTIUPT2LYWYP3HS53FLF
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 5/8] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MERV5SBYYX2WGTIUPT2LYWYP3HS53FLF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMjkgamFudmllciAyMDI0IMOgIDE0OjMyICswMTAwLCBQYXVsIENlcmN1ZWlsIGEg
w6ljcml0wqA6DQo+IExlIGx1bmRpIDI5IGphbnZpZXIgMjAyNCDDoCAxNDoxNyArMDEwMCwgQ2hy
aXN0aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0KPiA+IEFtIDI5LjAxLjI0IHVtIDE0OjA2IHNjaHJp
ZWIgUGF1bCBDZXJjdWVpbDoNCj4gPiA+IEhpIENocmlzdGlhbiwNCj4gPiA+IA0KPiA+ID4gTGUg
bHVuZGkgMjkgamFudmllciAyMDI0IMOgIDEzOjUyICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIGEg
w6ljcml0wqA6DQo+ID4gPiA+IEFtIDI3LjAxLjI0IHVtIDE3OjUwIHNjaHJpZWIgSm9uYXRoYW4g
Q2FtZXJvbjoNCj4gPiA+ID4gPiA+ID4gPiArCWlpb19idWZmZXJfZG1hYnVmX3B1dChhdHRhY2gp
Ow0KPiA+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4gPiArb3V0X2RtYWJ1Zl9wdXQ6DQo+
ID4gPiA+ID4gPiA+ID4gKwlkbWFfYnVmX3B1dChkbWFidWYpOw0KPiA+ID4gPiA+ID4gPiBBcyBi
ZWxvdy4gRmVlbHMgbGlrZSBhIF9fZnJlZShkbWFfYnVmX3B1dCkgYml0IG9mIG1hZ2ljDQo+ID4g
PiA+ID4gPiA+IHdvdWxkDQo+ID4gPiA+ID4gPiA+IGJlIGENCj4gPiA+ID4gPiA+ID4gbmljZSB0
byBoYXZlLg0KPiA+ID4gPiA+ID4gSSdtIHdvcmtpbmcgb24gdGhlIHBhdGNoZXMgcmlnaHQgbm93
LCBqdXN0IG9uZSBxdWljaw0KPiA+ID4gPiA+ID4gcXVlc3Rpb24uDQo+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+IEhhdmluZyBhIF9fZnJlZShkbWFfYnVmX3B1dCkgcmVxdWlyZXMgdGhhdCBkbWFf
YnVmX3B1dCBpcw0KPiA+ID4gPiA+ID4gZmlyc3QNCj4gPiA+ID4gPiA+ICJyZWdpc3RlcmVkIiBh
cyBhIGZyZWVpbmcgZnVuY3Rpb24gdXNpbmcgREVGSU5FX0ZSRUUoKSBpbg0KPiA+ID4gPiA+ID4g
PGxpbnV4L2RtYS0NCj4gPiA+ID4gPiA+IGJ1Zi5oPiwgd2hpY2ggaGFzIG5vdCBiZWVuIGRvbmUg
eWV0Lg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBUaGF0IHdvdWxkIG1lYW4gY2Fycnlpbmcg
YSBkbWEtYnVmIHNwZWNpZmljIHBhdGNoIGluIHlvdXINCj4gPiA+ID4gPiA+IHRyZWUsDQo+ID4g
PiA+ID4gPiBhcmUgeW91DQo+ID4gPiA+ID4gPiBPSyB3aXRoIHRoYXQ/DQo+ID4gPiA+ID4gTmVl
ZHMgYW4gQUNLIGZyb20gYXBwcm9wcmlhdGUgbWFpbnRhaW5lciwgYnV0IG90aGVyd2lzZSBJJ20N
Cj4gPiA+ID4gPiBmaW5lDQo+ID4gPiA+ID4gZG9pbmcNCj4gPiA+ID4gPiBzby7CoCBBbHRlcm5h
dGl2ZSBpcyB0byBjaXJjbGUgYmFjayB0byB0aGlzIGxhdGVyIGFmdGVyIHRoaXMNCj4gPiA+ID4g
PiBjb2RlIGlzDQo+ID4gPiA+ID4gdXBzdHJlYW0uDQo+ID4gPiA+IFNlcGFyYXRlIHBhdGNoZXMg
Zm9yIHRoYXQgcGxlYXNlLCB0aGUgYXV0b2NsZWFudXAgZmVhdHVyZSBpcyBzbw0KPiA+ID4gPiBu
ZXcNCj4gPiA+ID4gdGhhdA0KPiA+ID4gPiBJJ20gbm90IDEwMCUgY29udmluY2VkIHRoYXQgZXZl
cnl0aGluZyB3b3JrcyBvdXQgc21vb3RobHkgZnJvbQ0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gc3Rh
cnQuDQo+ID4gPiBTZXBhcmF0ZSBwYXRjaGVzIGlzIGEgZ2l2ZW4sIGRpZCB5b3UgbWVhbiBvdXRz
aWRlIHRoaXMgcGF0Y2hzZXQ/DQo+ID4gPiBCZWNhdXNlIEkgY2FuIHNlbmQgYSBzZXBhcmF0ZSBw
YXRjaHNldCB0aGF0IGludHJvZHVjZXMgc2NvcGUtDQo+ID4gPiBiYXNlZA0KPiA+ID4gbWFuYWdl
bWVudCBmb3IgZG1hX2ZlbmNlIGFuZCBkbWFfYnVmLCBidXQgdGhlbiBpdCB3b24ndCBoYXZlDQo+
ID4gPiB1c2Vycy4NCj4gPiANCj4gPiBPdXRzaWRlIG9mIHRoZSBwYXRjaHNldCwgdGhpcyBpcyBl
c3NlbnRpYWxseSBicmFuZCBuZXcgc3R1ZmYuDQo+ID4gDQo+ID4gSUlSQyB3ZSBoYXZlIHF1aXRl
IGEgbnVtYmVyIG9mIGRtYV9mZW5jZSBzZWxmdGVzdHMgYW5kIHN3X3N5bmMNCj4gPiB3aGljaA0K
PiA+IGlzIA0KPiA+IGJhc2ljYWxseSBjb2RlIGluc2lkZSB0aGUgZHJpdmVycy9kbWEtYnVmIGRp
cmVjdG9yeSBvbmx5IHRoZXJlIGZvciANCj4gPiB0ZXN0aW5nIERNQS1idWYgZnVuY3Rpb25hbGl0
eS4NCj4gPiANCj4gPiBDb252ZXJ0IHRob3NlIG92ZXIgYXMgd2VsbCBhbmQgSSdtIG1vcmUgdGhh
biBoYXBweSB0byB1cHN0cmVhbSB0aGlzDQo+ID4gY2hhbmdlLg0KPiANCj4gV2VsbCB0aGVyZSBp
cyB2ZXJ5IGxpdHRsZSB0byBjb252ZXJ0IHRoZXJlOyB5b3UgY2FuIHVzZSBzY29wZS1iYXNlZA0K
PiBtYW5hZ2VtZW50IHdoZW4gdGhlIHVucmVmIGlzIGRvbmUgaW4gYWxsIGV4aXQgcG9pbnRzIG9m
IHRoZQ0KPiBmdW5jdGlvbmFsDQo+IGJsb2NrLCBhbmQgdGhlIG9ubHkgcGxhY2UgSSBjb3VsZCBm
aW5kIHRoYXQgZG9lcyB0aGF0IGluIGRyaXZlcnMvZG1hLQ0KPiBidWYvIHdhcyBpbiBkbWFfZmVu
Y2VfY2hhaW5fZW5hYmxlX3NpZ25hbGluZygpIGluIGRtYS1mZW5jZS1jaGFpbi5jLg0KDQpBY3R1
YWxseSAtIG5vdCBldmVuIHRoYXQsIHNpbmNlIGl0IGRvZXNuJ3QgY2FsbCBkbWFfZmVuY2VfZ2V0
KCkgYW5kDQpkbWFfZmVuY2VfcHV0KCkgb24gdGhlIHNhbWUgZmVuY2UuDQoNClNvIEkgY2Fubm90
IHVzZSBpdCBhbnl3aGVyZSBpbiBkcml2ZXJzL2RtYS1idWYvLg0KDQotUGF1bA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
