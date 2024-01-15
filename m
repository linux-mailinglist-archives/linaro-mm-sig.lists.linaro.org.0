Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1014E82D92A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jan 2024 13:54:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D49843E2B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jan 2024 12:54:51 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 0EFB53EFE7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jan 2024 12:54:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=TGJmJtp0;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705323269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=wPS9PGNnktolpsMyZWmcqV0h8t00iOZeW++DpiBOf6M=;
	b=TGJmJtp0rN5t00c7n03gNOyVRJq4sQk1NlzxuvE+wlv3F7ww+rqw4JAzaY3L/wysP9SV1z
	Jhjhq34N8dQBkbqC4uubJK102+jYzUJsrS4FuslO3E5waxli50YKt9q/aMQ8R5Uts0Qs3c
	D1T2M9eJKFH3dSsExfcnatwd3T18/d8=
Message-ID: <c100b5f75b12de4a331dd36de3573483dbde915f.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 15 Jan 2024 13:54:27 +0100
In-Reply-To: <ZZ1Dx1Jqbi61_Afb@phenom.ffwll.local>
References: <20240108120056.22165-1-paul@crapouillou.net>
	 <20240108120056.22165-4-paul@crapouillou.net>
	 <ZZvtEXL8DLPPdtPs@phenom.ffwll.local>
	 <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
	 <ZZwU827NMHbx7bsO@phenom.ffwll.local>
	 <2c0d4ef1b657c56ea2290fe16d757ce563a3e71b.camel@crapouillou.net>
	 <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
	 <31e56028b4d865c60b7c01b2a305b3dd8a21ff7a.camel@crapouillou.net>
	 <ZZ1Dx1Jqbi61_Afb@phenom.ffwll.local>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZMLQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5UzFZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtNz8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe+rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIPdlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7Urf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KFlBwgAhlGy6nqP7O3u7q23hRW5AQ0EXQqFwQEIAMo+MgvYHsyjX3Ja4Oolg1Txzm8woj30ch2nACFCqaO0R/1kLj2VVeLrDyQUOlXx9PD6IQI4M8wy8m0sR4wV2p/g/paw7k65cjzYYLh+FdLNyO7IW
	YXndJO+wDPi3aK/YKUYepqlP+QsmaHNYNdXEQDRKqNfJg8t0f5rfzp9ryxd1tCnbV+tG8VHQWiZXNqN7062DygSNXFUfQ0vZ3J2D4oAcIAEXTymRQ2+hr3Hf7I61KMHWeSkCvCG2decTYsHlw5Erix/jYWqVOtX0roOOLqWkqpQQJWtU+biWrAksmFmCp5fXIg1Nlg39v21xCXBGxJkxyTYuhdWyu1yDQ+LSIUAEQEAAYkBNgQYAQoAIBYhBNdHYd8OeCBwpMuVxnPua9InSr1BBQJdCoXBAhsMAAoJEHPua9InSr1B4wsH/Az767YCT0FSsMNt1jkkdLCBi7nY0GTW+PLP1a4zvVqFMo/vD6uz1ZflVTUAEvcTi3VHYZrlgjcxmcGu239oruqUS8Qy/xgZBp9KF0NTWQSl1iBfVbIU5VV1vHS6r77W5x0qXgfvAUWOH4gmN3MnF01SH2zMcLiaUGF+mcwl15rHbjnT3Nu2399aSE6cep86igfCAyFUOXjYEGlJy+c6UyT+DUylpjQg0nl8MlZ/7Whg2fAU9+FALIbQYQzGlT4c71SibR9T741jnegHhlmV4WXXUD6roFt54t0MSAFSVxzG8mLcSjR2cLUJ3NIPXixYUSEn3tQhfZj07xIIjWxAYZo=
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	FREEMAIL_CC(0.00)[linuxfoundation.org,linaro.org,amd.com,lwn.net,analog.com,vger.kernel.org,lists.freedesktop.org,collabora.com,lists.linaro.org,gmail.com,kernel.org];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0EFB53EFE7
X-Spamd-Bar: --
Message-ID-Hash: PQT34MNJTWOBBHXCYRC3ZNQZXXVBJNBB
X-Message-ID-Hash: PQT34MNJTWOBBHXCYRC3ZNQZXXVBJNBB
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linaro-mm-sig@lists.linaro.org, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PQT34MNJTWOBBHXCYRC3ZNQZXXVBJNBB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGFuaWVsIC8gU2ltYSwNCg0KTGUgbWFyZGkgMDkgamFudmllciAyMDI0IMOgIDE0OjAxICsw
MTAwLCBEYW5pZWwgVmV0dGVyIGEgw6ljcml0wqA6DQo+IE9uIFR1ZSwgSmFuIDA5LCAyMDI0IGF0
IDEyOjA2OjU4UE0gKzAxMDAsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6DQo+ID4gSGkgRGFuaWVsIC8g
U2ltYSwNCj4gPiANCj4gPiBMZSBsdW5kaSAwOCBqYW52aWVyIDIwMjQgw6AgMjA6MTkgKzAxMDAs
IERhbmllbCBWZXR0ZXIgYSDDqWNyaXTCoDoNCj4gPiA+IE9uIE1vbiwgSmFuIDA4LCAyMDI0IGF0
IDA1OjI3OjMzUE0gKzAxMDAsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6DQo+ID4gPiA+IExlIGx1bmRp
IDA4IGphbnZpZXIgMjAyNCDDoCAxNjoyOSArMDEwMCwgRGFuaWVsIFZldHRlciBhIMOpY3JpdMKg
Og0KPiA+ID4gPiA+IE9uIE1vbiwgSmFuIDA4LCAyMDI0IGF0IDAzOjIxOjIxUE0gKzAxMDAsIFBh
dWwgQ2VyY3VlaWwNCj4gPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiA+IEhpIERhbmllbCAoU2lt
YT8pLA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBMZSBsdW5kaSAwOCBqYW52aWVyIDIwMjQg
w6AgMTM6MzkgKzAxMDAsIERhbmllbCBWZXR0ZXIgYQ0KPiA+ID4gPiA+ID4gw6ljcml0wqA6DQo+
ID4gPiA+ID4gPiA+IE9uIE1vbiwgSmFuIDA4LCAyMDI0IGF0IDAxOjAwOjU1UE0gKzAxMDAsIFBh
dWwgQ2VyY3VlaWwNCj4gPiA+ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gK3N0YXRp
YyB2b2lkIGZmc19kbWFidWZfc2lnbmFsX2RvbmUoc3RydWN0DQo+ID4gPiA+ID4gPiA+ID4gZmZz
X2RtYV9mZW5jZQ0KPiA+ID4gPiA+ID4gPiA+ICpkbWFfZmVuY2UsIGludCByZXQpDQo+ID4gPiA+
ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+ID4gPiArCXN0cnVjdCBmZnNfZG1hYnVmX3ByaXYgKnBy
aXYgPSBkbWFfZmVuY2UtDQo+ID4gPiA+ID4gPiA+ID4gPnByaXY7DQo+ID4gPiA+ID4gPiA+ID4g
KwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9ICZkbWFfZmVuY2UtPmJhc2U7DQo+ID4gPiA+ID4g
PiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICsJZG1hX2ZlbmNlX2dldChmZW5jZSk7DQo+ID4gPiA+
ID4gPiA+ID4gKwlmZW5jZS0+ZXJyb3IgPSByZXQ7DQo+ID4gPiA+ID4gPiA+ID4gKwlkbWFfZmVu
Y2Vfc2lnbmFsKGZlbmNlKTsNCj4gPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ID4gKwlk
bWFfYnVmX3VubWFwX2F0dGFjaG1lbnQocHJpdi0+YXR0YWNoLA0KPiA+ID4gPiA+ID4gPiA+IGRt
YV9mZW5jZS0NCj4gPiA+ID4gPiA+ID4gPiA+IHNndCwNCj4gPiA+ID4gPiA+ID4gPiBkbWFfZmVu
Y2UtPmRpcik7DQo+ID4gPiA+ID4gPiA+ID4gKwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4gPiA+
ID4gPiA+ID4gPiArCWZmc19kbWFidWZfcHV0KHByaXYtPmF0dGFjaCk7DQo+ID4gPiA+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gPiBTbyB0aGlzIGNhbiBpbiB0aGVvcnkgdGFrZSB0aGUgZG1hX3Jlc3Yg
bG9jaywgYW5kIGlmIHRoZQ0KPiA+ID4gPiA+ID4gPiB1c2INCj4gPiA+ID4gPiA+ID4gY29tcGxl
dGlvbg0KPiA+ID4gPiA+ID4gPiBpc24ndCBhbiB1bmxpbWl0ZWQgd29ya2VyIHRoaXMgY291bGQg
aG9sZCB1cCBjb21wbGV0aW9uDQo+ID4gPiA+ID4gPiA+IG9mDQo+ID4gPiA+ID4gPiA+IGZ1dHVy
ZQ0KPiA+ID4gPiA+ID4gPiBkbWFfZmVuY2UsIHJlc3VsdGluZyBpbiBhIGRlYWRsb2NrLg0KPiA+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gTmVlZHMgdG8gYmUgY2hlY2tlZCBob3cgdXNiIHdv
cmtzLCBhbmQgaWYgc3RhbGxpbmcNCj4gPiA+ID4gPiA+ID4gaW5kZWZpbml0ZWx5DQo+ID4gPiA+
ID4gPiA+IGluDQo+ID4gPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+ID4gPiBpb19jb21wbGV0ZSBj
YWxsYmFjayBjYW4gaG9sZCB1cCB0aGUgdXNiIHN0YWNrIHlvdSBuZWVkDQo+ID4gPiA+ID4gPiA+
IHRvOg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gLSBkcm9wIGEgZG1hX2ZlbmNlX2Jl
Z2luL2VuZF9zaWduYWxsaW5nIGFubm90YXRpb25zIGluDQo+ID4gPiA+ID4gPiA+IGhlcmUNCj4g
PiA+ID4gPiA+ID4gLSBwdWxsIG91dCB0aGUgdW5yZWYgc3R1ZmYgaW50byBhIHNlcGFyYXRlIHBy
ZWFsbG9jYXRlZA0KPiA+ID4gPiA+ID4gPiB3b3JrZXINCj4gPiA+ID4gPiA+ID4gKG9yIGF0DQo+
ID4gPiA+ID4gPiA+IMKgIGxlYXN0IHRoZSBmaW5hbCB1bnJlZnMgZm9yIGZmc19kbWFfYnVmKS4N
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gT25seSBmZnNfZG1hYnVmX3B1dCgpIGNhbiBhdHRl
bXB0IHRvIHRha2UgdGhlIGRtYV9yZXN2IGFuZA0KPiA+ID4gPiA+ID4gd291bGQNCj4gPiA+ID4g
PiA+IGhhdmUNCj4gPiA+ID4gPiA+IHRvIGJlIGluIGEgd29ya2VyLCByaWdodD8gRXZlcnl0aGlu
ZyBlbHNlIHdvdWxkIGJlIGluc2lkZQ0KPiA+ID4gPiA+ID4gdGhlDQo+ID4gPiA+ID4gPiBkbWFf
ZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcoKSBhbm5vdGF0aW9ucz8NCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiBZdXAuIEFsc28gSSBub3RpY2VkIHRoYXQgdW5saWtlIHRoZSBpaW8gcGF0Y2hlcyB5
b3UgZG9uJ3QNCj4gPiA+ID4gPiBoYXZlDQo+ID4gPiA+ID4gdGhlDQo+ID4gPiA+ID4gZG1hX2J1
Zl91bm1hcCBoZXJlIGluIHRoZSBjb21wbGV0aW9uIHBhdGggKG9yIEknbSBibGluZD8pLA0KPiA+
ID4gPiA+IHdoaWNoDQo+ID4gPiA+ID4gaGVscHMgYQ0KPiA+ID4gPiA+IGxvdCB3aXRoIGF2b2lk
aW5nIHRyb3VibGUuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGV5IGJvdGggY2FsbCBkbWFfYnVmX3Vu
bWFwX2F0dGFjaG1lbnQoKSBpbiB0aGUgInNpZ25hbCBkb25lIg0KPiA+ID4gPiBjYWxsYmFjaywg
dGhlIG9ubHkgZGlmZmVyZW5jZSBJIHNlZSBpcyB0aGF0IGl0IGlzIGNhbGxlZCBhZnRlcg0KPiA+
ID4gPiB0aGUNCj4gPiA+ID4gZG1hX2ZlbmNlX3B1dCgpIGluIHRoZSBpaW8gcGF0Y2hlcywgd2hp
bGUgaXQncyBjYWxsZWQgYmVmb3JlDQo+ID4gPiA+IGRtYV9mZW5jZV9wdXQoKSBoZXJlLg0KPiA+
ID4gDQo+ID4gPiBJIHdhcyBpbmRlZWQgYmxpbmQgLi4uDQo+ID4gPiANCj4gPiA+IFNvIHRoZSB0
cm91YmxlIGlzIHRoaXMgd29udCB3b3JrIGJlY2F1c2U6DQo+ID4gPiAtIGRtYV9idWZfdW5tYXBf
YXR0YWNobWVudCgpIHJlcXVpcmVzIGRtYV9yZXN2X2xvY2suIFRoaXMgaXMgYQ0KPiA+ID4gc29t
ZXdoYXQNCj4gPiA+IMKgIHJlY2VudC1pc2ggY2hhbmdlIGZyb20gNDdlOTgyZDUxOTVkICgiZG1h
LWJ1ZjogTW92ZQ0KPiA+ID4gwqAgZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpIHRvIGR5bmFtaWMg
bG9ja2luZyBzcGVjaWZpY2F0aW9uIiksIHNvDQo+ID4gPiBtYXliZQ0KPiA+ID4gwqAgb2xkIGtl
cm5lbCBvciB5b3UgZG9uJ3QgaGF2ZSBmdWxsIGxvY2tkZXAgZW5hYmxlZCB0byBnZXQgdGhlDQo+
ID4gPiByaWdodA0KPiA+ID4gwqAgc3BsYXQuDQo+ID4gPiANCj4gPiA+IC0gZG1hX2ZlbmNlIGNy
aXRpY2FsIHNlY3Rpb24gZm9yYmlkcyBkbWFfcmVzdl9sb2NrDQo+ID4gPiANCj4gPiA+IFdoaWNo
IG1lYW5zIHlvdSBuZWVkIHRvIG1vdmUgdGhpcyBvdXQsIGJ1dCB0aGVuIHRoZXJlJ3MgdGhlDQo+
ID4gPiBwb3RlbnRpYWwNCj4gPiA+IGNhY2hlIG1hbmFnZW1lbnQgaXNzdWUuIFdoaWNoIGN1cnJl
bnQgZ3B1IGRyaXZlcnMganVzdCBraW5kYQ0KPiA+ID4gaWdub3JlDQo+ID4gPiBiZWNhdXNlIGl0
IGRvZXNuJ3QgbWF0dGVyIGZvciBjdXJyZW50IHVzZS1jYXNlLCB0aGV5IGFsbCBjYWNoZQ0KPiA+
ID4gdGhlDQo+ID4gPiBtYXBwaW5nDQo+ID4gPiBmb3IgYWJvdXQgYXMgbG9uZyBhcyB0aGUgYXR0
YWNobWVudCBleGlzdHMuIFlvdSBtaWdodCB3YW50IHRvIGRvDQo+ID4gPiB0aGUNCj4gPiA+IHNh
bWUsDQo+ID4gPiB1bmxlc3MgdGhhdCBzb21laG93IGJyZWFrcyBhIHVzZS1jYXNlIHlvdSBoYXZl
LCBJIGhhdmUgbm8gaWRlYQ0KPiA+ID4gYWJvdXQNCj4gPiA+IHRoYXQuDQo+ID4gPiBJZiBzb21l
dGhpbmcgYnJlYWtzIHdpdGggdW5tYXBfYXR0YWNobWVudCBtb3ZlZCBvdXQgb2YgdGhlIGZlbmNl
DQo+ID4gPiBoYW5kbGluZw0KPiA+ID4gdGhlbiBJIGd1ZXNzIGl0J3MgaGlnaCB0aW1lIHRvIGFk
ZCBzZXBhcmF0ZSBjYWNoZS1tYW5hZ2VtZW50IG9ubHkNCj4gPiA+IHRvDQo+ID4gPiBkbWFfYnVm
IChhbmQgdGhhdCdzIHByb2JhYmx5IGdvaW5nIHRvIGJlIHF1aXRlIHNvbWUgd2lyaW5nIHVwLA0K
PiA+ID4gbm90DQo+ID4gPiBzdXJlDQo+ID4gPiBldmVuIGhvdyBlYXN5IHRoYXQgd291bGQgYmUg
dG8gZG8gbm9yIHdoYXQgZXhhY3RseSB0aGUgaW50ZXJmYWNlDQo+ID4gPiBzaG91bGQNCj4gPiA+
IGxvb2sgbGlrZSkuDQo+ID4gDQo+ID4gT2suIFRoZW4gSSdsbCBqdXN0IGNhY2hlIHRoZSBtYXBw
aW5nIGZvciBub3csIEkgdGhpbmsuDQo+IA0KPiBZZWFoIEkgdGhpbmsgdGhhdCdzIHNpbXBsZXN0
LiBJIGRpZCBwb25kZXIgYSBiaXQgYW5kIEkgZG9uJ3QgdGhpbmsNCj4gaXQnZCBiZQ0KPiB0b28g
bXVjaCBwYWluIHRvIGFkZCB0aGUgY2FjaGUtbWFuYWdlbWVudCBmdW5jdGlvbnMgZm9yIGRldmlj
ZQ0KPiBhdHRhY2htZW50cy9tYXBwaW5ncy4gQnV0IGl0IHdvdWxkIGJlIHF1aXRlIHNvbWUgdHlw
aW5nIC4uLg0KPiAtU2ltYQ0KDQpJdCBsb29rcyBsaWtlIEkgYWN0dWFsbHkgZG8gaGF2ZSBzb21l
IGhhcmR3YXJlIHdoaWNoIHJlcXVpcmVzIHRoZSBjYWNoZQ0KbWFuYWdlbWVudC4gSWYgSSBjYWNo
ZSB0aGUgbWFwcGluZ3MgaW4gYm90aCBteSBJSU8gYW5kIFVTQiBjb2RlLCBpdA0Kd29ya3MgZmlu
ZSBvbiBteSBaZWRCb2FyZCwgYnV0IGl0IGRvZXNuJ3Qgd29yayBvbiBteSBaQ1UxMDIuDQoNCihP
ciBtYXliZSBpdCdzIHNvbWV0aGluZyBlbHNlPyBXaGF0IEkgZ2V0IGZyb20gVVNCIGluIHRoYXQg
Y2FzZSBpcyBhDQpzdHJlYW0gb2YgemVyb3MsIEknZCBleHBlY3QgaXQgdG8gYmUgbW9yZSBsaWtl
IGEgc3RyZWFtIG9mDQpnYXJiYWdlL3N0YWxlIGRhdGEpLg0KDQpTbywgY2hhbmdlIG9mIHBsYW5z
OyBJIHdpbGwgbm93IHVubWFwIHRoZSBhdHRhY2htZW50IGluIHRoZSBjbGVhbnVwDQp3b3JrZXIg
YWZ0ZXIgdGhlIGZlbmNlIGlzIHNpZ25hbGxlZCwgYW5kIGFkZCBhIHdhcm5pbmcgY29tbWVudCBi
ZWZvcmUNCnRoZSBlbmQgb2YgdGhlIGZlbmNlIGNyaXRpY2FsIHNlY3Rpb24gYWJvdXQgdGhlIG5l
ZWQgdG8gZG8gY2FjaGUNCm1hbmFnZW1lbnQgYmVmb3JlIHRoZSBzaWduYWwuDQoNCkRvZXMgdGhh
dCB3b3JrIGZvciB5b3U/DQoNCkNoZWVycywNCi1QYXVsDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
