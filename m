Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BEF901400
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Jun 2024 01:44:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63DF243F98
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  8 Jun 2024 23:44:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 891183F52A
	for <linaro-mm-sig@lists.linaro.org>; Sat,  8 Jun 2024 23:44:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=r5SLxSs0;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=V9bl0X2EUcg+/xnMVivcRgLaDT642pZxVyxB/8arGRo=; b=r5SLxSs0teVt0heVXrFiXPTwyh
	tCLqTim0yTaGhz3n/W/2p7hFcf8NukTwA46KXmiIP0XpsC6luaUevq140h1890113yB57+n+KfNmO
	uN+xa0Yg1MYqwi1EE/ceYNRdisVm9L3N0TJqI1n7GevQ1kmHjiPoEVZvm9wdyw1jekPEAUh0EzZgg
	2JR88baihne8VB2a/uqyTXjLRapVYx1feB46Is8C9rdo2fEoqnTt0v3LgCZZg4K9j245kznxHtjwH
	6glUe7oqvDFGJvTAE1RevWQtoE+rHuvfYslN2Bn6XioLEIA2LuQdU5IWXPAFzbyVXHAAvdE9ENGIw
	gJ6u7X3Q==;
Received: from [50.53.4.147] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sG5jW-00000001Dol-2nQv;
	Sat, 08 Jun 2024 23:44:26 +0000
Message-ID: <efbd5520-5eaa-49ab-817f-ae27172f8ceb@infradead.org>
Date: Sat, 8 Jun 2024 16:44:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Vinod Koul <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20240605110845.86740-1-paul@crapouillou.net>
 <20240605110845.86740-7-paul@crapouillou.net>
 <5052adab-5b5e-4ac2-902c-bb373c00bbbb@infradead.org>
 <14d802e84cbb8d3c9610386908706f264af34726.camel@crapouillou.net>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <14d802e84cbb8d3c9610386908706f264af34726.camel@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 891183F52A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.19 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	R_SPF_NA(0.00)[no SPF record];
	URIBL_BLOCKED(0.00)[bombadil.infradead.org:helo,bombadil.infradead.org:rdns,analog.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
Message-ID-Hash: K6UGLJEYC34OGZU7OPEEUJ62RZ6D2EX3
X-Message-ID-Hash: K6UGLJEYC34OGZU7OPEEUJ62RZ6D2EX3
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 6/6] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K6UGLJEYC34OGZU7OPEEUJ62RZ6D2EX3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUGF1bC4NCg0KT24gNi83LzI0IDEyOjQ0IEFNLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0KPiBI
aSBSYW5keSwNCj4gDQo+IExlIGpldWRpIDA2IGp1aW4gMjAyNCDDoCAxMDozMiAtMDcwMCwgUmFu
ZHkgRHVubGFwIGEgw6ljcml0wqA6DQo+PiBIaSwNCj4+DQo+PiBPbiA2LzUvMjQgNDowOCBBTSwg
UGF1bCBDZXJjdWVpbCB3cm90ZToNCj4+PiBEb2N1bWVudCB0aGUgbmV3IERNQUJVRiBiYXNlZCBB
UEkuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWls
bG91Lm5ldD4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBOdW5vIFNhIDxudW5vLnNhQGFuYWxvZy5jb20+
DQo+Pj4NCj4+PiAtLS0NCj4+PiB2MjogLSBFeHBsaWNpdGx5IHN0YXRlIHRoYXQgdGhlIG5ldyBp
bnRlcmZhY2UgaXMgb3B0aW9uYWwgYW5kIGlzDQo+Pj4gwqDCoMKgwqDCoCBub3QgaW1wbGVtZW50
ZWQgYnkgYWxsIGRyaXZlcnMuDQo+Pj4gwqDCoMKgIC0gVGhlIElPQ1RMcyBjYW4gbm93IG9ubHkg
YmUgY2FsbGVkIG9uIHRoZSBidWZmZXIgRkQgcmV0dXJuZWQNCj4+PiBieQ0KPj4+IMKgwqDCoMKg
wqAgSUlPX0JVRkZFUl9HRVRfRkRfSU9DVEwuDQo+Pj4gwqDCoMKgIC0gTW92ZSB0aGUgcGFnZSB1
cCBhIGJpdCBpbiB0aGUgaW5kZXggc2luY2UgaXQgaXMgY29yZSBzdHVmZg0KPj4+IGFuZCBub3QN
Cj4+PiDCoMKgwqDCoMKgIGRyaXZlci1zcGVjaWZpYy4NCj4+Pg0KPj4+IHYzOiBVcGRhdGUgdGhl
IGRvY3VtZW50YXRpb24gdG8gcmVmbGVjdCB0aGUgbmV3IEFQSS4NCj4+Pg0KPj4+IHY1OiBVc2Ug
ZGVzY3JpcHRpb24gbGlzdHMgZm9yIHRoZSBkb2N1bWVudGF0aW9uIG9mIHRoZSB0aHJlZSBuZXcN
Cj4+PiBJT0NUTHMNCj4+PiDCoMKgwqAgaW5zdGVhZCBvZiBhYnVzaW5nIHN1YnNlY3Rpb25zLg0K
Pj4+DQo+Pj4gdjg6IFJlbmFtZWQgZG1hYnVmX2FwaS5yc3QgLT4gaWlvX2RtYWJ1Zl9hcGkucnN0
LCBhbmQgdXBkYXRlZA0KPj4+IGluZGV4LnJzdA0KPj4+IMKgwqDCoCB3aG9zZSBmb3JtYXQgY2hh
bmdlZCBpbiBpaW8vdG9ncmVnLg0KPj4+IC0tLQ0KPj4+IMKgRG9jdW1lbnRhdGlvbi9paW8vaWlv
X2RtYWJ1Zl9hcGkucnN0IHwgNTQNCj4+PiArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+
Pj4gwqBEb2N1bWVudGF0aW9uL2lpby9pbmRleC5yc3TCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEg
Kw0KPj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspDQo+Pj4gwqBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9paW8vaWlvX2RtYWJ1Zl9hcGkucnN0DQo+Pj4NCj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9paW8vaWlvX2RtYWJ1Zl9hcGkucnN0DQo+Pj4g
Yi9Eb2N1bWVudGF0aW9uL2lpby9paW9fZG1hYnVmX2FwaS5yc3QNCj4+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMWNkNmNkNTFhNTgyDQo+Pj4gLS0tIC9k
ZXYvbnVsbA0KPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vaWlvL2lpb19kbWFidWZfYXBpLnJzdA0K
Pj4+IEBAIC0wLDAgKzEsNTQgQEANCj4+PiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjANCj4+PiArDQo+Pj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+
Pj4gK0hpZ2gtc3BlZWQgRE1BQlVGIGludGVyZmFjZSBmb3IgSUlPDQo+Pj4gKz09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09DQo+Pj4gKw0KPj4+ICsxLiBPdmVydmlldw0KPj4+ICs9
PT09PT09PT09PQ0KPj4+ICsNCj4+PiArVGhlIEluZHVzdHJpYWwgSS9PIHN1YnN5c3RlbSBzdXBw
b3J0cyBhY2Nlc3MgdG8gYnVmZmVycyB0aHJvdWdoIGENCj4+PiArZmlsZS1iYXNlZCBpbnRlcmZh
Y2UsIHdpdGggcmVhZCgpIGFuZCB3cml0ZSgpIGFjY2VzcyBjYWxscyB0aHJvdWdoDQo+Pj4gdGhl
DQo+Pj4gK0lJTyBkZXZpY2UncyBkZXYgbm9kZS4NCj4+PiArDQo+Pj4gK0l0IGFkZGl0aW9uYWxs
eSBzdXBwb3J0cyBhIERNQUJVRiBiYXNlZCBpbnRlcmZhY2UsIHdoZXJlIHRoZQ0KPj4+IHVzZXJz
cGFjZQ0KPj4+ICtjYW4gYXR0YWNoIERNQUJVRiBvYmplY3RzIChleHRlcm5hbGx5IGNyZWF0ZWQp
IHRvIGEgSUlPIGJ1ZmZlciwNCj4+PiBhbmQNCj4+DQo+PiBJIHdvdWxkIHNheS93cml0ZTrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0byBhbiBJSU8gYnVmZmVyLA0KPiANCj4gUmlnaHQuDQo+IA0KPj4+ICtzdWJzZXF1ZW50bHkg
dXNlIHRoZW0gZm9yIGRhdGEgdHJhbnNmZXJzLg0KPj4+ICsNCj4+PiArQSB1c2Vyc3BhY2UgYXBw
bGljYXRpb24gY2FuIHRoZW4gdXNlIHRoaXMgaW50ZXJmYWNlIHRvIHNoYXJlDQo+Pj4gRE1BQlVG
DQo+Pj4gK29iamVjdHMgYmV0d2VlbiBzZXZlcmFsIGludGVyZmFjZXMsIGFsbG93aW5nIGl0IHRv
IHRyYW5zZmVyIGRhdGENCj4+PiBpbiBhDQo+Pj4gK3plcm8tY29weSBmYXNoaW9uLCBmb3IgaW5z
dGFuY2UgYmV0d2VlbiBJSU8gYW5kIHRoZSBVU0Igc3RhY2suDQo+Pj4gKw0KPj4+ICtUaGUgdXNl
cnNwYWNlIGFwcGxpY2F0aW9uIGNhbiBhbHNvIG1lbW9yeS1tYXAgdGhlIERNQUJVRiBvYmplY3Rz
LA0KPj4+IGFuZA0KPj4+ICthY2Nlc3MgdGhlIHNhbXBsZSBkYXRhIGRpcmVjdGx5LiBUaGUgYWR2
YW50YWdlIG9mIGRvaW5nIHRoaXMgdnMuDQo+Pj4gdGhlDQo+Pj4gK3JlYWQoKSBpbnRlcmZhY2Ug
aXMgdGhhdCBpdCBhdm9pZHMgYW4gZXh0cmEgY29weSBvZiB0aGUgZGF0YQ0KPj4+IGJldHdlZW4g
dGhlDQo+Pj4gK2tlcm5lbCBhbmQgdXNlcnNwYWNlLiBUaGlzIGlzIHBhcnRpY3VsYXJseSB1c2Vm
dWwgZm9yIGhpZ2gtc3BlZWQNCj4+PiBkZXZpY2VzDQo+Pj4gK3doaWNoIHByb2R1Y2Ugc2V2ZXJh
bCBtZWdhYnl0ZXMgb3IgZXZlbiBnaWdhYnl0ZXMgb2YgZGF0YSBwZXINCj4+PiBzZWNvbmQuDQo+
Pj4gK0l0IGRvZXMgaG93ZXZlciBpbmNyZWFzZSB0aGUgdXNlcnNwYWNlLWtlcm5lbHNwYWNlIHN5
bmNocm9uaXphdGlvbg0KPj4+ICtvdmVyaGVhZCwgYXMgdGhlIERNQV9CVUZfU1lOQ19TVEFSVCBh
bmQgRE1BX0JVRl9TWU5DX0VORCBJT0NUTHMNCj4+PiBoYXZlIHRvDQo+Pj4gK2JlIHVzZWQgZm9y
IGRhdGEgaW50ZWdyaXR5Lg0KPj4+ICsNCj4+PiArMi4gVXNlciBBUEkNCj4+PiArPT09PT09PT09
PT0NCj4+PiArDQo+Pj4gK0FzIHBhcnQgb2YgdGhpcyBpbnRlcmZhY2UsIHRocmVlIG5ldyBJT0NU
THMgaGF2ZSBiZWVuIGFkZGVkLiBUaGVzZQ0KPj4+IHRocmVlDQo+Pj4gK0lPQ1RMcyBoYXZlIHRv
IGJlIHBlcmZvcm1lZCBvbiB0aGUgSUlPIGJ1ZmZlcidzIGZpbGUgZGVzY3JpcHRvciwNCj4+PiAr
b2J0YWluZWQgdXNpbmcgdGhlIElJT19CVUZGRVJfR0VUX0ZEX0lPQ1RMKCkgaW9jdGwuDQo+Pj4g
Kw0KPj4+ICvCoCBgYElJT19CVUZGRVJfRE1BQlVGX0FUVEFDSF9JT0NUTChpbnQpYGANCj4+DQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKGludCBmZCkNCj4+ID8NCj4gDQo+IFllcywgSSBjYW4gY2hhbmdl
IHRoYXQuIEFsdGhvdWdoIGl0J3MgdmVyeSBvYnZpb3VzIHdoYXQgdGhlICJpbnQiIGlzDQo+IGZv
ciwgZ2l2ZW4gdGhlIHRleHQgYWJvdmUuDQo+IA0KDQpZZXMuIFRoaXMgaXMganVzdCB0byBiZSBj
b25zaXN0ZW50IHdpdGggdGhlIHRleHQgYmVsb3c6DQoNCisgIGBgSUlPX0JVRkZFUl9ETUFCVUZf
RU5RVUVVRV9JT0NUTChzdHJ1Y3QgaWlvX2RtYWJ1ZiAqaWlvX2RtYWJ1ZilgYA0KDQo+Pg0KPj4+
ICvCoMKgwqAgQXR0YWNoIHRoZSBETUFCVUYgb2JqZWN0LCBpZGVudGlmaWVkIGJ5IGl0cyBmaWxl
IGRlc2NyaXB0b3IsDQo+Pj4gdG8gdGhlDQo+Pj4gK8KgwqDCoCBJSU8gYnVmZmVyLiBSZXR1cm5z
IHplcm8gb24gc3VjY2VzcywgYW5kIGEgbmVnYXRpdmUgZXJybm8NCj4+PiB2YWx1ZSBvbg0KPj4+
ICvCoMKgwqAgZXJyb3IuDQo+Pj4gKw0KPj4+ICvCoCBgYElJT19CVUZGRVJfRE1BQlVGX0RFVEFD
SF9JT0NUTChpbnQpYGANCj4+DQo+PiBkaXR0by4NCj4+DQo+Pj4gK8KgwqDCoCBEZXRhY2ggdGhl
IGdpdmVuIERNQUJVRiBvYmplY3QsIGlkZW50aWZpZWQgYnkgaXRzIGZpbGUNCj4+PiBkZXNjcmlw
dG9yLA0KPj4+ICvCoMKgwqAgZnJvbSB0aGUgSUlPIGJ1ZmZlci4gUmV0dXJucyB6ZXJvIG9uIHN1
Y2Nlc3MsIGFuZCBhIG5lZ2F0aXZlDQo+Pj4gZXJybm8NCj4+PiArwqDCoMKgIHZhbHVlIG9uIGVy
cm9yLg0KPj4+ICsNCj4+PiArwqDCoMKgIE5vdGUgdGhhdCBjbG9zaW5nIHRoZSBJSU8gYnVmZmVy
J3MgZmlsZSBkZXNjcmlwdG9yIHdpbGwNCj4+PiArwqDCoMKgIGF1dG9tYXRpY2FsbHkgZGV0YWNo
IGFsbCBwcmV2aW91c2x5IGF0dGFjaGVkIERNQUJVRiBvYmplY3RzLg0KPj4+ICsNCj4+PiArwqAg
YGBJSU9fQlVGRkVSX0RNQUJVRl9FTlFVRVVFX0lPQ1RMKHN0cnVjdCBpaW9fZG1hYnVmDQo+Pj4g
Kmlpb19kbWFidWYpYGANCj4+PiArwqDCoMKgIEVucXVldWUgYSBwcmV2aW91c2x5IGF0dGFjaGVk
IERNQUJVRiBvYmplY3QgdG8gdGhlIGJ1ZmZlcg0KPj4+IHF1ZXVlLg0KPj4+ICvCoMKgwqAgRW5x
dWV1ZWQgRE1BQlVGcyB3aWxsIGJlIHJlYWQgZnJvbSAoaWYgb3V0cHV0IGJ1ZmZlcikgb3INCj4+
PiB3cml0dGVuIHRvDQo+Pj4gK8KgwqDCoCAoaWYgaW5wdXQgYnVmZmVyKSBhcyBsb25nIGFzIHRo
ZSBidWZmZXIgaXMgZW5hYmxlZC4NCj4+DQo+PiB0aGFua3MuDQo+IA0KPiBDaGVlcnMsDQo+IC1Q
YXVsDQoNCnRoYW5rcy4NCi0tIA0KI1JhbmR5DQpodHRwczovL3Blb3BsZS5rZXJuZWwub3JnL3Rn
bHgvbm90ZXMtYWJvdXQtbmV0aXF1ZXR0ZQ0KaHR0cHM6Ly9zdWJzcGFjZS5rZXJuZWwub3JnL2V0
aXF1ZXR0ZS5odG1sDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
