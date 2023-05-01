Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 346DB6F5613
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:25:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 403BA3F655
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:25:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 358473EE98
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 May 2023 16:09:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nFPnn1Md;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D408960E99;
	Mon,  1 May 2023 16:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E49CAC433D2;
	Mon,  1 May 2023 16:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682957358;
	bh=FpX1zNwZQzmzSkTPVq4PcLD3xWjdT3sXy6nTbjcK06Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=nFPnn1MdR23QP0io14jeQsK8WBK8E0y7G8G37buFvBxFvbHWDdKo76elxOU+pZInP
	 VL0YOYaYclgnWfZhctvmv9H4En4qjRie3Zbr96Ca55KFhtGPM84yPV9a0WZ6DDO3j7
	 rrB4o/1uO19CtnzLgJnxkQmjdwER4TWZImzkK8LKEtpqvcLwGIic1PwDIJ06j8r/ck
	 lP3a1u9WwXwm2m1Eg8cXo+IkrcypCIsiusgB/dDJ50wnhhQK4OHqPzucqRbWKUBxA2
	 /t2uqEi80OMTxnUe9y42Bf40xd8zkq8NIWjOIvTtqCFBRrGyeeGm4mHydH6+9OH97O
	 cDQFyymLTnZWQ==
Date: Mon, 1 May 2023 17:25:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20230501172502.125e4859@jic23-huawei>
In-Reply-To: <1f63ffced9ed18309401af9a885310e1715b6538.camel@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	<20230403154800.215924-4-paul@crapouillou.net>
	<20230416152422.477ecf67@jic23-huawei>
	<1f63ffced9ed18309401af9a885310e1715b6538.camel@crapouillou.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 358473EE98
X-Spamd-Bar: ---
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YARQWNJCTTQT5O3SJTZXQ2CFSXU6C44J
X-Message-ID-Hash: YARQWNJCTTQT5O3SJTZXQ2CFSXU6C44J
X-Mailman-Approved-At: Wed, 03 May 2023 10:18:57 +0000
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 03/11] iio: buffer-dma: Get rid of outgoing queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YARQWNJCTTQT5O3SJTZXQ2CFSXU6C44J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAxOCBBcHIgMjAyMyAxMDowODoyMSArMDIwMA0KUGF1bCBDZXJjdWVpbCA8cGF1bEBj
cmFwb3VpbGxvdS5uZXQ+IHdyb3RlOg0KDQo+IEhpIEpvbmF0aGFuLA0KPiANCj4gTGUgZGltYW5j
aGUgMTYgYXZyaWwgMjAyMyDDoCAxNToyNCArMDEwMCwgSm9uYXRoYW4gQ2FtZXJvbiBhIMOpY3Jp
dMKgOg0KPiA+IE9uIE1vbizCoCAzIEFwciAyMDIzIDE3OjQ3OjUyICswMjAwDQo+ID4gUGF1bCBD
ZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+IHdyb3RlOg0KPiA+ICAgDQo+ID4gPiBUaGUg
YnVmZmVyLWRtYSBjb2RlIHdhcyB1c2luZyB0d28gcXVldWVzLCBpbmNvbWluZyBhbmQgb3V0Z29p
bmcsIHRvDQo+ID4gPiBtYW5hZ2UgdGhlIHN0YXRlIG9mIHRoZSBibG9ja3MgaW4gdXNlLg0KPiA+
ID4gDQo+ID4gPiBXaGlsZSB0aGlzIHRvdGFsbHkgd29ya3MsIGl0IGFkZHMgc29tZSBjb21wbGV4
aXR5IHRvIHRoZSBjb2RlLA0KPiA+ID4gZXNwZWNpYWxseSBzaW5jZSB0aGUgY29kZSBvbmx5IG1h
bmFnZXMgMiBibG9ja3MuIEl0IGlzIG11Y2ggZWFzaWVyDQo+ID4gPiB0bw0KPiA+ID4ganVzdCBj
aGVjayBlYWNoIGJsb2NrJ3Mgc3RhdGUgbWFudWFsbHksIGFuZCBrZWVwIGEgY291bnRlciBmb3Ig
dGhlDQo+ID4gPiBuZXh0DQo+ID4gPiBibG9jayB0byBkZXF1ZXVlLg0KPiA+ID4gDQo+ID4gPiBT
aW5jZSB0aGUgbmV3IERNQUJVRiBiYXNlZCBBUEkgd291bGRuJ3QgdXNlIHRoZSBvdXRnb2luZyBx
dWV1ZQ0KPiA+ID4gYW55d2F5LA0KPiA+ID4gZ2V0dGluZyByaWQgb2YgaXQgbm93IG1ha2VzIHRo
ZSB1cGNvbWluZyBjaGFuZ2VzIHNpbXBsZXIuDQo+ID4gPiANCj4gPiA+IFdpdGggdGhpcyBjaGFu
Z2UsIHRoZSBJSU9fQkxPQ0tfU1RBVEVfREVRVUVVRUQgaXMgbm93IHVzZWxlc3MsIGFuZA0KPiA+
ID4gY2FuDQo+ID4gPiBiZSByZW1vdmVkLg0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQ
YXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4NCj4gPiA+IA0KPiA+ID4gLS0tDQo+
ID4gPiB2MjogLSBPbmx5IHJlbW92ZSB0aGUgb3V0Z29pbmcgcXVldWUsIGFuZCBrZWVwIHRoZSBp
bmNvbWluZyBxdWV1ZSwNCj4gPiA+IGFzIHdlDQo+ID4gPiDCoMKgwqDCoMKgIHdhbnQgdGhlIGJ1
ZmZlciB0byBzdGFydCBzdHJlYW1pbmcgZGF0YSBhcyBzb29uIGFzIGl0IGlzDQo+ID4gPiBlbmFi
bGVkLg0KPiA+ID4gwqDCoMKgIC0gUmVtb3ZlIElJT19CTE9DS19TVEFURV9ERVFVRVVFRCwgc2lu
Y2UgaXQgaXMgbm93IGZ1bmN0aW9uYWxseQ0KPiA+ID4gdGhlDQo+ID4gPiDCoMKgwqDCoMKgIHNh
bWUgYXMgSUlPX0JMT0NLX1NUQVRFX0RPTkUuICANCj4gPiANCj4gPiBJJ20gbm90IHRoYXQgZmFt
aWxpYXIgd2l0aCB0aGlzIGNvZGUsIGJ1dCB3aXRoIG15IHVuZGVyc3RhbmRpbmcgdGhpcw0KPiA+
IG1ha2VzDQo+ID4gc2Vuc2UuwqDCoCBJIHRoaW5rIGl0IGlzIGluZGVwZW5kZW50IG9mIHRoZSBl
YXJsaWVyIHBhdGNoZXMgYW5kIGlzIGENCj4gPiB1c2VmdWwNCj4gPiBjaGFuZ2UgaW4gaXQncyBv
d24gcmlnaHQuwqAgQXMgc3VjaCwgZG9lcyBpdCBtYWtlIHNlbnNlIHRvIHBpY2sgdGhpcw0KPiA+
IHVwDQo+ID4gYWhlYWQgb2YgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcz8gSSdtIGFzc3VtaW5nIHRo
YXQgZGlzY3Vzc2lvbiBvbiB0aGUNCj4gPiByZXN0IHdpbGwgdGFrZSBhIHdoaWxlLsKgIE5vIGdy
ZWF0IHJ1c2ggYXMgdG9vIGxhdGUgZm9yIHRoZSBjb21pbmcNCj4gPiBtZXJnZQ0KPiA+IHdpbmRv
dyBhbnl3YXkuICANCj4gDQo+IEFjdHVhbGx5LCB5b3UgY2FuIHBpY2sgcGF0Y2hlcyAzIHRvIDYg
KHdoZW4gYWxsIGhhdmUgYmVlbiBhY2tlZCkuIFRoZXkNCj4gYWRkIHdyaXRlIHN1cHBvcnQgZm9y
IGJ1ZmZlci1kbWEgaW1wbGVtZW50YXRpb25zOyB3aGljaCBpcyBhIGRlcGVuZGVuY3kNCj4gZm9y
IHRoZSByZXN0IG9mIHRoZSBwYXRjaHNldCwgYnV0IHRoZXkgY2FuIGxpdmUgb24gdGhlaXIgb3du
Lg0KDQpSZW1pbmQgbWUgb2YgdGhhdCBpbiB0aGUgY292ZXIgbGV0dGVyIGZvciB2NC4NCg0KVGhh
bmtzLA0KDQpKb25hdGhhbg0KDQo+IA0KPiBDaGVlcnMsDQo+IC1QYXVsDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
