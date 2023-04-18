Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ACA6E5BA1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Apr 2023 10:08:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D36A3F700
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Apr 2023 08:08:29 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 1AEED3E948
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 08:08:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=i2y5XYqQ;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1681805303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8DTc/oRJhMEBa33wB3TaMgkNKc15dOmlHK8alGfdcJk=;
	b=i2y5XYqQS4KdTNNlpdITBztyfUED78n/aM0a3L19IR0dztlNgHD4h8kG3hHLJb6PE4BHyh
	BHoN5d/SlAU8cwhrU+rUiz49RLxT/CSXxujr6Onaz2R1d5d35D14IgL/OTfA4/HlL3/KGZ
	wp5ZiCeGY69eCgNlIg3o3Qf0vNWzzVk=
Message-ID: <1f63ffced9ed18309401af9a885310e1715b6538.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Date: Tue, 18 Apr 2023 10:08:21 +0200
In-Reply-To: <20230416152422.477ecf67@jic23-huawei>
References: <20230403154800.215924-1-paul@crapouillou.net>
	 <20230403154800.215924-4-paul@crapouillou.net>
	 <20230416152422.477ecf67@jic23-huawei>
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[89.234.176.197:from];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ZERO(0.00)[0];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1AEED3E948
X-Spamd-Bar: ---
Message-ID-Hash: RYHBVATMXBCLU2VUHN5KJQBVJ3CFS647
X-Message-ID-Hash: RYHBVATMXBCLU2VUHN5KJQBVJ3CFS647
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 03/11] iio: buffer-dma: Get rid of outgoing queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RYHBVATMXBCLU2VUHN5KJQBVJ3CFS647/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sDQoNCkxlIGRpbWFuY2hlIDE2IGF2cmlsIDIwMjMgw6AgMTU6MjQgKzAxMDAs
IEpvbmF0aGFuIENhbWVyb24gYSDDqWNyaXTCoDoNCj4gT24gTW9uLMKgIDMgQXByIDIwMjMgMTc6
NDc6NTIgKzAyMDANCj4gUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+IHdyb3Rl
Og0KPiANCj4gPiBUaGUgYnVmZmVyLWRtYSBjb2RlIHdhcyB1c2luZyB0d28gcXVldWVzLCBpbmNv
bWluZyBhbmQgb3V0Z29pbmcsIHRvDQo+ID4gbWFuYWdlIHRoZSBzdGF0ZSBvZiB0aGUgYmxvY2tz
IGluIHVzZS4NCj4gPiANCj4gPiBXaGlsZSB0aGlzIHRvdGFsbHkgd29ya3MsIGl0IGFkZHMgc29t
ZSBjb21wbGV4aXR5IHRvIHRoZSBjb2RlLA0KPiA+IGVzcGVjaWFsbHkgc2luY2UgdGhlIGNvZGUg
b25seSBtYW5hZ2VzIDIgYmxvY2tzLiBJdCBpcyBtdWNoIGVhc2llcg0KPiA+IHRvDQo+ID4ganVz
dCBjaGVjayBlYWNoIGJsb2NrJ3Mgc3RhdGUgbWFudWFsbHksIGFuZCBrZWVwIGEgY291bnRlciBm
b3IgdGhlDQo+ID4gbmV4dA0KPiA+IGJsb2NrIHRvIGRlcXVldWUuDQo+ID4gDQo+ID4gU2luY2Ug
dGhlIG5ldyBETUFCVUYgYmFzZWQgQVBJIHdvdWxkbid0IHVzZSB0aGUgb3V0Z29pbmcgcXVldWUN
Cj4gPiBhbnl3YXksDQo+ID4gZ2V0dGluZyByaWQgb2YgaXQgbm93IG1ha2VzIHRoZSB1cGNvbWlu
ZyBjaGFuZ2VzIHNpbXBsZXIuDQo+ID4gDQo+ID4gV2l0aCB0aGlzIGNoYW5nZSwgdGhlIElJT19C
TE9DS19TVEFURV9ERVFVRVVFRCBpcyBub3cgdXNlbGVzcywgYW5kDQo+ID4gY2FuDQo+ID4gYmUg
cmVtb3ZlZC4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNy
YXBvdWlsbG91Lm5ldD4NCj4gPiANCj4gPiAtLS0NCj4gPiB2MjogLSBPbmx5IHJlbW92ZSB0aGUg
b3V0Z29pbmcgcXVldWUsIGFuZCBrZWVwIHRoZSBpbmNvbWluZyBxdWV1ZSwNCj4gPiBhcyB3ZQ0K
PiA+IMKgwqDCoMKgwqAgd2FudCB0aGUgYnVmZmVyIHRvIHN0YXJ0IHN0cmVhbWluZyBkYXRhIGFz
IHNvb24gYXMgaXQgaXMNCj4gPiBlbmFibGVkLg0KPiA+IMKgwqDCoCAtIFJlbW92ZSBJSU9fQkxP
Q0tfU1RBVEVfREVRVUVVRUQsIHNpbmNlIGl0IGlzIG5vdyBmdW5jdGlvbmFsbHkNCj4gPiB0aGUN
Cj4gPiDCoMKgwqDCoMKgIHNhbWUgYXMgSUlPX0JMT0NLX1NUQVRFX0RPTkUuDQo+IA0KPiBJJ20g
bm90IHRoYXQgZmFtaWxpYXIgd2l0aCB0aGlzIGNvZGUsIGJ1dCB3aXRoIG15IHVuZGVyc3RhbmRp
bmcgdGhpcw0KPiBtYWtlcw0KPiBzZW5zZS7CoMKgIEkgdGhpbmsgaXQgaXMgaW5kZXBlbmRlbnQg
b2YgdGhlIGVhcmxpZXIgcGF0Y2hlcyBhbmQgaXMgYQ0KPiB1c2VmdWwNCj4gY2hhbmdlIGluIGl0
J3Mgb3duIHJpZ2h0LsKgIEFzIHN1Y2gsIGRvZXMgaXQgbWFrZSBzZW5zZSB0byBwaWNrIHRoaXMN
Cj4gdXANCj4gYWhlYWQgb2YgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcz8gSSdtIGFzc3VtaW5nIHRo
YXQgZGlzY3Vzc2lvbiBvbiB0aGUNCj4gcmVzdCB3aWxsIHRha2UgYSB3aGlsZS7CoCBObyBncmVh
dCBydXNoIGFzIHRvbyBsYXRlIGZvciB0aGUgY29taW5nDQo+IG1lcmdlDQo+IHdpbmRvdyBhbnl3
YXkuDQoNCkFjdHVhbGx5LCB5b3UgY2FuIHBpY2sgcGF0Y2hlcyAzIHRvIDYgKHdoZW4gYWxsIGhh
dmUgYmVlbiBhY2tlZCkuIFRoZXkNCmFkZCB3cml0ZSBzdXBwb3J0IGZvciBidWZmZXItZG1hIGlt
cGxlbWVudGF0aW9uczsgd2hpY2ggaXMgYSBkZXBlbmRlbmN5DQpmb3IgdGhlIHJlc3Qgb2YgdGhl
IHBhdGNoc2V0LCBidXQgdGhleSBjYW4gbGl2ZSBvbiB0aGVpciBvd24uDQoNCkNoZWVycywNCi1Q
YXVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
