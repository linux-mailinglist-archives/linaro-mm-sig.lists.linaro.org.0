Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D476D50BF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 20:37:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 893203F0A0
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 18:37:41 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id E72463E948
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Apr 2023 18:37:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=wmGIpaAe;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680547048;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bnQrvEz/F0HtMo61MRMevGwpunBFI0o/+wdfXFhszQw=;
	b=wmGIpaAeX3wlUIVZdWVbWY5RMVdmTF8B40N5sXTdehP85NEPptugaqHw+XJX2cPDclj4WM
	atYeygViHa62jb9sd3JFz3XJkkiptTMr2M6qClT8yr7YS7UCHzJiq2HgKhRuPR2z7rVKai
	SbXDqG7PskUUFgyASdtczeEkdEVJmqg=
Message-ID: <6a75a551b3ef3fc7cf9281db0b69167a570130c2.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Corbet <corbet@lwn.net>, Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen
	 <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich
	 <Michael.Hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian
	=?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Mon, 03 Apr 2023 20:37:26 +0200
In-Reply-To: <87zg7p7xz4.fsf@meer.lwn.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	 <20230403154955.216148-1-paul@crapouillou.net>
	 <20230403154955.216148-2-paul@crapouillou.net>
	 <87zg7p7xz4.fsf@meer.lwn.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E72463E948
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[crapouillou.net:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[lwn.net,kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: MV6U5VB7MV3NWLKSFGP6H36CF2I7UFJY
X-Message-ID-Hash: MV6U5VB7MV3NWLKSFGP6H36CF2I7UFJY
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 11/11] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MV6U5VB7MV3NWLKSFGP6H36CF2I7UFJY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sDQoNCkxlIGx1bmRpIDAzIGF2cmlsIDIwMjMgw6AgMTA6MDUgLTA2MDAsIEpv
bmF0aGFuIENvcmJldCBhIMOpY3JpdMKgOg0KPiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWls
bG91Lm5ldD4gd3JpdGVzOg0KPiANCj4gT25lIG5pdDoNCj4gDQo+ID4gRG9jdW1lbnQgdGhlIG5l
dyBETUFCVUYgYmFzZWQgQVBJLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFBhdWwgQ2VyY3Vl
aWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pg0KPiA+IENjOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJl
dEBsd24ubmV0Pg0KPiA+IENjOiBsaW51eC1kb2NAdmdlci5rZXJuZWwub3JnDQo+ID4gDQo+ID4g
LS0tDQo+ID4gdjI6IC0gRXhwbGljaXRseSBzdGF0ZSB0aGF0IHRoZSBuZXcgaW50ZXJmYWNlIGlz
IG9wdGlvbmFsIGFuZCBpcw0KPiA+IMKgwqDCoMKgwqAgbm90IGltcGxlbWVudGVkIGJ5IGFsbCBk
cml2ZXJzLg0KPiA+IMKgwqDCoCAtIFRoZSBJT0NUTHMgY2FuIG5vdyBvbmx5IGJlIGNhbGxlZCBv
biB0aGUgYnVmZmVyIEZEIHJldHVybmVkDQo+ID4gYnkNCj4gPiDCoMKgwqDCoMKgIElJT19CVUZG
RVJfR0VUX0ZEX0lPQ1RMLg0KPiA+IMKgwqDCoCAtIE1vdmUgdGhlIHBhZ2UgdXAgYSBiaXQgaW4g
dGhlIGluZGV4IHNpbmNlIGl0IGlzIGNvcmUgc3R1ZmYNCj4gPiBhbmQgbm90DQo+ID4gwqDCoMKg
wqDCoCBkcml2ZXItc3BlY2lmaWMuDQo+ID4gdjM6IFVwZGF0ZSB0aGUgZG9jdW1lbnRhdGlvbiB0
byByZWZsZWN0IHRoZSBuZXcgQVBJLg0KPiA+IC0tLQ0KPiA+IMKgRG9jdW1lbnRhdGlvbi9paW8v
ZG1hYnVmX2FwaS5yc3QgfCA1OQ0KPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ID4gwqBEb2N1bWVudGF0aW9uL2lpby9pbmRleC5yc3TCoMKgwqDCoMKgIHzCoCAyICsrDQo+
ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykNCj4gPiDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2lpby9kbWFidWZfYXBpLnJzdA0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2lpby9kbWFidWZfYXBpLnJzdA0KPiA+IGIvRG9jdW1lbnRh
dGlvbi9paW8vZG1hYnVmX2FwaS5yc3QNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uNGQ3MDM3MmM3ZWJkDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsr
KyBiL0RvY3VtZW50YXRpb24vaWlvL2RtYWJ1Zl9hcGkucnN0DQo+ID4gQEAgLTAsMCArMSw1OSBA
QA0KPiA+ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiA+ICsNCj4gPiAr
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gPiArSGlnaC1zcGVlZCBETUFC
VUYgaW50ZXJmYWNlIGZvciBJSU8NCj4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCj4gPiArDQo+ID4gKzEuIE92ZXJ2aWV3DQo+ID4gKz09PT09PT09PT09DQo+ID4gKw0K
PiA+ICtUaGUgSW5kdXN0cmlhbCBJL08gc3Vic3lzdGVtIHN1cHBvcnRzIGFjY2VzcyB0byBidWZm
ZXJzIHRocm91Z2ggYQ0KPiA+ICtmaWxlLWJhc2VkIGludGVyZmFjZSwgd2l0aCByZWFkKCkgYW5k
IHdyaXRlKCkgYWNjZXNzIGNhbGxzIHRocm91Z2gNCj4gPiB0aGUNCj4gPiArSUlPIGRldmljZSdz
IGRldiBub2RlLg0KPiA+ICsNCj4gPiArSXQgYWRkaXRpb25hbGx5IHN1cHBvcnRzIGEgRE1BQlVG
IGJhc2VkIGludGVyZmFjZSwgd2hlcmUgdGhlDQo+ID4gdXNlcnNwYWNlDQo+ID4gK2NhbiBhdHRh
Y2ggRE1BQlVGIG9iamVjdHMgKGV4dGVybmFsbHkgY3JlYXRlZCkgdG8gYSBJSU8gYnVmZmVyLA0K
PiA+IGFuZA0KPiA+ICtzdWJzZXF1ZW50bHkgdXNlIHRoZW0gZm9yIGRhdGEgdHJhbnNmZXJzLg0K
PiA+ICsNCj4gPiArQSB1c2Vyc3BhY2UgYXBwbGljYXRpb24gY2FuIHRoZW4gdXNlIHRoaXMgaW50
ZXJmYWNlIHRvIHNoYXJlDQo+ID4gRE1BQlVGDQo+ID4gK29iamVjdHMgYmV0d2VlbiBzZXZlcmFs
IGludGVyZmFjZXMsIGFsbG93aW5nIGl0IHRvIHRyYW5zZmVyIGRhdGENCj4gPiBpbiBhDQo+ID4g
K3plcm8tY29weSBmYXNoaW9uLCBmb3IgaW5zdGFuY2UgYmV0d2VlbiBJSU8gYW5kIHRoZSBVU0Ig
c3RhY2suDQo+ID4gKw0KPiA+ICtUaGUgdXNlcnNwYWNlIGFwcGxpY2F0aW9uIGNhbiBhbHNvIG1l
bW9yeS1tYXAgdGhlIERNQUJVRiBvYmplY3RzLA0KPiA+IGFuZA0KPiA+ICthY2Nlc3MgdGhlIHNh
bXBsZSBkYXRhIGRpcmVjdGx5LiBUaGUgYWR2YW50YWdlIG9mIGRvaW5nIHRoaXMgdnMuDQo+ID4g
dGhlDQo+ID4gK3JlYWQoKSBpbnRlcmZhY2UgaXMgdGhhdCBpdCBhdm9pZHMgYW4gZXh0cmEgY29w
eSBvZiB0aGUgZGF0YQ0KPiA+IGJldHdlZW4gdGhlDQo+ID4gK2tlcm5lbCBhbmQgdXNlcnNwYWNl
LiBUaGlzIGlzIHBhcnRpY3VsYXJseSB1c2VmdWwgZm9yIGhpZ2gtc3BlZWQNCj4gPiBkZXZpY2Vz
DQo+ID4gK3doaWNoIHByb2R1Y2Ugc2V2ZXJhbCBtZWdhYnl0ZXMgb3IgZXZlbiBnaWdhYnl0ZXMg
b2YgZGF0YSBwZXINCj4gPiBzZWNvbmQuDQo+ID4gK0l0IGRvZXMgaG93ZXZlciBpbmNyZWFzZSB0
aGUgdXNlcnNwYWNlLWtlcm5lbHNwYWNlIHN5bmNocm9uaXphdGlvbg0KPiA+ICtvdmVyaGVhZCwg
YXMgdGhlIERNQV9CVUZfU1lOQ19TVEFSVCBhbmQgRE1BX0JVRl9TWU5DX0VORCBJT0NUTHMNCj4g
PiBoYXZlIHRvDQo+ID4gK2JlIHVzZWQgZm9yIGRhdGEgaW50ZWdyaXR5Lg0KPiA+ICsNCj4gPiAr
Mi4gVXNlciBBUEkNCj4gPiArPT09PT09PT09PT0NCj4gPiArDQo+ID4gK0FzIHBhcnQgb2YgdGhp
cyBpbnRlcmZhY2UsIHRocmVlIG5ldyBJT0NUTHMgaGF2ZSBiZWVuIGFkZGVkLiBUaGVzZQ0KPiA+
IHRocmVlDQo+ID4gK0lPQ1RMcyBoYXZlIHRvIGJlIHBlcmZvcm1lZCBvbiB0aGUgSUlPIGJ1ZmZl
cidzIGZpbGUgZGVzY3JpcHRvciwNCj4gPiArb2J0YWluZWQgdXNpbmcgdGhlIElJT19CVUZGRVJf
R0VUX0ZEX0lPQ1RMKCkgaW9jdGwuDQo+ID4gKw0KPiA+ICtgYElJT19CVUZGRVJfRE1BQlVGX0FU
VEFDSF9JT0NUTChpbnQpYGANCj4gPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICsNCj4gPiArQXR0YWNoIHRoZSBE
TUFCVUYgb2JqZWN0LCBpZGVudGlmaWVkIGJ5IGl0cyBmaWxlIGRlc2NyaXB0b3IsIHRvDQo+ID4g
dGhlIElJTw0KPiA+ICtidWZmZXIuIFJldHVybnMgemVybyBvbiBzdWNjZXNzLCBhbmQgYSBuZWdh
dGl2ZSBlcnJubyB2YWx1ZSBvbg0KPiA+IGVycm9yLg0KPiANCj4gUmF0aGVyIHRoYW4gYWJ1c2lu
ZyBzdWJzZWN0aW9ucywgdGhpcyB3b3VsZCBiZSBiZXR0ZXIgZG9uZSBhcyBhDQo+IGRlc2NyaXB0
aW9uIGxpc3Q6DQo+IA0KPiDCoCBJSU9fQlVGRkVSX0RNQUJVRl9BVFRBQ0hfSU9DVEwoaW50KQ0K
PiDCoMKgwqDCoMKgIEF0dGFjaCB0aGUgRE1BQlVGIG9iamVjdCwgaWRlbnRpZmllZCBieSBpdHMg
ZmlsZSBkZXNjcmlwdG9yLCB0bw0KPiDCoMKgwqDCoMKgIHRoZSBJSU8gYnVmZmVyLiBSZXR1cm5z
IHplcm8gb24gc3VjY2VzcywgYW5kIGEgbmVnYXRpdmUgZXJybm8NCj4gwqDCoMKgwqDCoCB2YWx1
ZSBvbiBlcnJvci4NCg0KTm90ZWQsIHRoYW5rcy4NCg0KQ2hlZXJzLA0KLVBhdWwNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
