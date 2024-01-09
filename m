Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAED828479
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jan 2024 12:07:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 171633F31E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jan 2024 11:07:23 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id A35D83F31E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jan 2024 11:07:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b="ozRW/dUl";
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1704798420;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=maPpi5pmUERxsgHdYN5Es/kkWeI0IWDyPa8TG0tWmAY=;
	b=ozRW/dUls20TeIDbAFZQAcNeK5YMmXnYU/JGcPaHKHXpcKEv1EWitSfDamlyeWr5T20L5O
	w0lsQuvK43q8ByVCo2FnUyLX73HApccAv22vd8MF078D5KlULSsUO9aJxws/CRQR2Bx0EB
	Hc4OTHXRJXEERk4EDxFUbNMPX0EZ5NU=
Message-ID: <31e56028b4d865c60b7c01b2a305b3dd8a21ff7a.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 09 Jan 2024 12:06:58 +0100
In-Reply-To: <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
References: <20240108120056.22165-1-paul@crapouillou.net>
	 <20240108120056.22165-4-paul@crapouillou.net>
	 <ZZvtEXL8DLPPdtPs@phenom.ffwll.local>
	 <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
	 <ZZwU827NMHbx7bsO@phenom.ffwll.local>
	 <2c0d4ef1b657c56ea2290fe16d757ce563a3e71b.camel@crapouillou.net>
	 <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
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
	ARC_NA(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,linaro.org,amd.com,lwn.net,analog.com,vger.kernel.org,lists.freedesktop.org,collabora.com,lists.linaro.org,gmail.com,kernel.org];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A35D83F31E
X-Spamd-Bar: ------
Message-ID-Hash: FVDJ47OCKSNKPBG7KDTOJVJCIJ55GOUJ
X-Message-ID-Hash: FVDJ47OCKSNKPBG7KDTOJVJCIJ55GOUJ
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FVDJ47OCKSNKPBG7KDTOJVJCIJ55GOUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGFuaWVsIC8gU2ltYSwNCg0KTGUgbHVuZGkgMDggamFudmllciAyMDI0IMOgIDIwOjE5ICsw
MTAwLCBEYW5pZWwgVmV0dGVyIGEgw6ljcml0wqA6DQo+IE9uIE1vbiwgSmFuIDA4LCAyMDI0IGF0
IDA1OjI3OjMzUE0gKzAxMDAsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6DQo+ID4gTGUgbHVuZGkgMDgg
amFudmllciAyMDI0IMOgIDE2OjI5ICswMTAwLCBEYW5pZWwgVmV0dGVyIGEgw6ljcml0wqA6DQo+
ID4gPiBPbiBNb24sIEphbiAwOCwgMjAyNCBhdCAwMzoyMToyMVBNICswMTAwLCBQYXVsIENlcmN1
ZWlsIHdyb3RlOg0KPiA+ID4gPiBIaSBEYW5pZWwgKFNpbWE/KSwNCj4gPiA+ID4gDQo+ID4gPiA+
IExlIGx1bmRpIDA4IGphbnZpZXIgMjAyNCDDoCAxMzozOSArMDEwMCwgRGFuaWVsIFZldHRlciBh
IMOpY3JpdMKgOg0KPiA+ID4gPiA+IE9uIE1vbiwgSmFuIDA4LCAyMDI0IGF0IDAxOjAwOjU1UE0g
KzAxMDAsIFBhdWwgQ2VyY3VlaWwNCj4gPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiA+ICtzdGF0
aWMgdm9pZCBmZnNfZG1hYnVmX3NpZ25hbF9kb25lKHN0cnVjdCBmZnNfZG1hX2ZlbmNlDQo+ID4g
PiA+ID4gPiAqZG1hX2ZlbmNlLCBpbnQgcmV0KQ0KPiA+ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+
ICsJc3RydWN0IGZmc19kbWFidWZfcHJpdiAqcHJpdiA9IGRtYV9mZW5jZS0+cHJpdjsNCj4gPiA+
ID4gPiA+ICsJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSAmZG1hX2ZlbmNlLT5iYXNlOw0KPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKwlkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCj4gPiA+ID4g
PiA+ICsJZmVuY2UtPmVycm9yID0gcmV0Ow0KPiA+ID4gPiA+ID4gKwlkbWFfZmVuY2Vfc2lnbmFs
KGZlbmNlKTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsJZG1hX2J1Zl91bm1hcF9hdHRh
Y2htZW50KHByaXYtPmF0dGFjaCwgZG1hX2ZlbmNlLQ0KPiA+ID4gPiA+ID4gPnNndCwNCj4gPiA+
ID4gPiA+IGRtYV9mZW5jZS0+ZGlyKTsNCj4gPiA+ID4gPiA+ICsJZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7DQo+ID4gPiA+ID4gPiArCWZmc19kbWFidWZfcHV0KHByaXYtPmF0dGFjaCk7DQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gU28gdGhpcyBjYW4gaW4gdGhlb3J5IHRha2UgdGhlIGRtYV9yZXN2IGxv
Y2ssIGFuZCBpZiB0aGUgdXNiDQo+ID4gPiA+ID4gY29tcGxldGlvbg0KPiA+ID4gPiA+IGlzbid0
IGFuIHVubGltaXRlZCB3b3JrZXIgdGhpcyBjb3VsZCBob2xkIHVwIGNvbXBsZXRpb24gb2YNCj4g
PiA+ID4gPiBmdXR1cmUNCj4gPiA+ID4gPiBkbWFfZmVuY2UsIHJlc3VsdGluZyBpbiBhIGRlYWRs
b2NrLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IE5lZWRzIHRvIGJlIGNoZWNrZWQgaG93IHVzYiB3
b3JrcywgYW5kIGlmIHN0YWxsaW5nDQo+ID4gPiA+ID4gaW5kZWZpbml0ZWx5DQo+ID4gPiA+ID4g
aW4NCj4gPiA+ID4gPiB0aGUNCj4gPiA+ID4gPiBpb19jb21wbGV0ZSBjYWxsYmFjayBjYW4gaG9s
ZCB1cCB0aGUgdXNiIHN0YWNrIHlvdSBuZWVkIHRvOg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IC0g
ZHJvcCBhIGRtYV9mZW5jZV9iZWdpbi9lbmRfc2lnbmFsbGluZyBhbm5vdGF0aW9ucyBpbiBoZXJl
DQo+ID4gPiA+ID4gLSBwdWxsIG91dCB0aGUgdW5yZWYgc3R1ZmYgaW50byBhIHNlcGFyYXRlIHBy
ZWFsbG9jYXRlZA0KPiA+ID4gPiA+IHdvcmtlcg0KPiA+ID4gPiA+IChvciBhdA0KPiA+ID4gPiA+
IMKgIGxlYXN0IHRoZSBmaW5hbCB1bnJlZnMgZm9yIGZmc19kbWFfYnVmKS4NCj4gPiA+ID4gDQo+
ID4gPiA+IE9ubHkgZmZzX2RtYWJ1Zl9wdXQoKSBjYW4gYXR0ZW1wdCB0byB0YWtlIHRoZSBkbWFf
cmVzdiBhbmQNCj4gPiA+ID4gd291bGQNCj4gPiA+ID4gaGF2ZQ0KPiA+ID4gPiB0byBiZSBpbiBh
IHdvcmtlciwgcmlnaHQ/IEV2ZXJ5dGhpbmcgZWxzZSB3b3VsZCBiZSBpbnNpZGUgdGhlDQo+ID4g
PiA+IGRtYV9mZW5jZV9iZWdpbi9lbmRfc2lnbmFsbGluZygpIGFubm90YXRpb25zPw0KPiA+ID4g
DQo+ID4gPiBZdXAuIEFsc28gSSBub3RpY2VkIHRoYXQgdW5saWtlIHRoZSBpaW8gcGF0Y2hlcyB5
b3UgZG9uJ3QgaGF2ZQ0KPiA+ID4gdGhlDQo+ID4gPiBkbWFfYnVmX3VubWFwIGhlcmUgaW4gdGhl
IGNvbXBsZXRpb24gcGF0aCAob3IgSSdtIGJsaW5kPyksIHdoaWNoDQo+ID4gPiBoZWxwcyBhDQo+
ID4gPiBsb3Qgd2l0aCBhdm9pZGluZyB0cm91YmxlLg0KPiA+IA0KPiA+IFRoZXkgYm90aCBjYWxs
IGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgpIGluIHRoZSAic2lnbmFsIGRvbmUiDQo+ID4gY2Fs
bGJhY2ssIHRoZSBvbmx5IGRpZmZlcmVuY2UgSSBzZWUgaXMgdGhhdCBpdCBpcyBjYWxsZWQgYWZ0
ZXIgdGhlDQo+ID4gZG1hX2ZlbmNlX3B1dCgpIGluIHRoZSBpaW8gcGF0Y2hlcywgd2hpbGUgaXQn
cyBjYWxsZWQgYmVmb3JlDQo+ID4gZG1hX2ZlbmNlX3B1dCgpIGhlcmUuDQo+IA0KPiBJIHdhcyBp
bmRlZWQgYmxpbmQgLi4uDQo+IA0KPiBTbyB0aGUgdHJvdWJsZSBpcyB0aGlzIHdvbnQgd29yayBi
ZWNhdXNlOg0KPiAtIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgpIHJlcXVpcmVzIGRtYV9yZXN2
X2xvY2suIFRoaXMgaXMgYQ0KPiBzb21ld2hhdA0KPiDCoCByZWNlbnQtaXNoIGNoYW5nZSBmcm9t
IDQ3ZTk4MmQ1MTk1ZCAoImRtYS1idWY6IE1vdmUNCj4gwqAgZG1hX2J1Zl9tYXBfYXR0YWNobWVu
dCgpIHRvIGR5bmFtaWMgbG9ja2luZyBzcGVjaWZpY2F0aW9uIiksIHNvDQo+IG1heWJlDQo+IMKg
IG9sZCBrZXJuZWwgb3IgeW91IGRvbid0IGhhdmUgZnVsbCBsb2NrZGVwIGVuYWJsZWQgdG8gZ2V0
IHRoZSByaWdodA0KPiDCoCBzcGxhdC4NCj4gDQo+IC0gZG1hX2ZlbmNlIGNyaXRpY2FsIHNlY3Rp
b24gZm9yYmlkcyBkbWFfcmVzdl9sb2NrDQo+IA0KPiBXaGljaCBtZWFucyB5b3UgbmVlZCB0byBt
b3ZlIHRoaXMgb3V0LCBidXQgdGhlbiB0aGVyZSdzIHRoZSBwb3RlbnRpYWwNCj4gY2FjaGUgbWFu
YWdlbWVudCBpc3N1ZS4gV2hpY2ggY3VycmVudCBncHUgZHJpdmVycyBqdXN0IGtpbmRhIGlnbm9y
ZQ0KPiBiZWNhdXNlIGl0IGRvZXNuJ3QgbWF0dGVyIGZvciBjdXJyZW50IHVzZS1jYXNlLCB0aGV5
IGFsbCBjYWNoZSB0aGUNCj4gbWFwcGluZw0KPiBmb3IgYWJvdXQgYXMgbG9uZyBhcyB0aGUgYXR0
YWNobWVudCBleGlzdHMuIFlvdSBtaWdodCB3YW50IHRvIGRvIHRoZQ0KPiBzYW1lLA0KPiB1bmxl
c3MgdGhhdCBzb21laG93IGJyZWFrcyBhIHVzZS1jYXNlIHlvdSBoYXZlLCBJIGhhdmUgbm8gaWRl
YSBhYm91dA0KPiB0aGF0Lg0KPiBJZiBzb21ldGhpbmcgYnJlYWtzIHdpdGggdW5tYXBfYXR0YWNo
bWVudCBtb3ZlZCBvdXQgb2YgdGhlIGZlbmNlDQo+IGhhbmRsaW5nDQo+IHRoZW4gSSBndWVzcyBp
dCdzIGhpZ2ggdGltZSB0byBhZGQgc2VwYXJhdGUgY2FjaGUtbWFuYWdlbWVudCBvbmx5IHRvDQo+
IGRtYV9idWYgKGFuZCB0aGF0J3MgcHJvYmFibHkgZ29pbmcgdG8gYmUgcXVpdGUgc29tZSB3aXJp
bmcgdXAsIG5vdA0KPiBzdXJlDQo+IGV2ZW4gaG93IGVhc3kgdGhhdCB3b3VsZCBiZSB0byBkbyBu
b3Igd2hhdCBleGFjdGx5IHRoZSBpbnRlcmZhY2UNCj4gc2hvdWxkDQo+IGxvb2sgbGlrZSkuDQoN
Ck9rLiBUaGVuIEknbGwganVzdCBjYWNoZSB0aGUgbWFwcGluZyBmb3Igbm93LCBJIHRoaW5rLg0K
DQo+IENoZWVycywgU2ltYQ0KDQpDaGVlcnMsDQotUGF1bA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
